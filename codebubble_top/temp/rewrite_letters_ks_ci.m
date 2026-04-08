ClearAll[ks, ep, nu];

(* 注意：WolframScript 在本机环境下对中文路径的工作目录支持不稳定；
   本脚本会尝试直接导出到“参考code”文件夹；若失败则退回导出到当前目录。 *)

(* 工作目录：尽量切到脚本所在目录（用于把输出写回 参考code 文件夹） *)
scriptPath = If[Length[$ScriptCommandLine] >= 1, Last[$ScriptCommandLine], ""];
scriptDir = If[StringQ[scriptPath] && scriptPath =!= "", DirectoryName[scriptPath], ""];
If[StringQ[scriptDir] && scriptDir =!= "",
  Quiet@Check[SetDirectory[scriptDir], Null]
];

(* 输入：原始字母表（含 Log/ArcTan/ArcTanh），保持顺序不变 *)
letters0 = {
  Log[1 - ks],
  Log[ks],
  Log[1 + ks],
  Log[1 + 2 ep - ks^2],
  Log[-2 - 2 ep + ks^2 - 4 nu - 4 nu^2 - Sqrt[3 + 4 ep + 4 nu + 4 nu^2] - 2 nu Sqrt[3 + 4 ep + 4 nu + 4 nu^2]],
  Log[-2 - 2 ep + ks^2 - 4 nu - 4 nu^2 + Sqrt[3 + 4 ep + 4 nu + 4 nu^2] + 2 nu Sqrt[3 + 4 ep + 4 nu + 4 nu^2]],
  Log[-1 + ks],
  Log[-1 + ks + 1/2 (2 - 2 Sqrt[2 + 2 ep + 4 nu + 4 nu^2 - Sqrt[3 + 4 ep + 16 nu + 16 ep nu + 32 nu^2 + 16 ep nu^2 + 32 nu^3 + 16 nu^4]])],
  Log[-1 + ks + 1/2 (2 + 2 Sqrt[2 + 2 ep + 4 nu + 4 nu^2 - Sqrt[3 + 4 ep + 16 nu + 16 ep nu + 32 nu^2 + 16 ep nu^2 + 32 nu^3 + 16 nu^4]])],
  Log[-1 + ks + 1/2 (2 - 2 Sqrt[2 + 2 ep + 4 nu + 4 nu^2 + Sqrt[3 + 4 ep + 16 nu + 16 ep nu + 32 nu^2 + 16 ep nu^2 + 32 nu^3 + 16 nu^4]])],
  Log[-1 + ks + 1/2 (2 + 2 Sqrt[2 + 2 ep + 4 nu + 4 nu^2 + Sqrt[3 + 4 ep + 16 nu + 16 ep nu + 32 nu^2 + 16 ep nu^2 + 32 nu^3 + 16 nu^4]])],
  Log[1 + 4 ep + 4 ep^2 - 4 ks^2 - 4 ep ks^2 + ks^4 - 8 ks^2 nu - 8 ks^2 nu^2],
  Log[-1 + ks^2],
  Log[2 + 2 ep - ks^2 + 4 nu + 4 nu^2 - Sqrt[3 + 4 ep + 4 nu + 4 nu^2] - 2 nu Sqrt[3 + 4 ep + 4 nu + 4 nu^2]],
  Log[2 + 2 ep - ks^2 + 4 nu + 4 nu^2 + Sqrt[3 + 4 ep + 4 nu + 4 nu^2] + 2 nu Sqrt[3 + 4 ep + 4 nu + 4 nu^2]],
  ArcTanh[(2 + 2 ep - ks^2 + 4 nu + 4 nu^2)/((1 + 2 nu) Sqrt[3 + 4 ep + 4 nu + 4 nu^2])],
  ArcTan[ks/Sqrt[-1 - 2 ep]],
  ArcTan[ks/Sqrt[-2 - 2 ep - 4 nu^2 + Sqrt[3 + 4 ep + 4 nu + 4 nu^2] + 2 nu (-2 + Sqrt[3 + 4 ep + 4 nu + 4 nu^2])]],
  ArcTan[ks/Sqrt[-2 - 2 ep - 4 nu^2 - Sqrt[3 + 4 ep + 4 nu + 4 nu^2] - 2 nu (2 + Sqrt[3 + 4 ep + 4 nu + 4 nu^2])]]
};

