(* ::Package:: *)

(* ::Chapter:: *)
(*Initialization & Definitions*)


(* ::Section:: *)
(*Environment Setup*)


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


(* ::Section:: *)
(*Basic IBP & Shift Operators*)


(* \:7edf\:4e00\:7684\:6307\:6807\:5e73\:79fb\:5de5\:5177 *)
listcal[expr_, i_, j_, n_] := ReplacePart[expr, {i, j} -> expr[[i, j]] + n]


(* R1 \:4e09\:6761 IBP\:ff1a\:65f6\:95f4\:3001\:52a8\:91cf\:3001\:4e92\:8865\:52a8\:91cf *)
ibp[expr_, 1] := -I P0 expr - expr[[2, 1]] listcal[expr, 2, 1, -1] - listcal[listcal[expr, 1, 1, 1], 3, 2, -1] - listcal[listcal[expr, 1, 2, 1], 3, 2, -1]
ibp[expr_, 2] := d expr - expr[[3, 1]] expr - 1/2 expr[[3, 2]] (expr + listcal[listcal[expr, 3, 1, -2], 3, 2, 2] - ks^2 listcal[expr, 3, 2, 2]) + 1/2 (listcal[listcal[listcal[expr, 1, 1, 1], 2, 1, 1], 3, 2, -1] + listcal[listcal[listcal[listcal[expr, 1, 1, 1], 2, 1, 1], 3, 1, -2], 3, 2, 1] - ks^2 listcal[listcal[listcal[expr, 1, 1, 1], 2, 1, 1], 3, 2, 1]) + 1/2 (listcal[listcal[listcal[expr, 1, 2, 1], 2, 1, 1], 3, 2, -1] + listcal[listcal[listcal[listcal[expr, 1, 2, 1], 2, 1, 1], 3, 1, -2], 3, 2, 1] - ks^2 listcal[listcal[listcal[expr, 1, 2, 1], 2, 1, 1], 3, 2, 1])
ibp[expr_, 3] := d expr - expr[[3, 2]] expr - 1/2 expr[[3, 1]] (expr + listcal[listcal[expr, 3, 1, 2], 3, 2, -2] - ks^2 listcal[expr, 3, 1, 2]) + listcal[listcal[listcal[expr, 1, 1, 1], 2, 1, 1], 3, 2, -1] + listcal[listcal[listcal[expr, 1, 2, 1], 2, 1, 1], 3, 2, -1]


(* ::Section:: *)
(*Integral Substitutions & Symmetries*)


(* \:901a\:7528\:79ef\:5206\:4e0e a0/b0 \:57fa\:7ebf\:4f4d\:79fb *)
int00 = R1[{n3, n4}, {a}, {b1, b2}];
repaddab0 = {a -> a + a0, b1 -> b1 + b10, b2 -> b2 + b20};
repab020[expr_] := expr /. R1[c1_, c2_, c3_] :> R1[c1, c2 /. {a0 -> 0}, c3 /. {b10 -> 0, b20 -> 0}];


(* Hankel \:65b9\:7a0b EOM\:ff1a\:628a n=2 \:9012\:5f52\:5230 n=0,1 *)
id[expr_] := expr /. {
  R1[{2, n4_}, {a_}, {b1_, b2_}] :> -R1[{0, n4}, {a}, {b1, b2}] - (2 nu + 1) R1[{1, n4}, {a - 1}, {b1, b2 + 1}],
  R1[{n3_, 2}, {a_}, {b1_, b2_}] :> -R1[{n3, 0}, {a}, {b1, b2}] - (2 nu + 1) R1[{n3, 1}, {a - 1}, {b1, b2 + 1}]
};


(* R1 \:5185\:90e8\:5bf9\:79f0\:ff1an3 \[LeftRightArrow] n4 *)
symmetry[expr_] := expr /. R1[{n3_, n4_}, {a_}, {b1_, b2_}] :> If[n3 > n4, R1[{n4, n3}, {a}, {b1, b2}], R1[{n3, n4}, {a}, {b1, b2}]];


(* \:5947\:5076\:6027\:7b5b\:9009\:ff1ab1 \:4e3a\:5076\:6570\:4e14 n3+n4+b2 \:4e3a\:5076\:6570 *)
reppowerselection = R1[{n3_, n4_}, {a_}, {b1_, b2_}] /; (OddQ[b1] || OddQ[n3 + n4 + b2]) -> 0;


