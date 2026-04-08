dir = If[StringQ[$InputFileName] && $InputFileName =!= "",
  DirectoryName[$InputFileName],
  If[TrueQ[$Notebooks],
    With[{nd = Quiet[NotebookDirectory[]]},
      If[StringQ[nd] && nd =!= $Failed, nd, Directory[]]
    ],
    Directory[]
  ]
];
SetDirectory[dir];

(* 数值参数定义 *)
valk0 = 13/7; valks = 19/5; valnu = 1/3; valda = 43/11; valep = 1/17;

(* 统一的指标平移工具 *)
listcal[expr_, i_, j_, n_] := ReplacePart[expr, {i, j} -> expr[[i, j]] + n]

(* R1 三条 IBP：时间、动量、互补动量 *)
ibp[expr_, 1] := -I P0 expr - expr[[2, 1]] listcal[expr, 2, 1, -1] - listcal[listcal[expr, 1, 1, 1], 3, 2, -1] - listcal[listcal[expr, 1, 2, 1], 3, 2, -1]
ibp[expr_, 2] := D expr - expr[[3, 1]] expr - 1/2 expr[[3, 2]] (expr + listcal[listcal[expr, 3, 1, -2], 3, 2, 2] - ks^2 listcal[expr, 3, 2, 2]) + 1/2 (listcal[listcal[listcal[expr, 1, 1, 1], 2, 1, 1], 3, 2, -1] + listcal[listcal[listcal[listcal[expr, 1, 1, 1], 2, 1, 1], 3, 1, -2], 3, 2, 1] - ks^2 listcal[listcal[listcal[expr, 1, 1, 1], 2, 1, 1], 3, 2, 1]) + 1/2 (listcal[listcal[listcal[expr, 1, 2, 1], 2, 1, 1], 3, 2, -1] + listcal[listcal[listcal[listcal[expr, 1, 2, 1], 2, 1, 1], 3, 1, -2], 3, 2, 1] - ks^2 listcal[listcal[listcal[expr, 1, 2, 1], 2, 1, 1], 3, 2, 1])
ibp[expr_, 3] := D expr - expr[[3, 2]] expr - 1/2 expr[[3, 1]] (expr + listcal[listcal[expr, 3, 1, 2], 3, 2, -2] - ks^2 listcal[expr, 3, 1, 2]) + listcal[listcal[listcal[expr, 1, 1, 1], 2, 1, 1], 3, 2, -1] + listcal[listcal[listcal[expr, 1, 2, 1], 2, 1, 1], 3, 2, -1]

(* 通用积分与 a0/b0 基线位移 *)
int00 = R1[{n3, n4}, {a}, {b1, b2}];
repaddab0 = {a -> a + a0, b1 -> b1 + b10, b2 -> b2 + b20};
repab020[expr_] := expr /. R1[c1_, c2_, c3_] :> R1[c1, c2 /. {a0 -> 0}, c3 /. {b10 -> 0, b20 -> 0}];

(* Hankel 方程 EOM：把 n=2 递归到 n=0,1 *)
id[expr_] := expr /. {
  R1[{2, n4_}, {a_}, {b1_, b2_}] :> -R1[{0, n4}, {a}, {b1, b2}] - (2 nu + 1) R1[{1, n4}, {a - 1}, {b1, b2 + 1}],
  R1[{n3_, 2}, {a_}, {b1_, b2_}] :> -R1[{n3, 0}, {a}, {b1, b2}] - (2 nu + 1) R1[{n3, 1}, {a - 1}, {b1, b2 + 1}]
};

(* R1 内部对称：n3 ↔ n4 *)
symmetry[expr_] := expr /. R1[{n3_, n4_}, {a_}, {b1_, b2_}] :> If[n3 > n4, R1[{n4, n3}, {a}, {b1, b2}], R1[{n3, n4}, {a}, {b1, b2}]];

(* 奇偶性筛选：b1 为偶数且 n3+n4+b2 为偶数 *)
reppowerselection = R1[{n3_, n4_}, {a_}, {b1_, b2_}] /; (OddQ[b1] || OddQ[n3 + n4 + b2]) -> 0;

int000 = int00 /. repaddab0;
IBPset00 = Table[ibp[int000, i], {i, 3}];
IBPset0 = Table[
  Table[IBPset00[[i]], {n3, 0, 1}, {n4, 0, 1}] // repab020 // Flatten // id // symmetry // DeleteDuplicates
  , {i, 3}
];

(* 范围设定 *)
aMin = -6; aMax = 8; bMin = -6; bMax = 8;

