(* ::Package:: *)

(***
文件：temp/simplify_letters.m
用途：化简 dlogde_extract.m 导出的字母参数。
流程：
  1. 从 temp/ 读取 dlog1.m 和 dlog1_args.m
  2. 将 26 个 log 参数做：
     a. 展开嵌套根号 Sqrt[A + B*Sqrt[C0]]
     b. Log[f(x)] → Log[x - ci]
     c. I*Sqrt[z] → Sqrt[-z] 吸收虚数单位
  3. 把化简规则作用回整个 dlog1 矩阵
  4. 提取最终字母表 alphabet.m 和系数矩阵 coeffdlog.m
  5. 数值验证正确性
  6. 输出 dlogDE.m

参考：codebubble_top/temp/rewrite_letters_ks_ci.m 的简化链
***)

(* 路径 *)
projBase = "D:\\opencode projects\\dSibp\\codebubble";
resultDir = FileNameJoin[{projBase, "kira_bubble", "result"}];
tempDir = FileNameJoin[{projBase, "temp"}];

(* 数值替换与测试点（来自 bubble_ibp_sym.m 的 repNumericTestKira） *)
repNT = {nu -> 17/7, ep -> 1/13, ks -> 1, k0 -> 5/23};
sTest = {x -> 7/11, nu -> 17/7, ep -> 1/13, ks -> 1};

(* 加载原始数据 *)
dlog1 = Import[FileNameJoin[{tempDir, "dlog1.m"}]];
rawArgs = Import[FileNameJoin[{tempDir, "dlog1_args.m"}]];

Print["Raw log arguments to simplify: ", Length[rawArgs]];

(* ========== 步骤 1：定义公共化简函数 ========== *)

signAtTest[t_] := Module[{v = N[t /. sTest]}, If[Chop[Re[v]] >= 0, 1, -1]];

(* ArcTan/ArcTanh → Log（备用，不一定需要） *)
toLogForm[expr_] := expr /. {
  ArcTanh[z_] :> 1/2 (Log[1 + z] - Log[1 - z]),
  ArcTan[z_] :> I/2 (Log[1 - I z] - Log[1 + I z])
};

(* Log[f(x)] → Log[x - ci] *)
logToXMinusC[expr_] := Module[{e = Together[expr], num, den},
  num = Numerator[e]; den = Denominator[e];
  logPoly[num] - logPoly[den]
];