(* 分支约定：用一组“假定数值”固定嵌套根号的开方正负（只用于选择分支与验证，不代表物理取值） *)
sqrtInner = 3 + 4 ep + 16 nu + 16 ep nu + 32 nu^2 + 16 ep nu^2 + 32 nu^3 + 16 nu^4;
sTest = {ep -> 1/17, nu -> 1/3, ks -> 13/7};
branchSign = Module[{r},
  r = N[Sqrt[sqrtInner] /. sTest]/N[((1 + 2 nu) Sqrt[3 + 4 ep + 4 nu + 4 nu^2]) /. sTest];
  If[Chop[r - 1] === 0, 1, -1]
];

(* 规则：把“根号里套根号”的结构，改写为（不带根号因子）×Sqrt[...]，并用 branchSign 固定符号 *)
sqrtInnerRule = {
  Power[sqrtInner, 1/2] -> branchSign (1 + 2 nu) Sqrt[3 + 4 ep + 4 nu + 4 nu^2],
  Power[(1 + 2 nu)^2*a_, 1/2] /; FreeQ[a, ks] :> branchSign (1 + 2 nu) Sqrt[a]
};
letters0 = letters0 /. sqrtInnerRule;

(* 进一步把 Sqrt[A ± (1+2nu) Sqrt[C]] 拆成 “不带根号项 + 带根号项” 的形式：
   参考：Solve[{a^2+b^2==A, 2ab==(1+2nu)Sqrt[C]}, {a,b}]
*)
A0 = 2 + 2 ep + 4 nu*(1 + nu);
C0 = 3 + 4 ep + 4 nu*(1 + nu);
disc0 = FullSimplify[A0^2 - (1 + 2 nu)^2 C0];
branchSignDisc = Module[{r},
  r = N[Sqrt[disc0] /. sTest]/N[(1 + 2 ep) /. sTest];
  If[Chop[r - 1] === 0, 1, -1]
];
discSqrt = branchSignDisc (1 + 2 ep);
discRule = {Power[disc0, 1/2] -> discSqrt, Sqrt[disc0] -> discSqrt};
A0e = Expand[A0];
splitPlusRule = Sqrt[poly_ + (1 + 2 nu) Sqrt[C0]] /; FullSimplify[poly - A0e] === 0 :> (Sqrt[(A0e + discSqrt)/2] + Sqrt[(A0e - discSqrt)/2]);
splitMinusRule = Sqrt[poly_ + (-1 - 2 nu) Sqrt[C0]] /; FullSimplify[poly - A0e] === 0 :> (Sqrt[(A0e + discSqrt)/2] - Sqrt[(A0e - discSqrt)/2]);
normalizeSqrtArgs[expr_] := expr /. Sqrt[x_] :> Sqrt[Collect[Expand[x], Sqrt[C0]]];
letters0 = FullSimplify[normalizeSqrtArgs[letters0] /. discRule /. {splitPlusRule, splitMinusRule}];

(* 预处理：先把 ArcTan/ArcTanh 展开成 Log 的线性组合 *)
toLogForm[expr_] := expr /. {
    ArcTanh[z_] :> 1/2 (Log[1 + z] - Log[1 - z]),
    ArcCoth[z_] :> 1/2 (Log[z + 1] - Log[z - 1]),
    ArcTan[z_] :> I/2 (Log[1 - I z] - Log[1 + I z])
};

(* 工具：决定一个符号项在测试点的符号（用于选取开方分支） *)
signAtTest[x_] := Module[{v = N[x /. sTest]},
  If[Chop[Re[v]] >= 0, 1, -1]
];