aTimeMin = aMin + 1; aTimeMax = aMax;
b1TimeMin = bMin; b1TimeMax = bMax;
b2TimeMin = bMin + 1; b2TimeMax = bMax;

aMomMin = aMin; aMomMax = aMax - 1;
b1MomMin = bMin + 2; b1MomMax = bMax;
b2MomMin = bMin + 1; b2MomMax = bMax - 2;

aMom2Min = aMin; aMom2Max = aMax - 1;
b1Mom2Min = bMin; b1Mom2Max = bMax - 2;
b2Mom2Min = bMin + 2; b2Mom2Max = bMax;

(* Kira 侧采用的参数替换 - 数值替换 *)
repvar = {P0 -> -I valk0};
(* 注意：reppara2N 中使用数值 *)
reppara2N = {a0 -> 2 valda + 2 valnu, b10 -> 0, b20 -> -2 valnu, D -> 3 - 2 valep, ks -> valks, nu -> valnu};

(* 1D→3D 升维映射（基于参考代码做适配，仅保留 x2 相关项） *)
repdimplus2[expr_] := Module[{res},
  res = expr /. R1[c1_, c2_, c3_] :> (
      2 ((b10 + c3[[1]]) (R1[c1, c2, c3] // listcal[#, 3, 1, 2] &)
       + (b20 + c3[[2]]) (R1[c1, c2, c3] // listcal[#, 3, 2, 2] &))
      - 2 ((R1[c1, c2, c3] // listcal[#, 1, 1, 1] & // listcal[#, 2, 1, 1] & // listcal[#, 3, 2, 1] &)
       + (R1[c1, c2, c3] // listcal[#, 1, 2, 1] & // listcal[#, 2, 1, 1] & // listcal[#, 3, 2, 1] &))
    );
  res // id // symmetry
];

Print["Generating IBP equations with range: a[", aMin, ",", aMax, "], b[", bMin, ",", bMax, "]..."];
Print["Step 1: Generating raw shifted equations..."];
AbsoluteTiming[
IBPset1 = Join[
  Table[IBPset0[[1]] /. repvar /. reppara2N, {a, aTimeMin, aTimeMax}, {b1, b1TimeMin, b1TimeMax}, {b2, b2TimeMin, b2TimeMax}],
  Table[IBPset0[[2]] /. repvar /. reppara2N, {a, aMomMin, aMomMax}, {b1, b1MomMin, b1MomMax}, {b2, b2MomMin, b2MomMax}],
  Table[IBPset0[[3]] /. repvar /. reppara2N, {a, aMom2Min, aMom2Max}, {b1, b1Mom2Min, b1Mom2Max}, {b2, b2Mom2Min, b2Mom2Max}]
] // id // symmetry // Flatten // DeleteDuplicates;
]
Print["Step 1 Done. Count: ", Length[IBPset1]];

Print["Step 2: Applying power selection and Expand..."];
AbsoluteTiming[
IBPsetP = IBPset1 /. reppowerselection // Expand // DeleteDuplicates // Complement[#, {0}] &;

(* Filter: keep only equations where ALL integrals have b1<=0 (no propagator) *)
(* If an equation contains any R1 with b1>0, discard the whole equation *)
(* IBPsetP = Select[IBPsetP, AllTrue[Cases[#, R1[_, _, {b1_, _}], Infinity], #[[3, 1]] <= 0 &] &]; *)
]
Print["Step 2 Done. Final Equation Count: ", Length[IBPsetP]];

(* 候选 dlog 基底 *)
(* basis3D moved to above for symbolic ks definition *)


(* 对 P0 的导数 *)
dk0Term[r_R1] := listcal[r, 2, 1, 1];
dk0[expr_] := D[expr, P0] + (Expand[expr] /. a_. r_R1 :> a*dk0Term[r]);

(* 对 ks 的导数关系 - 使用数值参数 *)
dksTerm[r_R1] := Module[{b2, term1, term2, term3, ks, b20},
  ks = valks;
  b20 = -2 valnu;
  b2 = b20 + r[[3, 2]];
  term1 = (-b2)/(2 ks) * (ks^2 listcal[r, 3, 2, 2] + r - listcal[listcal[r, 3, 1, -2], 3, 2, 2]);
  term2 = (1/(2 ks)) * (
    ks^2 listcal[listcal[listcal[r, 1, 1, 1], 2, 1, 1], 3, 2, 1]
    + listcal[listcal[listcal[r, 1, 1, 1], 2, 1, 1], 3, 2, -1]
    - listcal[listcal[listcal[listcal[r, 1, 1, 1], 2, 1, 1], 3, 1, -2], 3, 2, 1]
  );
  term3 = (1/(2 ks)) * (
    ks^2 listcal[listcal[listcal[r, 1, 2, 1], 2, 1, 1], 3, 2, 1]
    + listcal[listcal[listcal[r, 1, 2, 1], 2, 1, 1], 3, 2, -1]
    - listcal[listcal[listcal[listcal[r, 1, 2, 1], 2, 1, 1], 3, 1, -2], 3, 2, 1]
  );
  term1 + term2 + term3
];
dks[expr_] := Expand[expr] /. a_. r_R1 :> a*dksTerm[r];

(* 这里的导数也需要做数值替换 *)
dksSymbolic[expr_] := D[expr, ks] + (expr /. a_. r_R1 :> a*dksTerm[r]);

(* Basis definition with symbolic ks *)
(* Load Omega and MIs from generated files *)
Get["../OmegaR/OmegaR1.m"]; (* Defines OmegaP0Ref, etc. *)
Get["../OmegaR/MIsR1.m"];   (* Defines MIs *)

OmegaP0Num = OmegaP0Ref /. reppara2N;

(* 3D Sector *)
vec3Da0 = MIs /. {a -> 0, b1 -> 2, b2 -> 2};
vec3Da1 = MIs /. {a -> 1, b1 -> 2, b2 -> 1};
(* Correction term indices must match the dlog construction: a=0, b1=2, b2=1 *)
vec3Da1Corr = vec3Da1 - (I/P0) * OmegaP0Num . (MIs /. {a -> 0, b1 -> 2, b2 -> 1});

basis3D = Join[
  ks * vec3Da0,
  ks * vec3Da1Corr
] /. repvar /. DeleteCases[reppara2N, ks -> _];

(* 1D Sector *)
vec1Da010 = MIs /. {a -> 0, b1 -> 1, b2 -> 0};
vec1Da001 = MIs /. {a -> 0, b1 -> 0, b2 -> 1};
vec1Da100 = MIs /. {a -> 1, b1 -> 0, b2 -> 0};
vec1Da000 = MIs /. {a -> 0, b1 -> 0, b2 -> 0};
vec1Da100Corr = vec1Da100 - (I/P0) * OmegaP0Num . vec1Da000;

basis1D = Join[
  vec1Da010,
  vec1Da001,
  vec1Da100Corr
] /. repvar;

basis1D3D = (repdimplus2 /@ basis1D) /. reppara2N;
MIdlogList = Join[basis3D, basis1D3D] /. reppowerselection // Complement[#, {0}] & // symmetry // DeleteDuplicates;

(* Prioritize b1=0 integrals in MIdlogList *)
MIdlogList = SortBy[MIdlogList, If[AllTrue[Cases[#, R1[_, _, {b1_, _}] :> b1, Infinity], # == 0 &], 0, 1] &];

(* Construct MIdlog mapping *)
MIdlog = Table[G["dlog", i] -> MIdlogList[[i]], {i, Length[MIdlogList]}];


(* Recalculate MIdlogList after filtering *)
MIdlogList = MIdlog[[;;, 2]];

DEk00 = (dk0[MIdlogList] // id // symmetry) /. reppowerselection /. reppara2N // Complement[#, {0}] &;
(* Apply symbolic dks then substitute ks value *)
DEks0 = (dksSymbolic[MIdlogList] // id // symmetry) /. reppowerselection /. reppara2N // Complement[#, {0}] &;


(* 将 dlog 定义及其导数关系加入方程组 *)
IBPsetdlogbasis = Table[MIdlog[[i, 1]] - MIdlog[[i, 2]], {i, Length[MIdlog]}];
IBPsetP = Join[IBPsetP, IBPsetdlogbasis];

(* Final varset filter: remove any R1 with b1>0, but keep G dlog and b1<=0 *)
varsetP = Join[IBPsetP, DEk00, DEks0] // Cases[#, _R1 | _G, Infinity] & // DeleteDuplicates;
(* User requested removal of strict filter to verify consistency *)
(* varsetP = Select[varsetP, (MatchQ[#, G[__]] || MatchQ[#, R1[_, _, {b1_ /; b1 <= 0, _}]]) &]; *)


varsetP = SortBy[varsetP, Which[
    MatchQ[#, G["dlog", _Integer]], {0, #[[2]]},
    MatchQ[#, R1[__]], With[{n3 = #[[1, 1]], n4 = #[[1, 2]], a = #[[2, 1]], b1 = #[[3, 1]], b2 = #[[3, 2]]},
      {1, Total[{Abs[a], Abs[b1], Abs[b2]}] + If[a < 0 || b1 < 0 || b2 < 0, 400, 0], a, b1, b2, n3, n4}
    ],
    True, {9, 0}
  ] &
];

repkira2R1 = Table[Tuserweight[i] -> varsetP[[i]], {i, Length[varsetP]}];
repR12num = Table[varsetP[[i]] -> Tuserweight[i], {i, Length[varsetP]}];

(* 导出参数也用数值 *)
paramsR1 = {a0 -> 2 valda + 2 valnu, b10 -> 0, b20 -> -2 valnu, D -> 3 - 2 valep};

(* Kira 导出目录 *)
kiraworkspace = "kira_R1_probing";
If[!DirectoryQ["./" <> kiraworkspace],
  CreateDirectory["./" <> kiraworkspace, CreateIntermediateDirectories -> True]
];
If[!DirectoryQ["./" <> kiraworkspace <> "/userSystem"],
  CreateDirectory["./" <> kiraworkspace <> "/userSystem", CreateIntermediateDirectories -> True]
];
If[!DirectoryQ["./" <> kiraworkspace <> "/result"],
  CreateDirectory["./" <> kiraworkspace <> "/result", CreateIntermediateDirectories -> True]
];

ctokb[IBPset0_, varset0_] := Module[{stream, intsettemp, indexset, string},
  stream = OpenWrite["./" <> kiraworkspace <> "/userSystem/ibp.kira"];
  Do[
    string = "";
    intsettemp = IBPset0[[i]] // Cases[#, _R1 | _G, Infinity] & // DeleteDuplicates;
    indexset = Table[intsettemp[[j]] /. repR12num /. Tuserweight[c_] -> c, {j, Length[intsettemp]}] // Flatten;
    Do[
      (* Coefficients should be real after P0 -> -I k0 substitution *)
      (* Kira format: IntegralID * (Coefficient) *)
      string = StringJoin[string, ToString[indexset[[k]]], " * (", ToString[Coefficient[IBPset0[[i]], intsettemp[[k]]], InputForm], ")\n"];
      , {k, 1, Length[intsettemp]}];
    string = StringJoin[string, "\n"];
    WriteString[stream, string];
  , {i, Length[IBPset0]}];
  WriteString[stream, ToString[Length[varset0] + 1] <> "*(ccc)\n\n"];
  Close[stream];
];

listb[targetK0_] := Module[{string, stream},
  stream = OpenWrite["./" <> kiraworkspace <> "/list"];
  Do[
    string = StringJoin[ToString[k], "\n"];
    WriteString[stream, string];
    , {k, targetK0}];
  Close[stream];
];

Export["./" <> kiraworkspace <> "/result/repkira2R1.m", repkira2R1];
Export["./" <> kiraworkspace <> "/result/repR12num.m", repR12num];
Export["./" <> kiraworkspace <> "/result/params_R1.m", "paramsR1 = " <> ToString[paramsR1, InputForm] <> ";\n", "String"];
Export["./" <> kiraworkspace <> "/result/dlog_basis_R1.m", "MIdlog = " <> ToString[MIdlog, InputForm] <> ";\n", "String"];
(* Export["./" <> kiraworkspace <> "/result/derivative_rules_R1.m", ... *)

targetG = IBPsetP // Cases[#, _R1 | _G, Infinity] & // DeleteDuplicates;
targetK = targetG /. repR12num /. Tuserweight[c1_] -> c1 // Sort;
targetKAll = Range[Length[varsetP]];

AbsoluteTiming[listb[targetKAll]];
AbsoluteTiming[ctokb[IBPsetP, varsetP]];

Export["./" <> kiraworkspace <> "/jobs.yaml",
  "jobs:\n" <>
  "  - reduce_user_defined_system:\n" <>
  "      input_system: {files: [\"userSystem\"], config: false}\n" <>
  "      select_integrals:\n" <>
  "        select_mandatory_list:\n" <>
  "          - [" <> StringRiffle[ToString /@ targetKAll, ", "] <> "]\n" <>
  "      run_initiate: true\n" <>
  "      run_firefly: true\n" <>
  "  - kira2math:\n" <>
  "      target:\n" <>
  "       - [list]\n",
  "String"
];

Export["./" <> kiraworkspace <> "/run.sh",
  "rm -f kira.log\n" <>
  "rm -f firefly.log\n" <>
  "rm -rf results\n" <>
  "rm -rf tmp\n" <>
  "rm -rf sectormappings\n" <>
  "rm -rf firefly_saves\n" <>
  "rm -rf ff_save\n" <>
  "dos2unix list\n" <>
  "dos2unix userSystem/ibp.kira\n" <>
  "dos2unix jobs.yaml\n" <>
  "/home/jiaqichen/Softwares/kira/bin/kira --parallel=10 jobs.yaml\n",
  "String"
];