logPoly[p_] := Module[{pp = Expand[p]},
  If[FreeQ[pp, x] || pp === 1, 0,
    Which[
      Exponent[pp, x] === 1,
        Module[{a = Coefficient[pp, x, 1], b = Coefficient[pp, x, 0]},
          Log[x - (-b/a)]
        ],
      (pp /. x -> -x) === pp,
        Module[{u, rootsU},
          u = Unique["u"];
          q = Expand[pp] /. Power[x, m_Integer] /; EvenQ[m] :> u^(m/2);
          rootsU = u /. Solve[q == 0, u];
          Total[(Log[x - Sqrt[#]] + Log[x + Sqrt[#]]) & /@ rootsU]
        ],
      True,
        Module[{roots = x /. Solve[pp == 0, x]},
          Total[Log[x - #] & /@ roots]
        ]
    ]
  ]
];

(* 吸收 I*Sqrt[z] → Sqrt[-z] *)
absorbI[expr_] := expr /. {
  I*Sqrt[z_] /; FreeQ[z, x] :> Module[{r},
    r = Chop[N[(I*Sqrt[z] - Sqrt[-z]) /. sTest]];
    If[r === 0, Sqrt[-z], -Sqrt[-z]]
  ]
};

(* 标准化 Log[x + c] → Log[x - ci] *)
normalizeLog[expr_] := expr /. {
  Log[x + c_] /; FreeQ[c, x] :> Log[x - Together[-c]],
  Log[c_ + x] /; FreeQ[c, x] :> Log[x - Together[-c]]
};

(* ========== 步骤 2：Sqrt[A + B*Sqrt[C0]] 嵌套根号展开 ========== *)
C0 = 3 + 4*ep + 4*nu + 4*nu^2;
A0 = 2 + 2*ep + 4*nu*(1 + nu);
disc0 = FullSimplify[A0^2 - (1 + 2*nu)^2 C0];
branchSignDisc = Module[{r},
  r = N[Sqrt[disc0] /. sTest] / N[(1 + 2*ep) /. sTest];
  If[Chop[r - 1] === 0, 1, -1]
];
discSqrt = branchSignDisc*(1 + 2*ep);

splitPlusRule  = Sqrt[poly_ + (1 + 2*nu) Sqrt[C0]] /; Simplify[poly - A0] === 0 :>
  (Sqrt[(A0 + discSqrt)/2] + Sqrt[(A0 - discSqrt)/2]);
splitMinusRule = Sqrt[poly_ + (-1 - 2*nu) Sqrt[C0]] /; Simplify[poly - A0] === 0 :>
  (Sqrt[(A0 + discSqrt)/2] - Sqrt[(A0 - discSqrt)/2]);

(* ========== 步骤 3：只化简唯一的 log 参数 ========== *)
Print["Simplifying ", Length[rawArgs], " unique log arguments..."];

simplifiedArgs = rawArgs /. {
  splitPlusRule, splitMinusRule
} // Map[absorbI, #] & // Map[logToXMinusC, #] & // Map[Together, #] & // normalizeLog;

(* 合并：原始参数→简化后参数 的替换规则 *)
repRules = Table[Log[rawArgs[[i]]] -> Log[simplifiedArgs[[i]]], {i, Length[rawArgs]}];

(* 应用替换规则到整个 dlog1 矩阵 *)
Print["Applying simplification rules to the dlog matrix..."];
dlogSimp = dlog1 /. repRules;

(* ========== 步骤 4：提取最终字母表和系数 ========== *)
finalArgs = Cases[dlogSimp, Log[arg_] :> arg, Infinity] // DeleteDuplicates // Sort;
Print["Final simplified letters: ", Length[finalArgs]];

finalCoeff = Table[
  Map[Coefficient[#, Log[finalArgs[[j]]]] &, dlogSimp, {2}],
  {j, Length[finalArgs]}
];

(* 验证重构 *)
recon = Sum[finalCoeff[[j]] * Log[finalArgs[[j]]], {j, Length[finalArgs]}] // Simplify;
diff = Simplify[recon - dlogSimp];
ok = FreeQ[Flatten[diff], Log[__] | ArcTan[_] | ArcTanh[_]];
Print["Reconstruction check (should be True): ", ok];

(* ========== 步骤 5：数值验证 ========== *)
valOrig = Total[finalCoeff[[j]] * (Log[finalArgs[[j]]] /. sTest // N), {j, Length[finalArgs]}];
valDirect = (dlogSimp /. sTest) // N;
maxDiff = Max[Abs[Flatten[valOrig - valDirect]]];
Print["Max numerical error: ", maxDiff];

(* ========== 导出 ========== *)
alphabet = Log /@ finalArgs;
Export[FileNameJoin[{resultDir, "alphabet.m"}], alphabet];
Export[FileNameJoin[{resultDir, "coeffdlog.m"}], finalCoeff];
dlogDE = Sum[finalCoeff[[j]] * Log[finalArgs[[j]]], {j, Length[finalArgs]}] // Simplify;
Export[FileNameJoin[{resultDir, "dlogDE.m"}], dlogDE];

Print["=== simplify_letters.m done ==="];
Print["Files: alphabet.m (", Length[alphabet], " letters)"];
Print["       coeffdlog.m (", Dimensions[finalCoeff], ")"];
Print["       dlogDE.m"];
Print["Max numerical error: ", maxDiff];
