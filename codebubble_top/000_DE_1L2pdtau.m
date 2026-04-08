(* ::Package:: *)

(* ::Input:: *)
(*Quit[];*)


(* ::Input:: *)
(*SetDirectory[NotebookDirectory[]]*)


(* ::Chapter::Closed:: *)
(*IBP and DE*)


(* ::Section::Closed:: *)
(*Generalize IBP to dS         define function*)


(* ::Subsection:: *)
(*for a vertex at t     (despite theta(t))*)


(* ::Input:: *)
(*Prod[(-t)^(3/2) (1 - I k[i] t) E^[I k[i] t] , {i, iset}]* Prod[(-t)^(3/2) HankelH1[v[j], -k[j] t] , {j, jset}]*)


(* ::Input:: *)
(*G[{v1,k1,0},{v2,k2,0},...,{v0,k0}]      ==     t^v0 E^(I k0 t) Product[  HankelH1[   v[i]  , -k[i] t  ] ,{i,n}]*)


(* ::Subsection::Closed:: *)
(*define function*)


(* ::Input:: *)
(*(*listcalc1[list0_, list1_, list2_] := *)
(* Module[{tmp1 = list1, tmp2 = list2, results, list = list0, i3, i4, list4},*)
(*  results = Table[list[[i3]] + If[i3 == tmp1, tmp2, 0], {i3, 1, Length[list]}];*)
(*  Return[results];*)
(*  ]*)
(*listcalc[list0_, list1_, list2_] := *)
(* Module[{tmp1 = list1, tmp2 = list2, results, list = list0, i3, i4, list4},*)
(*  results = list;*)
(*  Do[results = listcalc1[results, tmp1[[i3]], tmp2[[i3]]],{i3, 1, Length[tmp1]}];*)
(*  Return[results];*)
(*  ]*)*)


