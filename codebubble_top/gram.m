(* ::Package:: *)

Unprotect[sp,expandsp,spdtosij,replacelistrule,listcalc1,listcalc,repprop,repdzi,gram,gram2,cut,cutall,highestpower,highesttotalpower,pw];
Print[Style["Reminder",Red],": You need define repsptox and reppijtosij before use spdtosij"];


SetAttributes[sp,Orderless];

expandsp[expr_] := 
 expr //. {sp[c1___, c2_ + c3_, c4___] :> 
     sp[c1, c2, c4] + sp[c1, c3, c4]} //. {sp[c1___, n1_?NumericQ*c2_, 
     c3___] :> n1*sp[c1, c2, c3]};

spdtosij[expr_] := 
 expr//expandsp// ReplaceAll[#, repsptox] &  // ReplaceAll[#, reppijtosij] &// Simplify;
 
replacelistrule[a_List,b_List]:=If[Length[a]<=Length[b],Table[a[[i]]->b[[i]],{i,Length[a]}],Print["length not match for"<>ToString[a]];];


listcalc1[list0_, list1_, list2_] := 
 Module[{tmp1 = list1, tmp2 = list2, results, list = list0, i3, i4, 
   list4},
  results = 
   Table[list[[i3]] + If[i3 == tmp1, tmp2, 0], {i3, 1, 
     Length[list]}];
  Return[results];
  ]
listcalc[list0_, list1_, list2_] := 
 Module[{tmp1 = list1, tmp2 = list2, results, list = list0, i3, i4, 
   list4},
  results = list;
  Do[results = listcalc1[results, tmp1[[i3]], tmp2[[i3]]],
   {i3, 1, Length[tmp1]}];
  Return[results];
  ]

repprop[expr_] := 
 ExpandAll[
   expr] //. {prop[c1_]*G[a1_, b1_] :> G[a1, listcalc1[b1, c1, -1]], 
   prop[c1_]^c2_*G[a1_, b1_] :> G[a1, listcalc1[b1, c1, -c2]]}

repdzi[expr_,i0_]:=Module[{Glist,Glist1,repGlist,null},
Glist=expr+null//Cases[#,G[___],Infinity]&//DeleteDuplicates;
Glist1=Glist/.G[c1_,{c2___}]:> - {c2}[[i0]]  G[c1,listcalc1[{c2}, i0, 1]];
repGlist=Table[Glist[[i]]->Glist1[[i]],{i,Length[Glist]}];
expr/.repGlist
]

highesttotalpower[expr_,vars_List]:=Module[{ci,v,vi,rep},
rep=Table[vars[[i]]->vi[i]*v,{i,Length[vars]}];
expr/.rep//Exponent[#,v]&];

highestpower[expr_,vars_List]:=Module[{n0,aset,a,cond,i,term,res,test,sol,f},
If[expr==0,Return[{}]];
aset=Table[a[i],{i,Length[vars]}];
term=Product[vars[[i]]^aset[[i]],{i,Length[vars]}];
cond=Join[Table[Element[aset[[i]],Integers],{i,Length[aset]}],Table[aset[[i]]>=0,{i,Length[aset]}]];
n0=highesttotalpower[expr,vars];
sol=Solve[Total[aset]==n0,aset,Assumptions->cond];
test=Table[pw[sol[[i,;;,2]],Coefficient[expr,Evaluate[term/.sol[[i]]]]],{i,Length[sol]}]//.{c1___,pw[c2_,0],c3___}->{c1,c3};
res=test/.pw[c1_,c2_]->pw[c1]]

generateuCP[ufactor_,ufactorpower_,vars0_,z0_]:=Module[{z0poweri,ufactor1,ufactorpower1},
z0poweri=Table[(ufactor[[i]]//highesttotalpower[#,vars0]&),{i,Length[ufactor]}];
ufactor1=Join[{z0},Table[ufactor[[j]]*z0^z0poweri[[j]]/.Table[vars0[[i]]->vars0[[i]]/z0,{i,Length[vars0]}]//Factor,{j,Length[ufactor]}]];
ufactorpower1=Join[{-Sum[ufactorpower[[i]]*z0poweri[[i]],{i,Length[ufactor]}]},ufactorpower];
{ufactor1,ufactorpower1,Join[{z0},vars0]}];


gram[{list1__}]:=Table[sp[{list1}[[i1]],{list1}[[i2]]],{i1,1,Length[{list1}]},{i2,1,Length[{list1}]}];
gram2[{list1__},{list2__}]:=Table[sp[{list1}[[i1]],{list2}[[i2]]],{i1,1,Length[{list1}]},{i2,1,Length[{list2}]}];
cut[expr_, {list__}] := expr /. Table[prop[i] -> 0, {i, {list}}];
cutall[expr_]:= expr /. prop[___] -> 0;


Protect[sp,expandsp,spdtosij,replacelistrule,listcalc1,listcalc,repprop,repdzi,gram,gram2,cut,cutall,highestpower,highesttotalpower,pw];