(* 工具：把 I 吸收进根号，I*Sqrt[z] -> sgn * Sqrt[-z]（分支由测试点固定） *)
absorbIIntoSqrt[expr_] := expr /. {
    I*Sqrt[z_] /; FreeQ[z, ks] :> Module[{r},
        r = N[(I*Sqrt[z] - Sqrt[-z]) /. sTest];
        If[Chop[r] === 0, Sqrt[-z], -Sqrt[-z]]
    ]
};

(* 工具：把 Sqrt[A + B*Sqrt[C0]] 进一步“开开”，写成 (无根号) + (带根号) 的形式；
   允许 A、B 为一般 ks 无关表达式（在测试点决定 sign(B) 与 disc 的分支）。 *)
splitNestedSqrtC0[expr_] := expr /. {
    Sqrt[A_ + B_ Sqrt[C0]] /; (FreeQ[A, ks] && FreeQ[B, ks]) :> Module[{disc, discS, sB},
        disc = FullSimplify[A^2 - B^2 C0];
        sB = signAtTest[B];
        discS = Module[{sd0, cand},
          sd0 = Sqrt[disc];
          cand = Sqrt[(A + sd0)/2] + sB*Sqrt[(A - sd0)/2];
          If[Chop[N[(cand^2 - (A + B*Sqrt[C0])) /. sTest]] === 0, sd0, -sd0]
        ];
        Sqrt[(A + discS)/2] + sB*Sqrt[(A - discS)/2]
    ]
};

(* 核心：把 Log[f(ks)] 改写为 Log[ks-ci] 的形式；其中与 ks 无关的 Log 项直接丢弃（返回 0） *)
logToKsMinusC[expr_] := Module[{e = Together[expr], num, den},
  num = Numerator[e];
  den = Denominator[e];
  logPoly[num] - logPoly[den]
];

