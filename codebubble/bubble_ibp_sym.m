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


(* Top Sector G \:4e94\:6761 IBP\:ff1a\:65f6\:95f4(2)\:3001\:52a8\:91cf(2)\:3001\:4e92\:8865\:52a8\:91cf(1) *)
ibp[expr_G, 1] := -I P1 expr - expr[[2, 1]] listcal[expr, 2, 1, -1] - listcal[listcal[expr, 1, 1, 1], 3, 1, -1] - listcal[listcal[expr, 1, 3, 1], 3, 2, -1] + KroneckerDelta[expr[[1, 1]] + expr[[1, 2]], 1] * (-1)^(expr[[1, 1]] + 1) * R1[{expr[[1, 3]], expr[[1, 4]]}, {expr[[2, 1]] + expr[[2, 2]] - 2 nu - 1}, {expr[[3, 1]] + 2 nu + 1, expr[[3, 2]]}] + KroneckerDelta[expr[[1, 3]] + expr[[1, 4]], 1] * (-1)^(expr[[1, 3]] + 1) * R2[{expr[[1, 1]], expr[[1, 2]]}, {expr[[2, 1]] + expr[[2, 2]] - 2 nu - 1}, {expr[[3, 1]], expr[[3, 2]] + 2 nu + 1}]
ibp[expr_G, 2] := -I P2 expr - expr[[2, 2]] listcal[expr, 2, 2, -1] - listcal[listcal[expr, 1, 2, 1], 3, 1, -1] - listcal[listcal[expr, 1, 4, 1], 3, 2, -1] + KroneckerDelta[expr[[1, 1]] + expr[[1, 2]], 1] * (-1)^(expr[[1, 2]] + 1) * R1[{expr[[1, 3]], expr[[1, 4]]}, {expr[[2, 1]] + expr[[2, 2]] - 2 nu - 1}, {expr[[3, 1]] + 2 nu + 1, expr[[3, 2]]}] + KroneckerDelta[expr[[1, 3]] + expr[[1, 4]], 1] * (-1)^(expr[[1, 4]] + 1) * R2[{expr[[1, 1]], expr[[1, 2]]}, {expr[[2, 1]] + expr[[2, 2]] - 2 nu - 1}, {expr[[3, 1]], expr[[3, 2]] + 2 nu + 1}]
(* Momentum IBP 1: eq:momIBP_qdot from note main.tex line 380-400.
   0 = D*B - b1*B - (1/2)*b2*(B + B[{b1-2,b2+2}] - ks^2*B[{b1,b2+2}])
       + B[{n1+1},{a1+1},{b1-1,b2}] + B[{n2+1},{a2+1},{b1-1,b2}]
       + (1/2)(B[{n3+1},{a1+1},{b1,b2-1}] + B[{n3+1},{a1+1},{b1+2,b2+1}] - ks^2*B[{n3+1},{a1+1},{b1,b2+1}])
       + (1/2)(B[{n4+1},{a2+1},{b1,b2-1}] + B[{n4+1},{a2+1},{b1-2,b2+1}] - ks^2*B[{n4+1},{a2+1},{b1,b2+1}]) *)
ibp[expr_G, 3] := d expr - expr[[3, 1]] expr - 1/2 expr[[3, 2]] (expr + listcal[listcal[expr, 3, 1, -2], 3, 2, 2] - ks^2 listcal[expr, 3, 2, 2]) + listcal[listcal[listcal[expr, 1, 1, 1], 2, 1, 1], 3, 1, -1] + listcal[listcal[listcal[expr, 1, 2, 1], 2, 2, 1], 3, 1, -1] + 1/2 (listcal[listcal[listcal[expr, 1, 3, 1], 2, 1, 1], 3, 2, -1] + listcal[listcal[listcal[listcal[expr, 1, 3, 1], 2, 1, 1], 3, 1, -2], 3, 2, 1] - ks^2 listcal[listcal[listcal[expr, 1, 3, 1], 2, 1, 1], 3, 2, 1]) + 1/2 (listcal[listcal[listcal[expr, 1, 4, 1], 2, 2, 1], 3, 2, -1] + listcal[listcal[listcal[listcal[expr, 1, 4, 1], 2, 2, 1], 3, 1, -2], 3, 2, 1] - ks^2 listcal[listcal[listcal[expr, 1, 4, 1], 2, 2, 1], 3, 2, 1])
(* Momentum IBP 2: obtained from IBP 1 by {n1,n2,n3,n4}<->{n3,n4,n1,n2} and {b1,b2}<->{b2,b1}
   (note main.tex line 411-415) *)