(* ::Section:: *)
(*Generating Base IBP Seeds*)


int000 = int00 /. repaddab0;
IBPset00 = Table[ibp[int000, i], {i, 3}];
IBPset0 = Table[
  Table[IBPset00[[i]], {n3, 0, 1}, {n4, 0, 1}] // repab020 // Flatten // id  // DeleteDuplicates
  , {i, 3}
];


(* ::Chapter:: *)
(*IBP Generation & Export*)


(* ::Section:: *)
(*Parameter Setup & IBP Ranges*)


aMin = -4; aMax = 8; bMin = -4; bMax = 8;

aTimeMin = aMin + 1; aTimeMax = aMax;
b1TimeMin = bMin; b1TimeMax = bMax;
b2TimeMin = bMin + 1; b2TimeMax = bMax;

aMomMin = aMin; aMomMax = aMax - 1;
b1MomMin = bMin + 2; b1MomMax = bMax;
b2MomMin = bMin + 1; b2MomMax = bMax - 2;

aMom2Min = aMin; aMom2Max = aMax - 1;
b1Mom2Min = bMin; b1Mom2Max = bMax - 2;
b2Mom2Min = bMin + 2; b2Mom2Max = bMax;


(* Kira \:4fa7\:91c7\:7528\:7684\:53c2\:6570\:66ff\:6362 *)
repvar = {P0 -> -I k0};
reppara2N = {a0 -> (*2 da +*) 2 nu, b10 -> 0, b20 -> -2 nu, d -> 3 - 2 ep, ks -> 1};