(* ::Input:: *)
(*Corder1="(2 list[[i,1]] + 1)"(*1 for Hankel, 0 for sphere Hankel, -2 for original, 2v+1 for no t^-2 !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!*); *)
(*Ct2="0" (*0 for no t^-2, 1 for others*!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!*);*)
(**)
(*dtGi[expr_,i_]:=Module[{n0,resi,res,tmp,tmp1,tmp2}, list=expr[[1]]; n0=Length[list];*)
(**)
(*If[i==n0,{tmp=list;tmp[[-1,1]]=list[[-1,1]]-1;resi[n0]=list[[-1,1]]G[tmp]+I list[[-1,2]] G[list];(*apply dt to {v0,k0}*)},*)
(*     If[list[[i,3]]==0,{tmp=list;tmp[[i,3]]=1;resi[i]=-tmp[[i,2]](*-k*)G[tmp];},*)
(*{tmp=list;tmp1=list;tmp2=list;*)
(*tmp[[i,3]]=1;    tmp[[-1,1]]=list[[-1,1]]-1;*)
(*tmp1[[i,3]]=0;*)
(*tmp2[[i,3]]=0;  tmp2[[-1,1]]=list[[-1,1]]-2;*)
(*resi[i]=- ToExpression[Corder1] G[tmp] +  list[[i,2]](* --k=k *)G[tmp1]  +  ToExpression[Ct2] 1/list[[i,2]](*k*)*list[[i,1]]^2(*v^2*)G[tmp2];}]];  *)
(*resi[i]];*)
(**)
(*dtG[expr_]:=Module[{n0,(*list,*)resi,res,tmp,tmp1,tmp2,C}, list=expr[[1]]; n0=Length[list];*)
(*tmp=list;(*tau*) tmp[[-1,1]]=list[[-1,1]]-1;resi[n0]=list[[-1,1]]G[tmp]+I list[[-1,2]] G[list](*apply dt to {v0,k0}*);*)
(*Do[  If[list[[i,3]]==0,{tmp=list;tmp[[i,3]]=1;resi[i]=-tmp[[i,2]]G[tmp];},*)
(*{tmp=list;tmp1=list;tmp2=list;*)
(*tmp[[i,3]]=1;    (*tau*) tmp[[-1,1]]=list[[-1,1]]-1;*)
(*tmp1[[i,3]]=0;*)
(*tmp2[[i,3]]=0;  (*tau*) tmp2[[-1,1]]=list[[-1,1]]-2;*)
(*resi[i]=- ToExpression[Corder1] G[tmp]  +  list[[i,2]]G[tmp1]   +   ToExpression[Ct2] 1/list[[i,2]]*list[[i,1]]^2G[tmp2];}];  *)
(*,{i,n0-1}];*)
(*res=Sum[resi[i],{i,n0}]]*)
(**)
(**)
(**)
(*getvset[expr_]:=Module[{n0,list}, list=expr[[1]]; n0=Length[list];Table[list[[i,1]],{i,n0-1}]]*)
(*getkset[expr_]:=Module[{n0,list}, list=expr[[1]]; n0=Length[list];Table[list[[i,2]],{i,n0}]]*)
(*G2g0[expr_]:=Module[{n0,list}, list=expr[[1]]; n0=Length[list];g[Join[Table[list[[i,3]],{i,n0-1}],{list[[n0,1]]}]]];*)
(*G2g[expr_]:=expr/.G[c1_]:>G2g0[G[c1]];*)
(*g2G0[expr_]:=Module[{n0,list}, list=expr[[1]]; n0=Length[list];g[Join[Table[{vset[[i]],kset[[i]],list[[i]]},{i,n0-1}],{{list[[n0]],kset[[n0]]}}]]];*)
(*g2G[expr_]:=expr/.g[c1_]:>g2G0[g[c1]];(*have vset and kset defined firstly*)*)
(**)
(*v0list[expr_]:=Table[expr[[i,1]]//Cases[#,_g,Infinity]&//DeleteDuplicates//ReplaceAll[#,{g[c1_]:>c1[[-1]]}]&//ReplaceAll[#,v0->0]&,{i,Length[expr]}];*)
(*v0listmin[expr_]:=Table[v0list[expr][[i]]//ReplaceAll[#,{c1___}:>Sequence[c1]]&//Min,{i,Length[Evaluate[v0list[expr]]]}];*)
(*v0listmax[expr_]:=Table[v0list[expr][[i]]//ReplaceAll[#,{c1___}:>Sequence[c1]]&//Max,{i,Length[Evaluate[v0list[expr]]]}];*)
(**)
(*(*----------TODO: dkG----------------------------*)*)
(*dkGi[expr_,i_,kj_]:=Module[{n0,(*list,*)resi,res,tmp,tmp1,tmp2,coeff}, list=expr[[1]]; n0=Length[list];coeff=D[list[[i,2]],kj];*)
(*If[i==n0,{tmp=list;  tmp[[-1,1]]=list[[-1,1]]+1;  resi[n0]=+I G[tmp](*apply dt to {v0,k0}*);},*)
(*     If[list[[i,3]]==0,{tmp=list;tmp[[i,3]]=1;  (*tau*) tmp[[-1,1]]=list[[-1,1]]+1;  resi[i]=- G[tmp];},*)
(*{tmp=list;tmp1=list;tmp2=list;*)
(*tmp[[i,3]]=1;    *)
(*tmp1[[i,3]]=0;  (*tau*) tmp1[[-1,1]]=list[[-1,1]]+1;*)
(*tmp2[[i,3]]=0;  (*tau*) tmp2[[-1,1]]=list[[-1,1]]-1;*)
(*resi[i]=- ToExpression[Corder1] 1/list[[i,2]]*G[tmp]   +  G[tmp1] + ToExpression[Ct2] 1/list[[i,2]]^2*list[[i,1]]^2G[tmp2];}]];  *)
(*resi[i]=coeff*resi[i]    ];*)
(**)
(*dkG[expr_,kj_]:=Module[{n0,(*list,*)resi,res,tmp,tmp1,tmp2,coefflist,coeffnonzerolist,null}, list=expr[[1]]; n0=Length[list];coefflist=Table[D[list[[i,2]],kj],{i,Length[list]}];(* Print[coefflist];*)*)
(*coeffnonzerolist=Table[If[coefflist[[i]]=!=0,i,null],{i,Length[list]}]//Complement[#,{null}]&;*)
(*res=Sum[dkGi[expr,i,kj],{i,coeffnonzerolist}]*)
(*]*)
(**)
(**)


(* ::Input:: *)
(*repki=Table[ToExpression["k"<>ToString[i]]->Subscript[k,i],{i,0,10}];*)
(*repvi=Table[ToExpression["v"<>ToString[i]]->Subscript[\[Nu],i],{i,0,10}];*)
(*reptotex[expr_]:=expr/.repki/.repvi(*/.Subscript[a,0]->Subscript[\[Mu],0]*)//ReplaceAll[#,g[{c1___,c2_}]->V[c2,c1]]&*)


(* ::Input:: *)
(*sigma3=DiagonalMatrix[{1,-1}]*)
(*sigma2={{0,-I},{I,0}}*)
(*sigma1={{0,1},{1,0}}*)
(*I2=DiagonalMatrix[{1,1}]*)
(*T={{1,-I},{-I,1}}/Sqrt[2](*Eigenvectors[{{0,-I},{I,0}}]*)*)
(*Tinv=Inverse[T]//Simplify*)
(*T . sigma1 . Inverse[T]*)


(* ::Input:: *)
(*T . {{1,0},{0,-1}} . Tinv//Simplify*)


(* ::Subsection::Closed:: *)
(*dt test*)


(* ::Input:: *)
(*test=G[{{v1,k1,0},{v2,k2,1},{v0,k0}}]+G[{{v1,k1,0},{v2,k2,0},{v0,k0}}]*)
(*test/.G[c1_]:>dtG[G[c1]]//Simplify*)
(*dtGi[test[[2]],1]*)
(*dtGi[test[[2]],2]*)
(*dtGi[test[[2]],3]*)
(**)
(*vset=getvset[test[[1]]]*)
(*kset=getkset[test[[1]]]*)
(**)
(*G2g[test]*)
(*g2G[test]*)


(* ::Subsection:: *)
(*dk test*)


(* ::Input:: *)
(*G[{{v1,k1,0},{v2,k1+k0,0},{v0,k0}}][[1]]*)


(* ::Input:: *)
(*G[{{v1,k1,1},{v2,a k1+k0,0},{v0,k0}}]//dkG[#,k1]&*)


(* ::Section::Closed:: *)
(*H^1*)


(* ::Subsection:: *)
(*IBP*)


(* ::Input:: *)
(*Clear[vset,kset,test,test1,vilist,vilist1]*)


(* ::Input:: *)
(*vset=getvset[G[{{v1,k1,0},{v0,k0}}]]*)
(*kset=getkset[G[{{v1,k1,0},{v0,k0}}]]*)


(* ::Input:: *)
(*nH=1;*)
(*vilist=Table[vi[i],{i,nH}];*)
(*vilist1=G[Table[{vi[i],0,1},{i,nH}]]/.G[{c1___}]->Sequence[c1];*)
(*glist=Table[g[Join[vilist,{v0}]],Evaluate[vilist1]]*)
(*Glist=glist//g2G;*)
(*IBPset0=Table[dtG[Glist[[i]]]==0,{i,Length[Glist]}]//G2g*)
(*(*test=v0listmin[IBPset0]*)
(*IBPset0=Table[IBPset0[[i]]/.v0->v0-test[[i]],{i,Length[IBPset0]}]*)*)


(* ::Input:: *)
(*IBPset0//InputForm*)


(* ::Input:: *)
(*IBPset0={v0*g[{0, -1 + v0}] + I*k0*g[{0, v0}] - k1*g[{1, v0}] == 0, k1*g[{0, v0}] + v0*g[{1, -1 + v0}] + (-1 - 2*v1)*g[{1, -1 + v0}] + I*k0*g[{1, v0}] == 0}*)


(* ::Subsubsection:: *)
(*numerical check ibp*)


(* ::Input:: *)
(*ints=IBPset0//Cases[#,_g,Infinity]&//DeleteDuplicates*)
(*ints01=ints/.{g[{0,c2_}]->E^(I k0 t)  t^c2   *       (-k1 t)^(-v1) HankelH1[v1,- k1 t],g[{1,c2_}]->-1/k1   E^(I k0 t) t^c2   *   D[(-k1 t)^(-v1)HankelH1[v1,- k1 t],t]}//Simplify*)
(*repN={k0-> -I ,k1->13/5,v0->52/7,v1->7/3}*)
(*ints02=ints01/.repN//Simplify;*)
(*ints03=Table[NIntegrate[ints02[[i]],{t,-Infinity,0},WorkingPrecision->23],{i,Length[ints02]}];*)
(*repint2N=Table[Rule[ints[[i]],ints03[[i]]],{i,Length[ints]}]*)
(**)


(* ::Input:: *)
(*IBPset0[[;;,1]] /.repint2N/.repN*)


(* ::Input:: *)
(*IBPset0[[2]]//reptotex//TeXForm*)


(* ::Subsubsection::Closed:: *)
(*solve ibp*)


(* ::Input:: *)
(*(*test={-1,0}*)*)
(**)
(*v0max=2;v0min=-1*)
(*IBPset1=Table[Table[IBPset0[[i]](*/.G[{c1___,{c2_,c3_}}]:>G[c1,{c2-v0+j,c3}]*)/.v0->v0+j,{j,v0min(*+test[[i]]*),v0max}],{i,Length[IBPset0]}]//Transpose//Flatten;*)
(*ints=IBPset1//Cases[#,_g,Infinity]&//DeleteDuplicates//ReplaceAll[#,g[{c1___,c2_}]->g[{c2,c1}]]&//Sort//ReplaceAll[#,g[{c1_,c2___}]->g[{c2,c1}]]&*)
(*IBPmatrix=Table[Coefficient[IBPset1[[i]][[1]],ints[[j]]],{i,Length[IBPset1]},{j,Length[ints]}]*)
(*MatrixRank[IBPmatrix]*)
(*MIs={g[{0,v0}],g[{1,v0}](*,g[0,1],g[1,1]*)};*)
(*ints1=Complement[ints,MIs];*)
(*SolH=Solve[IBPset1,ints1][[1]]//Collect[#,_g]&*)
(*SolH[[;;,2]]/.g[c1___]/;MemberQ[MIs,g[c1]]->0  (*Check Master*)*)


(* ::Input:: *)
(*v0min=-1;v0max=2;*)
(*IBPset1=Table[Table[IBPset0[[i]]/.v0->v0+j,{j,v0min,v0max(*-test[[i]]*)}],{i,Length[IBPset0]}]//Transpose//Flatten*)
(*%//Length*)
(*ints=IBPset1//Cases[#,_g,Infinity]&//DeleteDuplicates//ReplaceAll[#,g[{c1___,c2_}]->g[{c2,c1}]]&//Sort//ReplaceAll[#,g[{c1_,c2___}]->g[{c2,c1}]]&*)
(*IBPmatrix=Table[Coefficient[IBPset1[[i]][[1]],ints[[j]]],{i,Length[IBPset1]},{j,Length[ints]}](*/.k0\[Rule]0*);*)
(*%//MatrixForm*)
(**)


(* ::Input:: *)
(*IBPmatrix1=Table[IBPmatrix[[i]],{i,{3,4,1}}]//MatrixForm//reptotex//TeXForm*)


(* ::Input:: *)
(*ints//reptotex//TeXForm*)


(* ::Input:: *)
(*H1p=Table[Coefficient[{g[{0,v0+1}],g[{1,v0+1}]}/.SolH,MIs[[i]]],{i,Length[MIs]}]//Transpose*)
(*H1m=Table[Coefficient[{g[{0,v0-1}],g[{1,v0-1}]}/.SolH,MIs[[i]]],{i,Length[MIs]}]//Transpose*)
(*((H1p//Inverse)/.v0->v0-1)-H1m//Simplify*)
(*H1A[v0_]:=Evaluate[H1p]*)
(*H1A[v0+1]-(H1p/.v0->v0+1)//Simplify*)
(*Inverse[H1A[v0-1]]-H1m//Simplify*)


(* ::Input:: *)
(*H1p/.k0->0//Simplify//reptotex//MatrixForm//TeXForm*)


(* ::Input:: *)
(*(H1A[v0+1] . H1A[v0](*-H1A[v0]*)//Simplify)-(Table[Coefficient[{g[{0,v0+2}],g[{1,v0+2}]}/.SolH,MIs[[i]]],{i,Length[MIs]}]//Transpose)//Simplify*)


(* ::Input:: *)
(*H1A[v0+1] . H1A[v0]//Simplify*)


(* ::Subsection::Closed:: *)
(*DE  H*)


(* ::Input:: *)
(*MIs//g2G*)


(* ::Input:: *)
(**)


(* ::Input:: *)
(*dkG[MIs[[1]]//g2G,k1]*)


(* ::Input:: *)
(*(*{Table[dkG[MIs[[i]]//g2G,k1],{i,Length[MIs]}]//G2g}*)test0//reptotex//Transpose//MatrixForm//TeXForm*)


(* ::Input:: *)
(*(Table[dkG[MIs[[i]]//g2G,k1],{i,Length[MIs]}]//G2g)/.SolH//Simplify;*)
(*test1=Table[Coefficient[%,MIs[[i]]],{i,Length[MIs]}]//Transpose*)


(* ::Input:: *)
(*(Table[dkG[MIs[[i]]//g2G,k0],{i,Length[MIs]}]//G2g)/.SolH//Simplify;*)
(*test0=Table[Coefficient[%,MIs[[i]]],{i,Length[MIs]}]//Transpose*)


(* ::Input:: *)
(*Clear[test3,test4,test5]*)


(* ::Input:: *)
(*test1i=test1(*/.v0\[Rule]v0+1/2+v1*)//Integrate[#,k1]&//Simplify*)
(*test0i=test0//Integrate[#,k0]&//Simplify*)


(* ::Input:: *)
(*test1i//InputForm*)


(* ::Input:: *)
(*test1i/2//Coefficient[#,ArcTanh[k1/k0]]&//reptotex//TeXForm*)


(* ::Subsection::Closed:: *)
(*transformation of DE    useless now*)


(* ::Input:: *)
(*trans={{1,0},{a k0/k1,1}}*)
(*invtrans=Inverse[trans];*)
(*test2=trans . test1 . invtrans+D[trans,k1] . invtrans//Simplify*)
(*test3=test2//Integrate[#,k1]&//Simplify*)


(* ::Input:: *)
(*(-v1^2+a^2 (v0+v0^2+v1^2)+I a (v0+2 v1^2))==0//Solve[#,a]&//ReplaceAll[#,{Power[4v1^2-1,1/2]->I Sqrt[1-4v1^2]}]&*)


(* ::Input:: *)
(*trans={{1,0},{(-I v0-2 I v1^2-a I v0 Sqrt[1-4 v1^2])/(2 (v0+v0^2+v1^2)) k0/k1,1}}*)
(*invtrans=Inverse[trans];*)
(*test2=trans . test1 . invtrans+D[trans,k1] . invtrans//Simplify;*)
(*test3=test2//Integrate[#,k1]&//Simplify*)
(*test4=trans . test0 . invtrans+D[trans,k0] . invtrans//Simplify;*)
(*test5=test4//Integrate[#,k0]&//Simplify*)


(* ::Input:: *)
(*trans/.v1^2->-Subscript[\[Nu],1]^2+1/4//Simplify[#,Subscript[\[Nu],1]>0]&//reptotex//MatrixForm//TeXForm*)


(* ::Input:: *)
(*test6=test3/.v1^2->-mu^2+1/4/.a^2->1//Simplify[#,mu>0]&*)
(*test5/.v1^2->-mu^2+1/4/.a^2->1//Simplify[#,mu>0]&//MatrixForm*)


(* ::Input:: *)
(*test6//InputForm*)


(* ::Input:: *)
(*test61=test6/.mu->Subscript[\[Nu], 1]//Coefficient[#,ArcTanh[k1/k0]]&//reptotex*)
(*test61[[1,2]]//Factor*)
(*test61[[2,1]]//Factor*)


(* ::Input:: *)
(**)
(**)


(* ::Input:: *)
(*ArcTanh[a]//TrigToExp*)


(* ::Input:: *)
(*trans={{(k1^2-k0^2)^(I v1/2+3/4) k1^(-I v1),0},{0,(k1^2-k0^2)^(I v1/2+3/4) k1^(-I v1)}} . {{1,0},{v1/(v0+I v1) k0/k1,1}}*)
(*invtrans=Inverse[trans];*)
(*test2=trans . test1 . invtrans+D[trans,k1] . invtrans//Simplify*)
(*test3=test2//Integrate[#,k1]&//Simplify*)
(*test3/.v0->1/2/.v1->I (v1(*+1/2*))//Simplify*)


(* ::Section::Closed:: *)
(*H^2*)


(* ::Input:: *)
(*Clear[vset,kset,test,test1,vilist,vilist1]*)


(* ::Input:: *)
(*vset=getvset[G[{{v1,k1,0},{v2,k2,0},{v0,k0}}]]*)
(*kset=getkset[G[{{v1,k1,0},{v2,k2,0},{v0,k0}}]](*/.k0\[Rule]0*)*)


(* ::Input:: *)
(*nH=2;*)
(*vilist=Table[vi[i],{i,nH}];*)
(*vilist1=G[Table[{vi[i],0,1},{i,nH}]]/.G[{c1___}]->Sequence[c1];*)
(*glist=Table[g[Join[vilist,{v0}]],Evaluate[vilist1]]//Flatten//Sort*)
(*Glist=glist//g2G;*)
(*IBPset0=Table[dtG[Glist[[i]]]==0,{i,Length[Glist]}]//G2g*)
(*Table[IBPset0[[i]]//Cases[#,_g,Infinity]&//DeleteDuplicates//Sort,{i,Length[IBPset0]}]//MatrixForm*)
(*test=v0listmin[IBPset0](*+{1,0,0,0}*)*)
(*(*IBPset0=Table[IBPset0[[i]]/.v0->v0-test[[i]],{i,Length[IBPset0]}]*)*)


(* ::Input:: *)
(*(*test={-2,-1,-1,0}*)(*v0listmax[IBPset0]*)*)
(*v0max=1(*1*)*)
(*v0min=-1(*-1*)*)
(*IBPset1=Table[Table[IBPset0[[i]]/.v0->v0+j,{j,v0min(*+test[[i]]*),v0max}],{i,Length[IBPset0]}]//Transpose//Flatten;*)
(*ints=IBPset1//Cases[#,_g,Infinity]&//DeleteDuplicates//ReplaceAll[#,g[{c1___,c2_}]->g[{c2,c1}]]&//Sort//ReplaceAll[#,g[{c1_,c2___}]->g[{c2,c1}]]&*)
(*IBPmatrix=Table[Coefficient[IBPset1[[i]][[1]],ints[[j]]],{i,Length[IBPset1]},{j,Length[ints]}];*)
(*MatrixRank[IBPmatrix]*)
(*MIs={g[{0,0,v0}],g[{0,1,v0}],g[{1,0,v0}],g[{1,1,v0}](*,g[{0,0,v0+1}]*)(*,g[{1,0,v0+1}]*)};*)
(*ints1=Complement[ints,MIs];*)
(*SolH=Solve[IBPset1,ints1][[1]]//Simplify//Collect[#,_g]&;*)
(*SolH[[;;,2]]/.g[c1___]/;MemberQ[MIs,g[c1]]->0  (*Check Master*)*)


(* ::Input:: *)
(*IBPmatrix*)


(* ::Input:: *)
(*test=Table[IBPmatrix[[i,j]],{i,5,8},{j,5,12}]*)


(* ::Input:: *)
(*test//reptotex(*//MatrixForm*)//TeXForm*)


(* ::Input:: *)
(*(*H1p=Table[Coefficient[MIs/.v0->v0+1/.SolH,MIs[[i]]],{i,Length[MIs]}]//Transpose//Simplify*)*)
(*H1m=Table[Coefficient[MIs/.v0->v0-1/.SolH,MIs[[i]]],{i,Length[MIs]}]//Transpose//Simplify*)


(* ::Input:: *)
(*H1m//Inverse//Simplify*)


(* ::Subsection::Closed:: *)
(*DE*)


(* ::Input:: *)
(*MIs//g2G*)


(* ::Input:: *)
(**)


(* ::Input:: *)
(*dkG[MIs[[1]]//g2G,k0]*)


(* ::Input:: *)
(*(*{Table[dkG[MIs[[i]]//g2G,k0],{i,Length[MIs]}]//G2g}*)test0//reptotex//Transpose//MatrixForm//TeXForm*)


(* ::Input:: *)
(*(Table[dkG[MIs[[i]]//g2G,k2],{i,Length[MIs]}]//G2g)/.SolH//Simplify;*)
(*test2=Table[Coefficient[%,MIs[[i]]],{i,Length[MIs]}]//Transpose*)


(* ::Input:: *)
(*(Table[dkG[MIs[[i]]//g2G,k1],{i,Length[MIs]}]//G2g)/.SolH//Simplify;*)
(*test1=Table[Coefficient[%,MIs[[i]]],{i,Length[MIs]}]//Transpose*)


(* ::Input:: *)
(*(Table[dkG[MIs[[i]]//g2G,k0],{i,Length[MIs]}]//G2g)/.SolH//Simplify;*)
(*test0=Table[Coefficient[%,MIs[[i]]],{i,Length[MIs]}]//Transpose*)


(* ::Input:: *)
(*test1i=test1(*/.v0\[Rule]v0+1/2+v1*)//Integrate[#,k1]&//Simplify[#,k0>k1>k2>0]&*)
(*test2i=test2(*/.v0\[Rule]v0+1/2+v1*)//Integrate[#,k2]&//Simplify[#,k0>k1>k2>0]&*)
(*test0i=test0//Integrate[#,k0]&//Simplify[#,k0>k1>k2>0]&*)


(* ::Input:: *)
(*D[test1i-test2i//Simplify,k1]//Simplify*)


(* ::Input:: *)
(*sigma2*)


(* ::Input:: *)
(*T . sigma3 . Tinv*)


(* ::Section::Closed:: *)
(*H^n  matrix form*)


(* ::Input:: *)
(*Clear[M1i,M2i,M0i,I2]*)
(*M1i[i_]:={{0,0},{0,-2ToExpression["v"<>ToString[i]]-1}}*)
(*M0i[i_]:=-I ToExpression["k"<>ToString[i]] sigma2*)
(*M1ti[i_]:=T . {{0,0},{0,-2ToExpression["v"<>ToString[i]]-1}} . Tinv*)
(*M0ti[i_]:=-I ToExpression["k"<>ToString[i]] sigma3*)
(*I2=IdentityMatrix[2];*)
(*f[I2,M1i[1],M0i[1],M1ti[1],M0ti[1]]*)


(* ::Input:: *)
(**)


(* ::Input:: *)
(*M0=KroneckerProduct[M0i[1],I2]+KroneckerProduct[I2,M0i[2]]+I k0 KroneckerProduct[I2,I2]*)
(*M1=KroneckerProduct[M1i[1],I2]+KroneckerProduct[I2,M1i[2]]+v0 KroneckerProduct[I2,I2]*)
(*Mt0=KroneckerProduct[M0ti[1],I2]+KroneckerProduct[I2,M0ti[2]]+I k0 KroneckerProduct[I2,I2]*)
(*Mt1=KroneckerProduct[M1ti[1],I2]+KroneckerProduct[I2,M1ti[2]]+v0 KroneckerProduct[I2,I2]//Simplify*)


(* ::Input:: *)
(*Mt0/I//Simplify//reptotex//TeXForm*)


(* ::Section::Closed:: *)
(*H^3*)


(* ::Input:: *)
(*Clear[vset,kset,test,test1,vilist,vilist1]*)


(* ::Input:: *)
(*vset=getvset[G[{{v1,k1,0},{v2,k2,0},{v3,k3,0},{v0,k0}}]]*)
(*kset=getkset[G[{{v1,k1,0},{v2,k2,0},{v3,k3,0},{v0,k0}}]](*/.k0\[Rule]0*)*)


(* ::Input:: *)
(*nH=3;*)
(*vilist=Table[vi[i],{i,nH}];*)
(*vilist1=G[Table[{vi[i],0,1},{i,nH}]]/.G[{c1___}]->Sequence[c1];*)
(*glist=Table[g[Join[vilist,{v0}]],Evaluate[vilist1]]//Flatten//Sort*)
(*Glist=glist//g2G;*)
(*IBPset0=Table[dtG[Glist[[i]]]==0,{i,Length[Glist]}]//G2g*)
(*Table[IBPset0[[i]]//Cases[#,_g,Infinity]&//DeleteDuplicates//Sort,{i,Length[IBPset0]}]//MatrixForm*)
(*test=v0listmin[IBPset0](*+{1,0,0,0}*)*)
(*(*IBPset0=Table[IBPset0[[i]]/.v0->v0-test[[i]],{i,Length[IBPset0]}]*)*)


(* ::Input:: *)
(*(*test={-2,-1,-1,0}*)(*v0listmax[IBPset0]*)*)
(*v0max=1(*1*)*)
(*v0min=-1(*-1*)*)
(*IBPset1=Table[Table[IBPset0[[i]]/.v0->v0+j,{j,v0min(*+test[[i]]*),v0max}],{i,Length[IBPset0]}]//Transpose//Flatten;*)
(*ints=IBPset1//Cases[#,_g,Infinity]&//DeleteDuplicates//ReplaceAll[#,g[{c1___,c2_}]->g[{c2,c1}]]&//Sort//ReplaceAll[#,g[{c1_,c2___}]->g[{c2,c1}]]&*)
(*IBPmatrix=Table[Coefficient[IBPset1[[i]][[1]],ints[[j]]],{i,Length[IBPset1]},{j,Length[ints]}];*)
(*MatrixRank[IBPmatrix]*)
(*MIs=glist;*)
(*ints1=Complement[ints,MIs];*)
(*SolH=Solve[IBPset1,ints1][[1]]//Simplify//Collect[#,_g]&;*)
(*SolH[[;;,2]]/.g[c1___]/;MemberQ[MIs,g[c1]]->0  (*Check Master*)*)


(* ::Input:: *)
(*IBPmatrix*)


(* ::Input:: *)
(*test=.*)


(* ::Input:: *)
(*test//reptotex(*//MatrixForm*)//TeXForm*)


(* ::Input:: *)
(*(*H1p=Table[Coefficient[MIs/.v0->v0+1/.SolH,MIs[[i]]],{i,Length[MIs]}]//Transpose//Simplify*)*)
(*H1m=Table[Coefficient[MIs/.v0->v0-1/.SolH,MIs[[i]]],{i,Length[MIs]}]//Transpose//Simplify*)


(* ::Input:: *)
(*H1m//Inverse//Simplify*)


(* ::Subsection:: *)
(*DE*)


(* ::Input:: *)
(*MIs//g2G*)


(* ::Input:: *)
(**)


(* ::Input:: *)
(*dkG[MIs[[1]]//g2G,k0]*)


(* ::Input:: *)
(*(*{Table[dkG[MIs[[i]]//g2G,k0],{i,Length[MIs]}]//G2g}*)test0//reptotex//Transpose//MatrixForm//TeXForm*)


(* ::Input:: *)
(*(Table[dkG[MIs[[i]]//g2G,k2],{i,Length[MIs]}]//G2g)/.SolH//Simplify;*)
(*test2=Table[Coefficient[%,MIs[[i]]],{i,Length[MIs]}]//Transpose*)


(* ::Input:: *)
(*(Table[dkG[MIs[[i]]//g2G,k1],{i,Length[MIs]}]//G2g)/.SolH//Simplify;*)
(*test1=Table[Coefficient[%,MIs[[i]]],{i,Length[MIs]}]//Transpose*)


(* ::Input:: *)
(*(Table[dkG[MIs[[i]]//g2G,k0],{i,Length[MIs]}]//G2g)/.SolH//Factor;*)
(*test0=Table[Coefficient[%,MIs[[i]]],{i,Length[MIs]}]//Transpose;*)


(* ::Input:: *)
(*test1i=test1(*/.v0\[Rule]v0+1/2+v1*)//Integrate[#,k1]&//Simplify[#,k0>k1>k2>0]&*)
(*test2i=test2(*/.v0\[Rule]v0+1/2+v1*)//Integrate[#,k2]&//Simplify[#,k0>k1>k2>0]&*)
(*test0i=test0//Integrate[#,k0]&//Simplify[#,k0>k1>k2>0]&*)


(* ::Input:: *)
(*test0i=test0//Integrate[#,k0]&//Simplify[#,k0>k1>k2>k3>0]&*)


(* ::Chapter:: *)
(*Numerical DE preparation*)


(* ::Section::Closed:: *)
(*2.0 Define functions & matrices *)


(* ::Input:: *)
(*Subscript[\[Sigma], 0]={{1,0},{0,1}};       Subscript[\[Sigma], 1]={{0,1},{1,0}};       Subscript[\[Sigma], 2]={{0,-I},{I,0}};       Subscript[\[Sigma], 3]={{1,0},{0,-1}};*)
(*T0=1/Sqrt[2]{{1,-I},{-I,1}}*)
(*T0inv=1/Sqrt[2]{{1,I},{I,1}}*)
(*repknuset[expr_,kset_List,nuset_List]:=Module[{repki,repnui},*)
(*repki=Table[ki[i-1]->kset[[i]],{i,Length[kset]}] ;*)
(*repnui=Table[nui[i-1]->nuset[[i]],{i,Length[nuset]}] ;*)
(*expr//ReplaceAll[#,repki]&//ReplaceAll[#,repnui]&]*)


(* ::Input:: *)
(*Tn[n_]:=Module[{test,f,c1},test=f[Table[T0,{i,n}]]/.f[{c1___}]->c1; KroneckerProduct[test,{{1}}]];*)
(*Tninv[n_]:=Module[{test,f,c1},test=f[Table[T0inv,{i,n}]]/.f[{c1___}]->c1; KroneckerProduct[test,{{1}}]];*)
(*Sigman[n_,i0_,j0_]:=Module[{test,f,c1},If[MemberQ[{0,1,2,3},j0],test=f[Table[If[i==i0,Subscript[\[Sigma], j0],Subscript[\[Sigma], 0]],{i,n}]]/.f[{c1___}]->c1; KroneckerProduct[test,{{1}}],Print["wrong j0 in Sigma[n,i0,j0]"]]];*)


(* ::Input:: *)
(*M1n[n_]:=Module[{},Sum[(nui[i]+1/2)Sigman[n,i,3],{i,n}] + (nui[0]-n/2-Sum[nui[i],{i,n}])Sigman[n,1,0] ]*)
(*M0n[n_]:=Module[{},Sum[(-I ki[i])Sigman[n,i,2],{i,n}] + (I ki[0])Sigman[n,1,0] ]*)
(*M1tilden[n_]:=Module[{},Sum[-(nui[i]+1/2)Sigman[n,i,2],{i,n}] + (nui[0]-n/2-Sum[nui[i],{i,n}])Sigman[n,1,0] ]*)
(*M0tilden[n_]:=Module[{},Sum[(-I ki[i])Sigman[n,i,3],{i,n}] + (I ki[0])Sigman[n,1,0] ]*)
(*Amn[n_] := - Inverse[M1n[n]] . M0n[n];*)
(*Apn[n_] := - Tninv[n] . M0tilden[n] . Tn[n] . M1n[n];*)


(* ::Input:: *)
(*Omegatilde0n[n_]:=Module[{},-I DiagonalMatrix[    Table[ log[ki[0]+Sum [(2BitGet[i-1,n-j]-1)ki[j],{j,n}]],{i,2^n}  ]]];*)
(*Omegaexn[n_]:=Module[{},DiagonalMatrix[    Table[  -  Sum[ BitGet[i-1,n-j](2 nui[j]+1) log[ki[j]],{j,n}]  , {i,2^n}  ]  ] ];*)
(*Omegan[n_]:=Omegaexn[n]- I Tninv[n] . Omegatilde0n[n] . Tn[n] . (M1n[n]/.nui[0]->nui[0]+1)*)


(* ::Input:: *)
(*(*  BitGet[i-1,n-j] == Subscript[a, j]  *)*)


(* ::Section::Closed:: *)
(*check*)


(* ::Input::Plain:: *)
(*BaseForm[19,2][1]*)
(*Table[BitGet[19,i],{i,0,7}]*)


(* ::Input::Plain:: *)
(*M1n[2]/.{ki[c1_]->Subscript[k,c1],nui[c1_]->Subscript[\[Nu],c1]}*)
(*M0n[2]/.{ki[c1_]->Subscript[k,c1],nui[c1_]->Subscript[\[Nu],c1]}*)
(*Tninv[2] . M1tilden[2] . Tn[2]-M1n[2]//Simplify*)


(* ::Input::Plain:: *)
(*Apn[2]//Simplify*)


(* ::Input:: *)
(**)
(*Omegatilde0n[2]/.{ki[c1_]->Subscript[k,c1],nui[c1_]->Subscript[\[Nu],c1]}*)
(*Omegaexn[2]/.{ki[c1_]->Subscript[k,c1],nui[c1_]->Subscript[\[Nu],c1]}*)
(*Omegan[1]*)


(* ::Input:: *)
(*test0=({*)
(* {-((k0 (v0+1))/(k0^2-k1^2)), (I k1 (v0-2 v1))/(k0^2-k1^2)},*)
(* {-((I k1 (v0+1))/(k0^2-k1^2)), -((k0 (v0-2 v1))/(k0^2-k1^2))}*)
(*})  (* right result *)*)
(*test1=Omegan[1]/.{ki[c1_]:>ToExpression["k"<>ToString[c1]],nui[c1_]:>ToExpression["v"<>ToString[c1]]}*)
(*test2=D[test1/.log->Log , k0]//Simplify;*)
(*test0-test2//Simplify*)
(*Clear[test0,test1,test2,test3]*)


(* ::Input:: *)
(*?HypergeometricPFQ*)
(*?Hypergeometric2F1*)


(* ::Chapter:: *)
(*Define functions*)


(* ::Input:: *)
(*addhat[cihat_,ci_,i_,nci_]:=(*Subscript[\:5341\:8fdb\:5236\:6570cihat\:5148\:8f6c\:5316\:4e3a\:4e8c\:8fdb\:5236c, 1]...Subscript[c, i-1]Subscript[c, i+1]...Subscript[c, nci]\:ff0cSubscript[\:518d\:5728\:7b2ci\:4f4d\:52a0\:5165c, i]\:540e\:56de\:5f52\:5341\:8fdb\:5236\:6570\:3002 \:5176\:4e2dnci\:4e3a\:4e8c\:8fdb\:5236\:4f4d\:6570\:ff0c\:5bf9\:5e94nci-fold hankel VIF*)*)
(*Module[{list1,list2,ci2,cnull},*)
(*list1=IntegerDigits[cihat-1,2,nci];*)
(*ci2=IntegerDigits[ci,2];  (* ci 2\:8fdb\:5236*)*)
(*If[Length[ci2]!=1,Print["wrong value of ci"];];*)
(*list2=Insert[list1,ci,i];*)
(*FromDigits[list2,2]+1(*+cnull*)*)
(*];*)
(**)
(**)
(*(*h10[v_,k_,t_]:=(- k t)^(-v) HankelH1[v,- k t];*)
(*h11[v_,k_,t_]:=-1/k D[(- k t)^(-v) HankelH1[v,- k t],t];*)
(*h20[v_,k_,t_]:=(- k t)^(-v) HankelH2[Conjugate[v],- k t];*)
(*h21[v_,k_,t_]:=-1/k D[(- k t)^(-v) HankelH2[Conjugate[v],- k t],t];*)*)
(**)
(*(* For V+, after wick rotation t->it *)*)
(**)
(*h10[v_,k_,t_]:=(-k t)^(-v) HankelH1[v,-k t];*)
(*h11[v_,k_,t_]:=-1/k  D[(-k t)^(-v) HankelH1[v,- k t],t];*)
(*h20[v_,k_,t_]:=(-k t)^(-v) HankelH2[Conjugate[v],-k t];*)
(*h21[v_,k_,t_]:=-1/k D[(-k t)^(-v) HankelH2[Conjugate[v],-k t],t];*)
(*reph1={hi0->h10,hi1->h11};*)
(*reph2={hi0->h20,hi1->h21};*)
(**)


(* ::Input:: *)
(*{k12-ks,k12+ks,k34-ks,k34+ks}/.repN1*)
(*{k12-ks,k12+ks,k34-ks,k34+ks}/.repN2*)


(* ::Chapter:: *)
(*Numerical DE DiffExp +- / -+ *)


(* ::Section:: *)
(*generate DE of +-/-+*)


(* ::Input:: *)
(*Sigman[1,1,0]*)


(* ::Input:: *)
(**)
(*test1=Omegan[2]//repknuset[#,{P1,x1,x2},{a0,v1,v1}]&(*//ReplaceAll[#,repk12]&*)//Simplify;        test1//MatrixForm*)
(*test2=Omegan[2]//repknuset[#,{P2,x1,x2},{a0,v1,v1}]&(*//ReplaceAll[#,repk34]&*)//Simplify;        test2//MatrixForm*)
(*IdentityMatrix[4]*)
(*Omegapm=KroneckerProduct[test1,IdentityMatrix[4]]+KroneckerProduct[IdentityMatrix[4],test2];*)
(*Omegapm//MatrixForm*)
(*(*Omegapm=Omegapm/.repvi;*)*)


(* ::Input:: *)
(*Omegax2=Omegapm/.log[c_]/;c===x2->Log[c]/.log[c_]->0*)
(*Export["./Omegax2.m",Omegax2]*)


(* ::Input:: *)
(*Omega1=test1/.{v0->a0,v2->v1,z1->x1,z2->x2,log->Log}/.a0->2v1;*)
(*%//MatrixForm*)
(*D[Omega1,P1]//Integrate[#,x1]&//Simplify*)


(* ::Input:: *)
(*G00=-(1/4) (s11-z[1]^2-2 z[1] z[2]-z[2]^2) (s11-z[1]^2+2 z[1] z[2]-z[2]^2)/.{z[1]->z1,z[2]->z2}*)
(*repN={s11->13,P1->19,P2->19,v0->13/7,v1->4/9,gamma->3-1/29,b0->-4/9*2}*)
(*Omegapm00=Omegapm+DiagonalMatrix[Table[b0 (log[z1]+log[z2])+gamma log[G00],{i,Length[Omegapm]}]];*)
(*Omegapm00N=Omegapm00/.repN;*)


(* ::Input:: *)
(*D[G00,s11]//Simplify*)


(* ::Input:: *)
(*eq1=Omegapm00N/.log[c1_]:>D[Log[c1],z1]//Det//Factor//Numerator;*)
(*eq2=Omegapm00N/.log[c1_]:>D[Log[c1],z2]//Det//Factor//Numerator;*)


(* ::Input:: *)
(*{eq1,eq2}//Variables*)


(* ::Input:: *)
(*NSolve[{eq1,eq2},{z1,z2}]//Length*)