ibp[expr_G, 4] := d expr - expr[[3, 2]] expr - 1/2 expr[[3, 1]] (expr + listcal[listcal[expr, 3, 1, 2], 3, 2, -2] - ks^2 listcal[expr, 3, 1, 2]) + listcal[listcal[listcal[expr, 1, 3, 1], 2, 1, 1], 3, 2, -1] + listcal[listcal[listcal[expr, 1, 4, 1], 2, 2, 1], 3, 2, -1] + 1/2 (listcal[listcal[listcal[expr, 1, 1, 1], 2, 1, 1], 3, 1, -1] + listcal[listcal[listcal[listcal[expr, 1, 1, 1], 2, 1, 1], 3, 1, 1], 3, 2, -2] - ks^2 listcal[listcal[listcal[expr, 1, 1, 1], 2, 1, 1], 3, 1, 1]) + 1/2 (listcal[listcal[listcal[expr, 1, 2, 1], 2, 2, 1], 3, 1, -1] + listcal[listcal[listcal[listcal[expr, 1, 2, 1], 2, 2, 1], 3, 2, -2], 3, 1, 1] - ks^2 listcal[listcal[listcal[expr, 1, 2, 1], 2, 2, 1], 3, 1, 1])


(* R1 Sector \:4e09\:6761 IBP\:ff1a\:65f6\:95f4\:3001\:52a8\:91cf\:3001\:4e92\:8865\:52a8\:91cf *)
ibp[expr_R1, 1] := -I P0R1 expr - expr[[2, 1]] listcal[expr, 2, 1, -1] - listcal[listcal[expr, 1, 1, 1], 3, 2, -1] - listcal[listcal[expr, 1, 2, 1], 3, 2, -1]
ibp[expr_R1, 2] := d expr - expr[[3, 1]] expr - 1/2 expr[[3, 2]] (expr + listcal[listcal[expr, 3, 1, -2], 3, 2, 2] - ks^2 listcal[expr, 3, 2, 2]) + 1/2 (listcal[listcal[listcal[expr, 1, 1, 1], 2, 1, 1], 3, 2, -1] + listcal[listcal[listcal[listcal[expr, 1, 1, 1], 2, 1, 1], 3, 1, -2], 3, 2, 1] - ks^2 listcal[listcal[listcal[expr, 1, 1, 1], 2, 1, 1], 3, 2, 1]) + 1/2 (listcal[listcal[listcal[expr, 1, 2, 1], 2, 1, 1], 3, 2, -1] + listcal[listcal[listcal[listcal[expr, 1, 2, 1], 2, 1, 1], 3, 1, -2], 3, 2, 1] - ks^2 listcal[listcal[listcal[expr, 1, 2, 1], 2, 1, 1], 3, 2, 1])
ibp[expr_R1, 3] := d expr - expr[[3, 2]] expr - 1/2 expr[[3, 1]] (expr + listcal[listcal[expr, 3, 1, 2], 3, 2, -2] - ks^2 listcal[expr, 3, 1, 2]) + listcal[listcal[listcal[expr, 1, 1, 1], 2, 1, 1], 3, 2, -1] + listcal[listcal[listcal[expr, 1, 2, 1], 2, 1, 1], 3, 2, -1]


(* ::Section:: *)
(*Integral Substitutions & Symmetries*)


(* \:901a\:7528\:79ef\:5206\:4e0e a0/b0 \:57fa\:7ebf\:4f4d\:79fb *)
int00G = G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}];
int00R1 = R1[{n3, n4}, {a}, {b1, b2}];

repaddab0G = {a1 -> a1 + a10, a2 -> a2 + a20, b1 -> b1 + b10, b2 -> b2 + b20};
repaddab0R1 = {a -> a + a0, b1 -> b1 + b10, b2 -> b2 + b20};

repab020[expr_] := expr /. {
  G[c1_, c2_, c3_] :> (G[c1, c2, c3] /. {a10 -> 0, a20 -> 0, a0 -> 0, b10 -> 0, b20 -> 0}),
  R1[c1_, c2_, c3_] :> (R1[c1, c2, c3] /. {a10 -> 0, a20 -> 0, a0 -> 0, b10 -> 0, b20 -> 0})
};