(* 1D\[RightArrow]3D \:5347\:7ef4\:6620\:5c04\:ff08\:57fa\:4e8e\:53c2\:8003\:4ee3\:7801\:505a\:9002\:914d\:ff0c\:4ec5\:4fdd\:7559 x2 \:76f8\:5173\:9879\:ff09 *)
repdimplus2[expr_] := Module[{res},
  res = expr /. R1[c1_, c2_, c3_] :> (
      2 ((b10 + c3[[1]]) (R1[c1, c2, c3] // listcal[#, 3, 1, 2] &)
       + (b20 + c3[[2]]) (R1[c1, c2, c3] // listcal[#, 3, 2, 2] &))
      - 2 ((R1[c1, c2, c3] // listcal[#, 1, 1, 1] & // listcal[#, 2, 1, 1] & // listcal[#, 3, 2, 1] &)
       + (R1[c1, c2, c3] // listcal[#, 1, 2, 1] & // listcal[#, 2, 1, 1] & // listcal[#, 3, 2, 1] &))
    );
  res // id // symmetry
];


(* ::Section:: *)
(*Generating and Expanding IBP Equations*)


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
]
Print["Step 2 Done. Final Equation Count: ", Length[IBPsetP]];


(* ::Section:: *)
(*Constructing Master Integrals (MIs) & dlog Basis*)


(* Load Omega and MIs from generated files *)
Get["OmegaR/OmegaR1.m"]; (* Defines OmegaP0Ref, etc. *)
Get["OmegaR/MIsR1.m"];   (* Defines MIs *)


MIs


(* \:5019\:9009 dlog \:57fa\:5e95\:ff1a3D \:57fa + 1D \:57fa\:7ecf\:5347\:7ef4\:6620\:5c04\:5230 3D *)
(* Corrected to include dlog P0 subtraction for tau-dependent terms (a=1) *)
(* Formula: R1(a=1) -> R1(a=1) - (I/P0) * OmegaP0 . R1(a=0) *)

(* 3D Sector *)
vec3Da0 = MIs /. {a -> 0, b1 -> 2, b2 -> 2};
vec3Da1 = MIs /. {a -> 1, b1 -> 2, b2 -> 1};
vec3Da0t = MIs /. {a -> 0, b1 -> 2, b2 -> 1};
OmegaInfinityRef = -(Omegax2Ref + OmegaPlusRef + OmegaMinusRef);
(* Correction term indices must match the dlog construction: a=0, b1=2, b2=1 *)
vec3Da1Corr = vec3Da1 + (I/P0) * OmegaP0Ref . (MIs /. {a -> 0, b1 -> 2, b2 -> 1}) // Simplify;
vec3Da0tCorr = (2/P0) * (((b20 - 1) IdentityMatrix[Length[MIs]] - OmegaInfinityRef) . vec3Da0t) // Simplify;


basis3DNote = Join[
  ks * vec3Da0,
  (-I) * ks * vec3Da0tCorr,
  ks * vec3Da1Corr
] // Simplify;

basis3DKira = (basis3DNote /. repvar /. reppara2N) // Simplify;


(* 1D Sector *)
vec1Da010 = MIs /. {a -> 0, b1 -> 1, b2 -> 0};
vec1Da001 = MIs /. {a -> 0, b1 -> 0, b2 -> 1};
vec1Da100 = MIs /. {a -> 1, b1 -> 0, b2 -> 0};
vec1Da000 = MIs /. {a -> 0, b1 -> 0, b2 -> 0};
vec1Da100Corr = vec1Da100 + (I/P0) * OmegaP0Ref . vec1Da000;


basis1DNote = Join[
  vec1Da010,
  vec1Da001,
  vec1Da100Corr
] // Simplify;


basis1D3DNote = (repdimplus2 /@ basis1DNote) // Simplify;
MIdlogNote = Join[basis3DNote, basis1D3DNote] /. reppowerselection // Complement[#, {0}] & // symmetry // DeleteDuplicates // Simplify;
MIdlogKira = (MIdlogNote/. repvar /. reppara2N) // Simplify;


(* ::Section:: *)
(*Derivatives (k0, ks)*)


(* \:5bf9 P0 \:7684\:5bfc\:6570 *)
dk0Term[r_R1] := listcal[r, 2, 1, 1];
dk0[expr_] := D[expr, k0] + (Expand[expr] /. a_. r_R1 :> a*dk0Term[r]);


(* \:5bf9 ks \:7684\:5bfc\:6570\:5173\:7cfb *)
dksTerm[r_R1] := Module[{b2, term1, term2, term3},
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
dks[expr_] := D[expr, ks] + (Expand[expr] /. a_. r_R1 :> a*dksTerm[r]);


DEk00 = (dk0[MIdlogNote] // id // symmetry) /. reppowerselection // Complement[#, {0}] &;
DEks0 = (dks[MIdlogNote] // id // symmetry) /. reppowerselection // Complement[#, {0}] &;


(* ::Section:: *)
(*Formatting Variables & Target for Kira*)


(* dlog \:53d8\:91cf\:4e0e R1 \:57fa\:5e95\:7684\:7b49\:5f0f *)
IBPsetdlogbasis = Table[G["dlog", i] - MIdlogKira[[i]], {i, Length[MIdlogKira]}];
IBPsetP = Join[IBPsetdlogbasis, IBPsetP];


varsetP = Join[IBPsetP, {DEk00, DEks0}] // Cases[#, _R1 | _G, Infinity] & // DeleteDuplicates;
varsetP = SortBy[varsetP, Which[
    MatchQ[#, G["dlog", _Integer]], {8, #[[2]]},
    MatchQ[#, R1[__]], With[{n3 = #[[1, 1]], n4 = #[[1, 2]], a = #[[2, 1]], b1 = #[[3, 1]], b2 = #[[3, 2]]},
      {1, Total[{Abs[a], Abs[b1], Abs[b2]}] + If[a < 0 || b1 < 0 || b2 < 0, 400, 0], a, b1, b2, n3, n4}
    ],
    True, {9, 0}
  ] &
];


repkira2R1 = Table[Tuserweight[i] -> varsetP[[i]], {i, Length[varsetP]}];
repR12num = Table[varsetP[[i]] -> Tuserweight[i], {i, Length[varsetP]}];


paramsR1 = {a0 -> (*2 da*) + 2 nu, b10 -> 0, b20 -> -2 nu, d -> 3 - 2 ep};


(* ::Section:: *)
(*Exporting Kira Workspace*)


(* Kira \:5bfc\:51fa\:76ee\:5f55 *)
kiraworkspace = "kira_R1";
If[!DirectoryQ["./" <> kiraworkspace],
  CreateDirectory["./" <> kiraworkspace, CreateIntermediateDirectories -> True]
];
If[!DirectoryQ["./" <> kiraworkspace <> "/userSystem"],
  CreateDirectory["./" <> kiraworkspace <> "/userSystem", CreateIntermediateDirectories -> True]
];
If[!DirectoryQ["./" <> kiraworkspace <> "/result"],
  CreateDirectory["./" <> kiraworkspace <> "/result", CreateIntermediateDirectories -> True]
];


ctokb[IBPset0_, varset0_] := Module[{string, stream, intsettemp, indexset},
  stream = OpenWrite["./" <> kiraworkspace <> "/userSystem/ibp.kira"];
  Do[
    string = "";
    intsettemp = IBPset0[[i]] // Cases[#, _R1 | _G, Infinity] & // DeleteDuplicates;
    indexset = Table[intsettemp[[j]] /. repR12num /. Tuserweight[c_] -> c, {j, Length[intsettemp]}] // Flatten;
    Do[
      string = StringJoin[string, ToString[indexset[[k]]], "*(", ToString[Coefficient[IBPset0[[i]], intsettemp[[k]]] // Factor, InputForm] // StringReplace[Whitespace -> ""], ")\n"];
      , {k, 1, Length[intsettemp]}];
    string = StringJoin[string, "\n"];
    WriteString[stream, string];
    , {i, Length[IBPset0]}];
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
Export["./" <> kiraworkspace <> "/result/dlog_basis_R1.m", "MIdlog = " <> ToString[MIdlogNote, InputForm] <> ";\n", "String"];
Export["./" <> kiraworkspace <> "/result/dlog_basis_R1_kira.m", "MIdlog = " <> ToString[MIdlogKira, InputForm] <> ";\n", "String"];
Export["./" <> kiraworkspace <> "/result/derivative_rules_R1.m",
  StringRiffle[{
    "listcal[expr_, i_, j_, n_] := ReplacePart[expr, {i, j} -> expr[[i, j]] + n]",
    "id[expr_] := expr /. {R1[{2, n4_}, {a_}, {b1_, b2_}] :> -R1[{0, n4}, {a}, {b1, b2}] - (2 nu + 1) R1[{1, n4}, {a - 1}, {b1, b2 + 1}], R1[{n3_, 2}, {a_}, {b1_, b2_}] :> -R1[{n3, 0}, {a}, {b1, b2}] - (2 nu + 1) R1[{n3, 1}, {a - 1}, {b1, b2 + 1}]}",
    "symmetry[expr_] := expr /. R1[{n3_, n4_}, {a_}, {b1_, b2_}] :> If[n3 > n4, R1[{n4, n3}, {a}, {b1, b2}], R1[{n3, n4}, {a}, {b1, b2}]]",
    "reppowerselection = R1[{n3_, n4_}, {a_}, {b1_, b2_}] /; (OddQ[b1] || OddQ[n3 + n4 + b2]) -> 0",
    "dk0Term[r_R1] := listcal[r, 2, 1, 1]",
    "dk0[expr_] := D[expr, k0] + (Expand[expr] /. a_. r_R1 :> a*dk0Term[r])",
    "dksTerm[r_R1] := Module[{b2, term1, term2, term3}, b2 = b20 + r[[3, 2]]; term1 = (-b2)/(2 ks) * (ks^2 listcal[r, 3, 2, 2] + r - listcal[listcal[r, 3, 1, -2], 3, 2, 2]); term2 = (1/(2 ks)) * (ks^2 listcal[listcal[listcal[r, 1, 1, 1], 2, 1, 1], 3, 2, 1] + listcal[listcal[listcal[r, 1, 1, 1], 2, 1, 1], 3, 2, -1] - listcal[listcal[listcal[listcal[r, 1, 1, 1], 2, 1, 1], 3, 1, -2], 3, 2, 1]); term3 = (1/(2 ks)) * (ks^2 listcal[listcal[listcal[r, 1, 2, 1], 2, 1, 1], 3, 2, 1] + listcal[listcal[listcal[r, 1, 2, 1], 2, 1, 1], 3, 2, -1] - listcal[listcal[listcal[listcal[r, 1, 2, 1], 2, 1, 1], 3, 1, -2], 3, 2, 1]); term1 + term2 + term3]",
    "dks[expr_] := D[expr, ks] + (Expand[expr] /. a_. r_R1 :> a*dksTerm[r])"
  }, "\n\n"] <> "\n",
  "String"
];


targetG = Join[IBPsetdlogbasis, {DEk00, DEks0}] // Cases[#, _R1 | _G, Infinity] & // DeleteDuplicates;
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
  "          - [list]\n" <>
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
