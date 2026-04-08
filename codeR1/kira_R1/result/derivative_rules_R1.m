listcal[expr_, i_, j_, n_] := ReplacePart[expr, {i, j} -> expr[[i, j]] + n]

id[expr_] := expr /. {R1[{2, n4_}, {a_}, {b1_, b2_}] :> -R1[{0, n4}, {a}, {b1, b2}] - (2 nu + 1) R1[{1, n4}, {a - 1}, {b1, b2 + 1}], R1[{n3_, 2}, {a_}, {b1_, b2_}] :> -R1[{n3, 0}, {a}, {b1, b2}] - (2 nu + 1) R1[{n3, 1}, {a - 1}, {b1, b2 + 1}]}

symmetry[expr_] := expr /. R1[{n3_, n4_}, {a_}, {b1_, b2_}] :> If[n3 > n4, R1[{n4, n3}, {a}, {b1, b2}], R1[{n3, n4}, {a}, {b1, b2}]]

reppowerselection = R1[{n3_, n4_}, {a_}, {b1_, b2_}] /; (OddQ[b1] || OddQ[n3 + n4 + b2]) -> 0

dk0Term[r_R1] := listcal[r, 2, 1, 1]

dk0[expr_] := D[expr, k0] + (Expand[expr] /. a_. r_R1 :> a*dk0Term[r])

dksTerm[r_R1] := Module[{b2, term1, term2, term3}, b2 = b20 + r[[3, 2]]; term1 = (-b2)/(2 ks) * (ks^2 listcal[r, 3, 2, 2] + r - listcal[listcal[r, 3, 1, -2], 3, 2, 2]); term2 = (1/(2 ks)) * (ks^2 listcal[listcal[listcal[r, 1, 1, 1], 2, 1, 1], 3, 2, 1] + listcal[listcal[listcal[r, 1, 1, 1], 2, 1, 1], 3, 2, -1] - listcal[listcal[listcal[listcal[r, 1, 1, 1], 2, 1, 1], 3, 1, -2], 3, 2, 1]); term3 = (1/(2 ks)) * (ks^2 listcal[listcal[listcal[r, 1, 2, 1], 2, 1, 1], 3, 2, 1] + listcal[listcal[listcal[r, 1, 2, 1], 2, 1, 1], 3, 2, -1] - listcal[listcal[listcal[listcal[r, 1, 2, 1], 2, 1, 1], 3, 1, -2], 3, 2, 1]); term1 + term2 + term3]

dks[expr_] := D[expr, ks] + (Expand[expr] /. a_. r_R1 :> a*dksTerm[r])