(* 对多项式/有理式分子分母做因式分解：
   - 线性：Log[a ks + b] -> Log[ks - (-b/a)]
   - 偶函数（只含 ks^2）：先换元 u=ks^2，解 u 的根，再拆成 Log[ks±Sqrt[u_i]]
   - 其他：直接解 ks 的根，写成 Sum Log[ks-root]
*)
logPoly[p_] := Module[{pp = Expand[p]},
  If[FreeQ[pp, ks] || pp === 1, 0,
    Which[
      Exponent[pp, ks] === 1,
        Module[{a = Coefficient[pp, ks, 1], b = Coefficient[pp, ks, 0]},
          Log[ks - (-b/a)]
        ],
      (pp /. ks -> -ks) === pp,
        Module[{u, q, rootsU},
          u = Unique["u"];
          q = Expand[pp] /. Power[ks, m_Integer] /; EvenQ[m] :> u^(m/2);
          rootsU = u /. Solve[q == 0, u];
          Total[(Log[ks - Sqrt[#]] + Log[ks + Sqrt[#]]) & /@ rootsU]
        ],
      True,
        Module[{roots = ks /. Solve[pp == 0, ks]},
          Total[Log[ks - #] & /@ roots]
        ]
    ]
  ]
];

(* 主流程：转换 -> 改写 -> 简化 -> 再次消去可能被简化“合并回去”的嵌套根号 *)
letters1 = toLogForm /@ letters0;
letters2 = letters1 /. Log[arg_] :> logToKsMinusC[arg];
letters2 = FullSimplify[letters2 /. sqrtInnerRule];
letters2 = letters2 /. Power[(1 + 2*nu)^2*a_, 1/2] /; FreeQ[a, ks] :> branchSign (1 + 2*nu) Sqrt[a];
letters2 = FullSimplify[normalizeSqrtArgs[letters2] /. discRule /. {splitPlusRule, splitMinusRule}];
letters2 = letters2 /. {Power[(1 + 2*nu)^2, 1/2] -> branchSign (1 + 2*nu), Sqrt[(1 + 2*nu)^2] -> branchSign (1 + 2*nu)};
(* 防止 FullSimplify 把 Log 组合“合并回去”成 ArcCoth/ArcTan：最后再强制转回 Log 并重写为 ks-ci *)
letters2 = toLogForm /@ letters2;
letters2 = letters2 /. Log[arg_] :> logToKsMinusC[arg];
letters2 = FullSimplify[letters2 /. discRule /. {splitPlusRule, splitMinusRule}];
(* 吸收虚数单位：把形如 ks ± I*Sqrt[z]（z 与 ks 无关）改写为 ks - ci 的形式。
   注意分支：用“导数在测试点一致”来选择 ci 的正负，保证与原表达式等价（在对 ks 求导意义下）。 *)
letters2 = letters2 /. {
    Log[ks + I*Sqrt[z_]] /; FreeQ[z, ks] :> Module[{c = Sqrt[-z], cand1, cand2},
        cand1 = Log[ks - c];
        cand2 = Log[ks - (-c)];
        If[Chop[N[(D[Log[ks + I*Sqrt[z]], ks] - D[cand1, ks]) /. sTest]] === 0, cand1, cand2]
    ],
    Log[ks - I*Sqrt[z_]] /; FreeQ[z, ks] :> Module[{c = Sqrt[-z], cand1, cand2},
        cand1 = Log[ks - c];
        cand2 = Log[ks - (-c)];
        If[Chop[N[(D[Log[ks - I*Sqrt[z]], ks] - D[cand1, ks]) /. sTest]] === 0, cand1, cand2]
    ],
    Log[ks + (-I)*Sqrt[z_]] /; FreeQ[z, ks] :> Module[{c = Sqrt[-z], cand1, cand2},
        cand1 = Log[ks - c];
        cand2 = Log[ks - (-c)];
        If[Chop[N[(D[Log[ks + (-I)*Sqrt[z]], ks] - D[cand1, ks]) /. sTest]] === 0, cand1, cand2]
    ],
    Log[ks - (-I)*Sqrt[z_]] /; FreeQ[z, ks] :> Module[{c = Sqrt[-z], cand1, cand2},
        cand1 = Log[ks - c];
        cand2 = Log[ks - (-c)];
        If[Chop[N[(D[Log[ks - (-I)*Sqrt[z]], ks] - D[cand1, ks]) /. sTest]] === 0, cand1, cand2]
    ]
};
(* 继续对出现的 A0±(1+2nu)Sqrt[C0] 型根号做开方拆分，并固定 (1+2ep)^2 的分支 *)
letters2 = letters2 /. {Sqrt[(1 + 2*ep)^2] -> branchSignDisc (1 + 2*ep), Power[(1 + 2*ep)^2, 1/2] -> branchSignDisc (1 + 2*ep)};
letters2 = FullSimplify[normalizeSqrtArgs[letters2] /. discRule /. {splitPlusRule, splitMinusRule}];
(* 规范化：把 Log[ks + c] 统一写成 Log[ks - ci] 的形式（ci=-c），并尽量避免被自动化简回“+”形式 *)
letters2 = letters2 /. {
    Log[ks + c_] /; FreeQ[c, ks] :> Module[{ci = Together[-c]}, Log[ks - ci]],
    Log[c_ + ks] /; FreeQ[c, ks] :> Module[{ci = Together[-c]}, Log[ks - ci]]
};
(* 再做一次根号规范化：避免残留 Sqrt[(1+2nu)^2] 这类可去根号因子 *)
letters2 = letters2 /. {Sqrt[(1 + 2*nu)^2] -> branchSign (1 + 2*nu), Power[(1 + 2*nu)^2, 1/2] -> branchSign (1 + 2*nu)};

(* 导出：写出与原列表一一对应（顺序一致）的新列表 *)
outPath = FileNameJoin[{Directory[], "letters_ks_ci_rewritten.m"}];
Export[outPath, "lettersRewritten = " <> ToString[letters2, InputForm] <> ";\n", "String"];
Print["Exported to: ", outPath];

(* 验证：对 ks 求导后，在测试点代入；原始列表与新列表的导数差应为 0（容许数值误差） *)
diff = Chop[(D[letters0, ks] - D[letters2, ks]) /. sTest // N, 10^-30];
Print["Max|d/dks diff| at test point: ", Max[Abs[Flatten[diff]]]];