(* Hankel \:65b9\:7a0b EOM\:ff1a\:628a n=2 \:9012\:5f52\:5230 n=0,1 *)
id[expr_] := expr /. {
  (* Top Sector EOM *)
  G[{2, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> -G[{0, n2, n3, n4}, {a1, a2}, {b1, b2}] - (2 nu + 1) G[{1, n2, n3, n4}, {a1 - 1, a2}, {b1 + 1, b2}],
  G[{n1_, 2, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> -G[{n1, 0, n3, n4}, {a1, a2}, {b1, b2}] - (2 nu + 1) G[{n1, 1, n3, n4}, {a1, a2 - 1}, {b1 + 1, b2}],
  G[{n1_, n2_, 2, n4_}, {a1_, a2_}, {b1_, b2_}] :> -G[{n1, n2, 0, n4}, {a1, a2}, {b1, b2}] - (2 nu + 1) G[{n1, n2, 1, n4}, {a1 - 1, a2}, {b1, b2 + 1}],
  G[{n1_, n2_, n3_, 2}, {a1_, a2_}, {b1_, b2_}] :> -G[{n1, n2, n3, 0}, {a1, a2}, {b1, b2}] - (2 nu + 1) G[{n1, n2, n3, 1}, {a1, a2 - 1}, {b1, b2 + 1}],
  (* R1 Sector EOM *)
  R1[{2, n4_}, {a_}, {b1_, b2_}] :> -R1[{0, n4}, {a}, {b1, b2}] - (2 nu + 1) R1[{1, n4}, {a - 1}, {b1, b2 + 1}],
  R1[{n3_, 2}, {a_}, {b1_, b2_}] :> -R1[{n3, 0}, {a}, {b1, b2}] - (2 nu + 1) R1[{n3, 1}, {a - 1}, {b1, b2 + 1}]
};


(* \:5bf9\:79f0\:6027\:ff1aTop Sector \:5185\:90e8 + R1 \:5185\:90e8 + R2 \:8f6c R1 *)
symmetry[expr_] := Module[{test},
(* R2 -> R1 (Eq 43) *)test=expr /. {R2[{n1_, n2_}, {a_}, {b1_, b2_}] :> R1[{n1, n2}, {a}, {b1, b2}]};
(* Top Sector Symmetry *) test=test/.G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> If[a1 > a2, G[{n2, n1, n4, n3}, {a2, a1}, {b1, b2}], G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /.
  G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> If[b1 > b2, G[{n3, n4, n1, n2}, {a1, a2}, {b2, b1}], G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /.
  G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> If[a1 == a2 && n1 > n2, G[{n2, n1, n4, n3}, {a2, a1}, {b1, b2}], G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /.
  G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> If[a1 == a2 && n1 == n2 && n3 > n4, G[{n2, n1, n4, n3}, {a2, a1}, {b1, b2}], G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /.
  G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> If[b1 == b2 && n1 > n3, G[{n3, n4, n1, n2}, {a1, a2}, {b2, b1}], G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /.
  G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> If[b1 == b2 && n1 == n3 && n2 > n4, G[{n3, n4, n1, n2}, {a1, a2}, {b2, b1}], G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]];
(* R1 Sector Symmetry *) test=test/.R1[{n3_, n4_}, {a_}, {b1_, b2_}] :> If[n3 > n4, R1[{n4, n3}, {a}, {b1, b2}], R1[{n3, n4}, {a}, {b1, b2}]];
Return[test];
];


(* \:5947\:5076\:6027\:7b5b\:9009 *)
(* Top Sector: n1+n2+b1 \:4e3a\:5076\:6570, \:4e14 n3+n4+b2 \:4e3a\:5076\:6570 *)
(* R1 Sector: b1 \:4e3a\:5076\:6570, \:4e14 n3+n4+b2 \:4e3a\:5076\:6570 *)
reppowerselection = {
  G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] /; (OddQ[n1 + n2 + b1] || OddQ[n3 + n4 + b2]) :> 0,
  R1[{n3_, n4_}, {a_}, {b1_, b2_}] /; (OddQ[b1] || OddQ[n3 + n4 + b2]) :> 0
};


(* ::Section:: *)
(*Generating Base IBP Seeds*)


int000G = int00G /. repaddab0G;
int000R1 = int00R1 /. repaddab0R1;

IBPset00G = Table[ibp[int000G, i], {i, 4}];
IBPset0G = Table[
  Table[IBPset00G[[i]], {n1, 0, 1}, {n2, 0, 1}, {n3, 0, 1}, {n4, 0, 1}] // repab020 // Flatten // id  // DeleteDuplicates
  , {i, 4}
] /. {
  R1[c1_, c2_, c3_] :> (R1[c1, c2, c3] /. nu -> 0),
  R2[c1_, c2_, c3_] :> (R2[c1, c2, c3] /. nu -> 0)
};

IBPset00R1 = Table[ibp[int000R1, i], {i, 3}];
IBPset0R1 = Table[
  Table[IBPset00R1[[i]], {n3, 0, 1}, {n4, 0, 1}] // repab020 // Flatten // id  // DeleteDuplicates
  , {i, 3}
];


(*bubble_top\:68c0\:9a8c\:ff01\:ff01ii=3,4\:65f6\:5747\:5e94\:4e3a0*)
ibptest[expr_,3]:=d expr+expr[[3,1]]expr+1/2 expr[[3,2]](expr+listcal[listcal[expr,3,1,2],3,2,-2]-ks^2 listcal[expr,3,2,-2])+listcal[listcal[listcal[expr,1,1,1],2,1,1],3,1,1]+listcal[listcal[listcal[expr,1,2,1],2,2,1],3,1,1]+1/2 (listcal[listcal[listcal[expr,1,3,1],2,1,1],3,2,1]+listcal[listcal[listcal[listcal[expr,1,3,1],2,1,1],3,1,2],3,2,-1]-ks^2 listcal[listcal[listcal[expr,1,3,1],2,1,1],3,2,-1])+1/2 (listcal[listcal[listcal[expr,1,4,1],2,2,1],3,2,1]+listcal[listcal[listcal[listcal[expr,1,4,1],2,2,1],3,1,2],3,2,-1]-ks^2 listcal[listcal[listcal[expr,1,4,1],2,2,1],3,2,-1])
ibptest[expr_,4]:=d expr+expr[[3,2]]expr+1/2 expr[[3,1]](expr+listcal[listcal[expr,3,1,-2],3,2,2]-ks^2 listcal[expr,3,1,-2])+listcal[listcal[listcal[expr,1,3,1],2,1,1],3,2,1]+listcal[listcal[listcal[expr,1,4,1],2,2,1],3,2,1]+1/2 (listcal[listcal[listcal[expr,1,1,1],2,1,1],3,1,1]+listcal[listcal[listcal[listcal[expr,1,1,1],2,1,1],3,1,-1],3,2,2]-ks^2 listcal[listcal[listcal[expr,1,1,1],2,1,1],3,1,-1])+1/2 (listcal[listcal[listcal[expr,1,2,1],2,2,1],3,1,1]+listcal[listcal[listcal[listcal[expr,1,2,1],2,2,1],3,1,-1],3,2,2]-ks^2 listcal[listcal[listcal[expr,1,2,1],2,2,1],3,1,-1])
Do[
test1=ibp[int00G, ii]//Simplify;
test2=(ibptest[G[{n1,n2,n3,n4},{a1,a2},{b1,b2}],ii]/.{b1->-b1,b2->-b2}/.G[c1__,c2_]->G[c1,-c2])//Simplify;
test1-test2//Simplify//Print;,{ii,3,4}]


(* ::Chapter:: *)
(*IBP Generation & Export*)


(* ::Section:: *)
(*Parameter Setup & IBP Ranges*)


(* Top Sector Ranges *)
aMin = -2; aMax = 3; bMin = 0; bMax = 4;

(* R1 Sector Ranges (Matched or Expanded) *)
aR1Min = -4; aR1Max = 6; bR1Min = -4; bR1Max = 6;


(* Kira \:4fa7\:91c7\:7528\:7684\:53c2\:6570\:66ff\:6362 *)
(* \:6ce8\:610f\:ff1aTop Sector P1=P2=P0, R1 Sector P0R1 = 2 P0 *)
repvar = {P1 -> -I k0, P2 -> -I k0, P0R1 -> -2 I k0, a10 -> a0, a20 -> a0, b10 -> b0, b20 -> b0};
reppara2N = {a0 -> 2 nu, b0 -> -2 nu, d -> 3 - 2 ep, ks -> 1};


(* 1D\[RightArrow]3D \:5347\:7ef4\:6620\:5c04 *)
repdimplus2[expr_] := Module[{res},
  res = expr /. {
    G[c1_, c2_, c3_] :> (
      2 ((b10 + c3[[1]]) (G[c1, c2, c3] // listcal[#, 3, 1, 2] &)
       + (b20 + c3[[2]]) (G[c1, c2, c3] // listcal[#, 3, 2, 2] &))
      - 2 ((G[c1, c2, c3] // listcal[#, 1, 1, 1] & // listcal[#, 2, 1, 1] & // listcal[#, 3, 1, 1] &)
       + (G[c1, c2, c3] // listcal[#, 1, 2, 1] & // listcal[#, 2, 2, 1] & // listcal[#, 3, 1, 1] &)
       + (G[c1, c2, c3] // listcal[#, 1, 3, 1] & // listcal[#, 2, 1, 1] & // listcal[#, 3, 2, 1] &)
       + (G[c1, c2, c3] // listcal[#, 1, 4, 1] & // listcal[#, 2, 2, 1] & // listcal[#, 3, 2, 1] &))
    ),
    R1[c1_, c2_, c3_] :> (
      2 ((b10 + c3[[1]]) (R1[c1, c2, c3] // listcal[#, 3, 1, 2] &)
       + (b20 + c3[[2]]) (R1[c1, c2, c3] // listcal[#, 3, 2, 2] &))
      - 2 ((R1[c1, c2, c3] // listcal[#, 1, 1, 1] & // listcal[#, 2, 1, 1] & // listcal[#, 3, 2, 1] &)
       + (R1[c1, c2, c3] // listcal[#, 1, 2, 1] & // listcal[#, 2, 1, 1] & // listcal[#, 3, 2, 1] &))
    )
  };
  res // id // symmetry
];


(* ::Section:: *)
(*Generating and Expanding IBP Equations*)


Print["Generating IBP equations..."];
AbsoluteTiming[
IBPset1G = Join[
  (* Top Sector *)
  Table[IBPset0G[[1]]  /. repvar /. reppara2N, {a1, -1-aMin, 2+aMax}, {a2, -2-aMin, 2+aMax}, {b1, -1-bMin, 2+bMax}, {b2, -1-bMin, 2+bMax}],
  Table[IBPset0G[[2]] /. repvar /. reppara2N, {a1, -2-aMin, 2+aMax}, {a2, -1-aMin, 2+aMax}, {b1, -1-bMin, 2+bMax}, {b2, -1-bMin, 2+bMax}],
  Table[IBPset0G[[3]]  /. repvar /. reppara2N, {a1, -2-aMin, 1+aMax}, {a2, -2-aMin, 1+aMax}, {b1, 0-bMin, 2+bMax}, {b2, -1-bMin, 0+bMax}],
  Table[IBPset0G[[4]]  /. repvar /. reppara2N, {a1, -2-aMin, 1+aMax}, {a2, -2-aMin, 1+aMax}, {b1, -1-bMin, 0+bMax}, {b2, 0-bMin, 2+bMax}]
] // id // symmetry // Flatten // DeleteDuplicates;

IBPset1R1 = Join[
  (* R1 Sector *)
  Table[IBPset0R1[[1]] /. repvar /. reppara2N, {a, aR1Min+1, aR1Max}, {b1, bR1Min, bR1Max}, {b2, bR1Min+1, bR1Max}],
  Table[IBPset0R1[[2]] /. repvar /. reppara2N, {a, aR1Min, aR1Max-1}, {b1, bR1Min+2, bR1Max}, {b2, bR1Min+1, bR1Max-2}],
  Table[IBPset0R1[[3]] /. repvar /. reppara2N, {a, aR1Min, aR1Max-1}, {b1, bR1Min, bR1Max-2}, {b2, bR1Min+2, bR1Max}]
] // id // symmetry // Flatten // DeleteDuplicates;

IBPset1 = Join[IBPset1G, IBPset1R1] // DeleteDuplicates;
]
Print["Raw Top Sector (G) Equation Count: ", Length[IBPset1G]];
Print["Raw R1 Sector Equation Count: ", Length[IBPset1R1]];

Print["Applying power selection and Expand..."];
AbsoluteTiming[
IBPsetPG = ReplaceAll[IBPset1G, reppowerselection] // Expand // DeleteDuplicates // Complement[#, {0}] &;
IBPsetPR1 = ReplaceAll[IBPset1R1, reppowerselection] // Expand // DeleteDuplicates // Complement[#, {0}] &;
IBPsetP = Join[IBPsetPG, IBPsetPR1] // DeleteDuplicates;
]
Print["Selected Top Sector (G) Equation Count: ", Length[IBPsetPG]];
Print["Selected R1 Sector Equation Count: ", Length[IBPsetPR1]];
Print["Final Equation Count: ", Length[IBPsetP]];

varsetAll = IBPsetP // Cases[#, _R1 | _G, Infinity] & // DeleteDuplicates;
Print["Final Integral Count: ", Length[varsetAll]];


(* ::Section:: *)
(*Constructing Master Integrals (MIs) & dlog Basis*)


(* Load Omega and MIs for R1 sector from generated files *)
Get["OmegaR/OmegaR1.m"]; (* Defines OmegaP0Ref, etc. *)
Get["OmegaR/MIsR1.m"];   (* Defines MIs (which we rename to MIsR1) *)
MIsR1 = MIs;

(* Construct Top Sector dlog basis \[LongDash] following codeR1 structure:
   3D basis: direct G integrals with ks factor (no repdimplus2)
   1D basis: simple G integrals promoted to 3D via repdimplus2
   Ordering: 3D first, then 1D->3D (same as codeR1) *)

(* 3D sector: 9 entries \[LongDash] direct G integrals, with ks factor *)
basis3DTopNote = ks * {
  G[{0, 1, 0, 0}, {0, 1}, {1, 2}],
  G[{0, 1, 1, 1}, {0, 1}, {1, 2}],
  G[{1, 0, 0, 0}, {0, 1}, {1, 2}],
  G[{1, 0, 1, 1}, {0, 1}, {1, 2}],
  G[{0, 0, 0, 0}, {0, 0}, {2, 2}],
  G[{0, 0, 1, 1}, {0, 0}, {2, 2}],
  G[{1, 1, 1, 1}, {0, 0}, {2, 2}],
  (2 + b0 + 2 nu) * G[{0, 1, 0, 1}, {0, 0}, {1, 3}],
  (2 + b0 + 2 nu) * G[{0, 1, 1, 0}, {0, 0}, {1, 3}]
};

(* 1D sector: 5 entries \[LongDash] promoted to 3D via repdimplus2 *)
basis1DTopNote = {
  G[{0, 0, 0, 1}, {0, 0}, {0, 1}],
  G[{1, 1, 0, 1}, {0, 0}, {0, 1}],
  G[{0, 0, 0, 0}, {0, 1}, {0, 0}],
  G[{0, 0, 1, 1}, {0, 1}, {0, 0}],
  G[{1, 1, 1, 1}, {0, 1}, {0, 0}]
};
basis1D3DTopNote = (repdimplus2 /@ basis1DTopNote) // Simplify;

MIdlogTopNote = Join[basis3DTopNote, basis1D3DTopNote] /. reppowerselection // Complement[#, {0}] & // Simplify;

(* Construct R1 Sector dlog basis *)
vec3Da0 = MIsR1 /. {a -> 0, b1 -> 2, b2 -> 2};
vec3Da1 = MIsR1 /. {a -> 1, b1 -> 2, b2 -> 1};
vec3Da0t = MIsR1 /. {a -> 0, b1 -> 2, b2 -> 1};
OmegaInfinityRef = -(Omegax2Ref + OmegaPlusRef + OmegaMinusRef);

vec3Da1Corr = vec3Da1 + (I/P0R1) * OmegaP0Ref . (MIsR1 /. {a -> 0, b1 -> 2, b2 -> 1}) // Simplify;
vec3Da0tCorr = (2/P0R1) * (((b20 - 1) IdentityMatrix[Length[MIsR1]] - OmegaInfinityRef) . vec3Da0t) // Simplify;

basis3DNote = Join[
  ks * vec3Da0,
  (-I) * ks * vec3Da0tCorr,
  ks * vec3Da1Corr
] // Simplify;

vec1Da010 = MIsR1 /. {a -> 0, b1 -> 1, b2 -> 0};
vec1Da001 = MIsR1 /. {a -> 0, b1 -> 0, b2 -> 1};
vec1Da100 = MIsR1 /. {a -> 1, b1 -> 0, b2 -> 0};
vec1Da000 = MIsR1 /. {a -> 0, b1 -> 0, b2 -> 0};
vec1Da100Corr = vec1Da100 + (I/P0R1) * OmegaP0Ref . vec1Da000;

basis1DNote = Join[
  vec1Da010,
  vec1Da001,
  vec1Da100Corr
] // Simplify;

basis1D3DNote = (repdimplus2 /@ basis1DNote) // Simplify;
MIdlogR1Note = Join[basis3DNote, basis1D3DNote] /. reppowerselection // Complement[#, {0}] & // symmetry // DeleteDuplicates // Simplify;

(* Combine Top and R1 Note basis *)
MIdlogNote = Join[MIdlogTopNote, MIdlogR1Note];
MIdlogKira = (MIdlogNote /. repvar /. reppara2N) // Simplify;


(* ::Section:: *)
(*Derivatives (k0, ks)*)


dk0Term[expr_] := expr /. {
  G[c1_, c2_, c3_] :> G[c1, c2 + {1, 0}, c3] + G[c1, c2 + {0, 1}, c3],
  R1[c1_, c2_, c3_] :> listcal[R1[c1, c2, c3], 2, 1, 1]
};

dk0[expr_] := D[expr, k0] + (Expand[expr] /. a_. r:(G[__] | R1[__]) :> a * dk0Term[r]);

dksTerm[expr_] := expr /. {
  g:G[c1_, c2_, c3_] :> Module[{b2, term1, term2, term3},
    b2 = b20 + g[[3, 2]];
    term1 = (-b2)/(2 ks) * (ks^2 listcal[g, 3, 2, 2] + g - listcal[listcal[g, 3, 1, -2], 3, 2, 2]);
    term2 = (1/(2 ks)) * (
      ks^2 listcal[listcal[listcal[g, 1, 3, 1], 2, 1, 1], 3, 2, 1]
      + listcal[listcal[listcal[g, 1, 3, 1], 2, 1, 1], 3, 2, -1]
      - listcal[listcal[listcal[listcal[g, 1, 3, 1], 2, 1, 1], 3, 1, -2], 3, 2, 1]
    );
    term3 = (1/(2 ks)) * (
      ks^2 listcal[listcal[listcal[g, 1, 4, 1], 2, 2, 1], 3, 2, 1]
      + listcal[listcal[listcal[g, 1, 4, 1], 2, 2, 1], 3, 2, -1]
      - listcal[listcal[listcal[listcal[g, 1, 4, 1], 2, 2, 1], 3, 1, -2], 3, 2, 1]
    );
    term1 + term2 + term3
  ],
  r:R1[c1_, c2_, c3_] :> Module[{b2, term1, term2, term3},
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
  ]
};

dks[expr_] := D[expr, ks] + (Expand[expr] /. a_. r:(G[__] | R1[__]) :> a * dksTerm[r]);


DEk00 = (dk0[MIdlogNote] // id // symmetry);
DEks0 = (dks[MIdlogNote] // id // symmetry);


(* ::Section:: *)
(*Formatting Variables & Target for Kira*)


IBPsetdlogbasis = Table[G["dlog", i] - MIdlogKira[[i]], {i, Length[MIdlogKira]}];
IBPsetP = Join[IBPsetdlogbasis, IBPsetP];

varsetP = Join[IBPsetP, {DEk00, DEks0}] // Cases[#, _R1 | _G, Infinity] & // DeleteDuplicates;
(* Sorting rule for varsetP (integral ordering for Kira):
   Priority 0 (first): dlog basis integrals G["dlog", i], sorted by i.
   Priority 1 (remaining): all non-dlog integrals, sorted by:
     (a) Primary:   sum |a_i| + |b_i|  (with +400 penalty if any index < 0)
     (b) Secondary: G before R1  (type flag: 1 for G, 2 for R1)
     (c) Tertiary:  sum of a indices  (a1+a2 for G,  a for R1)
     (d) Then:      individual a indices (a1, a2 for G;  a, 0 for R1)
     (e) Then:      individual b indices (b1, b2)
     (f) Finally:   discrete Hankel labels (n1,n2,n3,n4 for G;  n3,n4,0,0 for R1)
*)
varsetP = SortBy[varsetP, Which[
    MatchQ[#, G["dlog", _Integer]],
      {0, #[[2]], 0, 0, 0, 0, 0, 0, 0, 0, 0, 0},
    MatchQ[#, G[__]],
      With[{n1=#[[1,1]], n2=#[[1,2]], n3=#[[1,3]], n4=#[[1,4]],
            a1=#[[2,1]], a2=#[[2,2]], b1=#[[3,1]], b2=#[[3,2]]},
        {1, Total[Abs /@ {a1,a2,b1,b2}] + If[a1<0||a2<0||b1<0||b2<0, 400, 0],
         1, a1+a2, a1, a2, b1, b2, n1, n2, n3, n4}
      ],
    MatchQ[#, R1[__]],
      With[{n3=#[[1,1]], n4=#[[1,2]], a=#[[2,1]], b1=#[[3,1]], b2=#[[3,2]]},
        {1, Total[Abs /@ {a,b1,b2}] + If[a<0||b1<0||b2<0, 400, 0],
         2, a, 0, 0, b1, b2, n3, n4, 0, 0}
      ],
    True, {9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}
  ] &
];

repkira2R1 = Table[Tuserweight[i] -> varsetP[[i]], {i, Length[varsetP]}];
repR12num = Table[varsetP[[i]] -> Tuserweight[i], {i, Length[varsetP]}];


(* ::Section:: *)
(*Exporting Kira Workspace*)


kiraworkspace = "kira_bubble";
If[!DirectoryQ["./" <> kiraworkspace], CreateDirectory["./" <> kiraworkspace, CreateIntermediateDirectories -> True]];
If[!DirectoryQ["./" <> kiraworkspace <> "/userSystem"], CreateDirectory["./" <> kiraworkspace <> "/userSystem", CreateIntermediateDirectories -> True]];
If[!DirectoryQ["./" <> kiraworkspace <> "/result"], CreateDirectory["./" <> kiraworkspace <> "/result", CreateIntermediateDirectories -> True]];


(* === Write userSystem/ibp.kira ===
   Format: reduce_user_defined_system (matches R1_ibp_sym.m ctokb pattern).
   Each equation is a block of lines "index*(coeff)", separated by a blank line. *)
ctokb[IBPset0_, varset0_] := Module[{string, stream, intsettemp, indexset},
  stream = OpenWrite["./" <> kiraworkspace <> "/userSystem/ibp.kira"];
  Do[
    string = "";
    intsettemp = IBPset0[[i]] // Cases[#, _R1 | _G, Infinity] & // DeleteDuplicates;
    indexset = Table[intsettemp[[j]] /. repR12num /. Tuserweight[c_] -> c, {j, Length[intsettemp]}] // Flatten;
    Do[
      string = StringJoin[string,
        ToString[indexset[[k]]], "*(",
        ToString[Coefficient[IBPset0[[i]], intsettemp[[k]]] // Factor, InputForm]
          // StringReplace[Whitespace -> ""],
        ")\n"];
      , {k, 1, Length[intsettemp]}];
    string = StringJoin[string, "\n"];
    WriteString[stream, string];
    , {i, Length[IBPset0]}];
  Close[stream];
];

(* --- Symbolic run (default): just call ctokb on symbolic IBPsetP --- *)
(*ctokb[IBPsetP, varsetP];*)

 (*--- Numeric test run: uncomment the block below AND comment the line above ---*)
repNumericTestKira = {nu -> 3/7, ep -> 1/13, k0 -> 5/23};
IBPsetPKira = IBPsetP /. repNumericTestKira;
repR12numBak = repR12num;
repR12num = Table[(varsetP[[i]] /. repNumericTestKira) -> Tuserweight[i], {i, Length[varsetP]}];
ctokb[IBPsetPKira, varsetP];
repR12num = repR12numBak;

(* Append dummy equation: (N+1)*(ccc) \[LongDash] only needed when ALL coefficients are numeric.
   For symbolic run (nu, ep, k0 in coefficients), not needed but harmless. *)
Module[{stream, dummyIdx = Length[varsetP] + 1},
  stream = OpenAppend["./" <> kiraworkspace <> "/userSystem/ibp.kira"];
  WriteString[stream, ToString[dummyIdx] <> "*(ccc)\n\n"];
  Close[stream];
];
Print["ibp.kira written (", Length[IBPsetP], " equations + 1 dummy)."];


(* === Write list ===
   List ALL integrals (1..Length[varsetP]) for Kira reduction, matching R1_ibp_sym.m.
   Kira needs to reduce all integrals that may appear in derivatives of dlog basis. *)
listb[targetK0_] := Module[{string, stream},
  stream = OpenWrite["./" <> kiraworkspace <> "/list"];
  Do[
    string = StringJoin[ToString[k], "\n"];
    WriteString[stream, string];
    , {k, targetK0}];
  Close[stream];
];

(* Target integrals for Kira reduction.
   Only integrals in this list will have reduction rules in kira_list.m.
   Set targetMax to cover at least all integrals appearing in derivatives of dlog basis.
   Use Length[varsetP] to reduce all; use a smaller number for faster test runs. *)
targetMax = 3000;  (* <-- adjust as needed; must cover all integrals in dk0/dks of dlog basis *)
targetKAll = Range[Min[targetMax, Length[varsetP]] + 1];  (* +1 for dummy integral in numeric mode *)
listb[targetKAll];
Print["list written (", Length[targetKAll], " target integrals)."];


(* === Write jobs.yaml (reduce_user_defined_system, matching R1_ibp_sym.m) === *)
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


(* === Write run.sh (cleanup + dos2unix + kira, matching R1_ibp_sym.m) === *)
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


(* === Export result files for bubble_de.m === *)
Export["./" <> kiraworkspace <> "/result/MIdlogNote.m", MIdlogNote];
Export["./" <> kiraworkspace <> "/result/repkira2R1.m", repkira2R1];
Export["./" <> kiraworkspace <> "/result/repR12num.m", repR12num];
Save["./" <> kiraworkspace <> "/result/derivative_rules_bubble.m",
  {listcal, repvar, reppara2N, repNumericTestKira, id, symmetry, dk0, dks, dk0Term, dksTerm}];

Print["Export done. Workspace ready at: ", kiraworkspace];

