listcal[expr_, i_, j_, n_] := ReplacePart[expr, {i, j} -> expr[[i,j]] + n]
 
repvar = {P1 -> (-I)*k0, P2 -> (-I)*k0, P0R1 -> (-2*I)*k0, a10 -> a0, 
     a20 -> a0, b10 -> b0, b20 -> b0}
 
reppara2N = {a0 -> 2*nu, b0 -> -2*nu, D -> 3 - 2*ep, ks -> 1}
 
repNumericTestKira = {nu -> 3/7, ep -> 1/13, k0 -> 5/23}
 
id[expr_] := expr /. {G[{2, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{0, n2, n3, n4}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{1, n2, n3, n4}, {a1 - 1, a2}, {b1 + 1, b2}], 
      G[{n1_, 2, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{n1, 0, n3, n4}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{n1, 1, n3, n4}, {a1, a2 - 1}, {b1 + 1, b2}], 
      G[{n1_, n2_, 2, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{n1, n2, 0, n4}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{n1, n2, 1, n4}, {a1 - 1, a2}, {b1, b2 + 1}], 
      G[{n1_, n2_, n3_, 2}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{n1, n2, n3, 0}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{n1, n2, n3, 1}, {a1, a2 - 1}, {b1, b2 + 1}], 
      R1[{2, n4_}, {a_}, {b1_, b2_}] :> -R1[{0, n4}, {a}, {b1, b2}] - 
        (2*nu + 1)*R1[{1, n4}, {a - 1}, {b1, b2 + 1}], 
      R1[{n3_, 2}, {a_}, {b1_, b2_}] :> -R1[{n3, 0}, {a}, {b1, b2}] - 
        (2*nu + 1)*R1[{n3, 1}, {a - 1}, {b1, b2 + 1}]}
 
symmetry[expr_] := expr /. {R2[{n1_, n2_}, {a_}, {b1_, b2_}] :> 
        R1[{n1, n2}, {a}, {b1, b2}]} /. 
     {G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> If[a1 > a2, 
             G[{n2, n1, n4, n3}, {a2, a1}, {b1, b2}], G[{n1, n2, n3, n4}, 
              {a1, a2}, {b1, b2}]] /. G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, 
             {b1_, b2_}] :> If[b1 > b2, G[{n3, n4, n1, n2}, {a1, a2}, 
              {b2, b1}], G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
          G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
           If[a1 == a2 && n1 > n2, G[{n2, n1, n4, n3}, {a2, a1}, {b1, b2}], 
            G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
         G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
          If[a1 == a2 && n1 == n2 && n3 > n4, G[{n2, n1, n4, n3}, {a2, a1}, 
            {b1, b2}], G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
        G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
         If[b1 == b2 && n1 > n3, G[{n3, n4, n1, n2}, {a1, a2}, {b2, b1}], 
          G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
       G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
        If[b1 == b2 && n1 == n3 && n2 > n4, G[{n3, n4, n1, n2}, {a1, a2}, 
          {b2, b1}], G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]], 
      R1[{n3_, n4_}, {a_}, {b1_, b2_}] :> If[n3 > n4, R1[{n4, n3}, {a}, 
         {b1, b2}], R1[{n3, n4}, {a}, {b1, b2}]]}
 
dk0[expr_] := D[expr, k0] + (Expand[expr] /. (a_.)*(r:G[__] | R1[__]) :> 
       a*dk0Term[r])
 
dk0Term[expr_] := expr /. {G[c1_, c2_, c3_] :> G[c1, c2 + {1, 0}, c3] + 
        G[c1, c2 + {0, 1}, c3], R1[c1_, c2_, c3_] :> listcal[R1[c1, c2, c3], 
        2, 1, 1]}
 
dks[expr_] := D[expr, ks] + (Expand[expr] /. (a_.)*(r:G[__] | R1[__]) :> 
       a*dksTerm[r])
 
dksTerm[expr_] := expr /. {g:G[c1_, c2_, c3_] :> 
       Module[{b2, term1, term2, term3}, b2 = b20 + g[[3,2]]; 
         term1 = (-b2/(2*ks))*(ks^2*listcal[g, 3, 2, 2] + g - 
            listcal[listcal[g, 3, 1, -2], 3, 2, 2]); 
         term2 = (1/(2*ks))*(ks^2*listcal[listcal[listcal[g, 1, 3, 1], 2, 1, 
               1], 3, 2, 1] + listcal[listcal[listcal[g, 1, 3, 1], 2, 1, 1], 
             3, 2, -1] - listcal[listcal[listcal[listcal[g, 1, 3, 1], 2, 1, 
               1], 3, 1, -2], 3, 2, 1]); term3 = (1/(2*ks))*
           (ks^2*listcal[listcal[listcal[g, 1, 4, 1], 2, 2, 1], 3, 2, 1] + 
            listcal[listcal[listcal[g, 1, 4, 1], 2, 2, 1], 3, 2, -1] - 
            listcal[listcal[listcal[listcal[g, 1, 4, 1], 2, 2, 1], 3, 1, -2], 
             3, 2, 1]); term1 + term2 + term3], r:R1[c1_, c2_, c3_] :> 
       Module[{b2, term1, term2, term3}, b2 = b20 + r[[3,2]]; 
         term1 = (-b2/(2*ks))*(ks^2*listcal[r, 3, 2, 2] + r - 
            listcal[listcal[r, 3, 1, -2], 3, 2, 2]); 
         term2 = (1/(2*ks))*(ks^2*listcal[listcal[listcal[r, 1, 1, 1], 2, 1, 
               1], 3, 2, 1] + listcal[listcal[listcal[r, 1, 1, 1], 2, 1, 1], 
             3, 2, -1] - listcal[listcal[listcal[listcal[r, 1, 1, 1], 2, 1, 
               1], 3, 1, -2], 3, 2, 1]); term3 = (1/(2*ks))*
           (ks^2*listcal[listcal[listcal[r, 1, 2, 1], 2, 1, 1], 3, 2, 1] + 
            listcal[listcal[listcal[r, 1, 2, 1], 2, 1, 1], 3, 2, -1] - 
            listcal[listcal[listcal[listcal[r, 1, 2, 1], 2, 1, 1], 3, 1, -2], 
             3, 2, 1]); term1 + term2 + term3]}
listcal[expr_, i_, j_, n_] := ReplacePart[expr, {i, j} -> expr[[i,j]] + n]
 
repvar = {P1 -> (-I)*k0, P2 -> (-I)*k0, P0R1 -> (-2*I)*k0, a10 -> a0, 
     a20 -> a0, b10 -> b0, b20 -> b0}
 
reppara2N = {a0 -> 2*nu, b0 -> -2*nu, D -> 3 - 2*ep, ks -> 1}
 
repNumericTestKira = {nu -> 3/7, ep -> 1/13, k0 -> 5/23}
 
id[expr_] := expr /. {G[{2, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{0, n2, n3, n4}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{1, n2, n3, n4}, {a1 - 1, a2}, {b1 + 1, b2}], 
      G[{n1_, 2, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{n1, 0, n3, n4}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{n1, 1, n3, n4}, {a1, a2 - 1}, {b1 + 1, b2}], 
      G[{n1_, n2_, 2, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{n1, n2, 0, n4}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{n1, n2, 1, n4}, {a1 - 1, a2}, {b1, b2 + 1}], 
      G[{n1_, n2_, n3_, 2}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{n1, n2, n3, 0}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{n1, n2, n3, 1}, {a1, a2 - 1}, {b1, b2 + 1}], 
      R1[{2, n4_}, {a_}, {b1_, b2_}] :> -R1[{0, n4}, {a}, {b1, b2}] - 
        (2*nu + 1)*R1[{1, n4}, {a - 1}, {b1, b2 + 1}], 
      R1[{n3_, 2}, {a_}, {b1_, b2_}] :> -R1[{n3, 0}, {a}, {b1, b2}] - 
        (2*nu + 1)*R1[{n3, 1}, {a - 1}, {b1, b2 + 1}]}
 
symmetry[expr_] := Module[{test}, 
     test = expr /. {R2[{n1_, n2_}, {a_}, {b1_, b2_}] :> R1[{n1, n2}, {a}, 
           {b1, b2}]}; test = 
       test /. G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
              If[a1 > a2, G[{n2, n1, n4, n3}, {a2, a1}, {b1, b2}], G[
                {n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
            G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
             If[b1 > b2, G[{n3, n4, n1, n2}, {a1, a2}, {b2, b1}], 
              G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
           G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
            If[a1 == a2 && n1 > n2, G[{n2, n1, n4, n3}, {a2, a1}, {b1, b2}], 
             G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
          G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
           If[a1 == a2 && n1 == n2 && n3 > n4, G[{n2, n1, n4, n3}, {a2, a1}, 
             {b1, b2}], G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
         G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
          If[b1 == b2 && n1 > n3, G[{n3, n4, n1, n2}, {a1, a2}, {b2, b1}], 
           G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
        G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
         If[b1 == b2 && n1 == n3 && n2 > n4, G[{n3, n4, n1, n2}, {a1, a2}, 
           {b2, b1}], G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]]; 
      test = test /. R1[{n3_, n4_}, {a_}, {b1_, b2_}] :> 
         If[n3 > n4, R1[{n4, n3}, {a}, {b1, b2}], R1[{n3, n4}, {a}, 
           {b1, b2}]]; Return[test]; ]
 
dk0[expr_] := D[expr, k0] + (Expand[expr] /. (a_.)*(r:G[__] | R1[__]) :> 
       a*dk0Term[r])
 
dk0Term[expr_] := expr /. {G[c1_, c2_, c3_] :> G[c1, c2 + {1, 0}, c3] + 
        G[c1, c2 + {0, 1}, c3], R1[c1_, c2_, c3_] :> listcal[R1[c1, c2, c3], 
        2, 1, 1]}
 
dks[expr_] := D[expr, ks] + (Expand[expr] /. (a_.)*(r:G[__] | R1[__]) :> 
       a*dksTerm[r])
 
dksTerm[expr_] := expr /. {g:G[c1_, c2_, c3_] :> 
       Module[{b2, term1, term2, term3}, b2 = b20 + g[[3,2]]; 
         term1 = (-b2/(2*ks))*(ks^2*listcal[g, 3, 2, 2] + g - 
            listcal[listcal[g, 3, 1, -2], 3, 2, 2]); 
         term2 = (1/(2*ks))*(ks^2*listcal[listcal[listcal[g, 1, 3, 1], 2, 1, 
               1], 3, 2, 1] + listcal[listcal[listcal[g, 1, 3, 1], 2, 1, 1], 
             3, 2, -1] - listcal[listcal[listcal[listcal[g, 1, 3, 1], 2, 1, 
               1], 3, 1, -2], 3, 2, 1]); term3 = (1/(2*ks))*
           (ks^2*listcal[listcal[listcal[g, 1, 4, 1], 2, 2, 1], 3, 2, 1] + 
            listcal[listcal[listcal[g, 1, 4, 1], 2, 2, 1], 3, 2, -1] - 
            listcal[listcal[listcal[listcal[g, 1, 4, 1], 2, 2, 1], 3, 1, -2], 
             3, 2, 1]); term1 + term2 + term3], r:R1[c1_, c2_, c3_] :> 
       Module[{b2, term1, term2, term3}, b2 = b20 + r[[3,2]]; 
         term1 = (-b2/(2*ks))*(ks^2*listcal[r, 3, 2, 2] + r - 
            listcal[listcal[r, 3, 1, -2], 3, 2, 2]); 
         term2 = (1/(2*ks))*(ks^2*listcal[listcal[listcal[r, 1, 1, 1], 2, 1, 
               1], 3, 2, 1] + listcal[listcal[listcal[r, 1, 1, 1], 2, 1, 1], 
             3, 2, -1] - listcal[listcal[listcal[listcal[r, 1, 1, 1], 2, 1, 
               1], 3, 1, -2], 3, 2, 1]); term3 = (1/(2*ks))*
           (ks^2*listcal[listcal[listcal[r, 1, 2, 1], 2, 1, 1], 3, 2, 1] + 
            listcal[listcal[listcal[r, 1, 2, 1], 2, 1, 1], 3, 2, -1] - 
            listcal[listcal[listcal[listcal[r, 1, 2, 1], 2, 1, 1], 3, 1, -2], 
             3, 2, 1]); term1 + term2 + term3]}
listcal[expr_, i_, j_, n_] := ReplacePart[expr, {i, j} -> expr[[i,j]] + n]
 
repvar = {P1 -> (-I)*k0, P2 -> (-I)*k0, P0R1 -> (-2*I)*k0, a10 -> a0, 
     a20 -> a0, b10 -> b0, b20 -> b0}
 
reppara2N = {a0 -> 2*nu, b0 -> -2*nu, D -> 3 - 2*ep, ks -> 1}
 
repNumericTestKira = {nu -> 3/7, k0 -> 5/23}
 
id[expr_] := expr /. {G[{2, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{0, n2, n3, n4}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{1, n2, n3, n4}, {a1 - 1, a2}, {b1 + 1, b2}], 
      G[{n1_, 2, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{n1, 0, n3, n4}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{n1, 1, n3, n4}, {a1, a2 - 1}, {b1 + 1, b2}], 
      G[{n1_, n2_, 2, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{n1, n2, 0, n4}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{n1, n2, 1, n4}, {a1 - 1, a2}, {b1, b2 + 1}], 
      G[{n1_, n2_, n3_, 2}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{n1, n2, n3, 0}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{n1, n2, n3, 1}, {a1, a2 - 1}, {b1, b2 + 1}], 
      R1[{2, n4_}, {a_}, {b1_, b2_}] :> -R1[{0, n4}, {a}, {b1, b2}] - 
        (2*nu + 1)*R1[{1, n4}, {a - 1}, {b1, b2 + 1}], 
      R1[{n3_, 2}, {a_}, {b1_, b2_}] :> -R1[{n3, 0}, {a}, {b1, b2}] - 
        (2*nu + 1)*R1[{n3, 1}, {a - 1}, {b1, b2 + 1}]}
 
symmetry[expr_] := Module[{test}, 
     test = expr /. {R2[{n1_, n2_}, {a_}, {b1_, b2_}] :> R1[{n1, n2}, {a}, 
           {b1, b2}]}; test = 
       test /. G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
              If[a1 > a2, G[{n2, n1, n4, n3}, {a2, a1}, {b1, b2}], G[
                {n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
            G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
             If[b1 > b2, G[{n3, n4, n1, n2}, {a1, a2}, {b2, b1}], 
              G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
           G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
            If[a1 == a2 && n1 > n2, G[{n2, n1, n4, n3}, {a2, a1}, {b1, b2}], 
             G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
          G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
           If[a1 == a2 && n1 == n2 && n3 > n4, G[{n2, n1, n4, n3}, {a2, a1}, 
             {b1, b2}], G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
         G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
          If[b1 == b2 && n1 > n3, G[{n3, n4, n1, n2}, {a1, a2}, {b2, b1}], 
           G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
        G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
         If[b1 == b2 && n1 == n3 && n2 > n4, G[{n3, n4, n1, n2}, {a1, a2}, 
           {b2, b1}], G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]]; 
      test = test /. R1[{n3_, n4_}, {a_}, {b1_, b2_}] :> 
         If[n3 > n4, R1[{n4, n3}, {a}, {b1, b2}], R1[{n3, n4}, {a}, 
           {b1, b2}]]; Return[test]; ]
 
dk0[expr_] := D[expr, k0] + (Expand[expr] /. (a_.)*(r:G[__] | R1[__]) :> 
       a*dk0Term[r])
 
dk0Term[expr_] := expr /. {G[c1_, c2_, c3_] :> G[c1, c2 + {1, 0}, c3] + 
        G[c1, c2 + {0, 1}, c3], R1[c1_, c2_, c3_] :> listcal[R1[c1, c2, c3], 
        2, 1, 1]}
 
dks[expr_] := D[expr, ks] + (Expand[expr] /. (a_.)*(r:G[__] | R1[__]) :> 
       a*dksTerm[r])
 
dksTerm[expr_] := expr /. {g:G[c1_, c2_, c3_] :> 
       Module[{b2, term1, term2, term3}, b2 = b20 + g[[3,2]]; 
         term1 = (-b2/(2*ks))*(ks^2*listcal[g, 3, 2, 2] + g - 
            listcal[listcal[g, 3, 1, -2], 3, 2, 2]); 
         term2 = (1/(2*ks))*(ks^2*listcal[listcal[listcal[g, 1, 3, 1], 2, 1, 
               1], 3, 2, 1] + listcal[listcal[listcal[g, 1, 3, 1], 2, 1, 1], 
             3, 2, -1] - listcal[listcal[listcal[listcal[g, 1, 3, 1], 2, 1, 
               1], 3, 1, -2], 3, 2, 1]); term3 = (1/(2*ks))*
           (ks^2*listcal[listcal[listcal[g, 1, 4, 1], 2, 2, 1], 3, 2, 1] + 
            listcal[listcal[listcal[g, 1, 4, 1], 2, 2, 1], 3, 2, -1] - 
            listcal[listcal[listcal[listcal[g, 1, 4, 1], 2, 2, 1], 3, 1, -2], 
             3, 2, 1]); term1 + term2 + term3], r:R1[c1_, c2_, c3_] :> 
       Module[{b2, term1, term2, term3}, b2 = b20 + r[[3,2]]; 
         term1 = (-b2/(2*ks))*(ks^2*listcal[r, 3, 2, 2] + r - 
            listcal[listcal[r, 3, 1, -2], 3, 2, 2]); 
         term2 = (1/(2*ks))*(ks^2*listcal[listcal[listcal[r, 1, 1, 1], 2, 1, 
               1], 3, 2, 1] + listcal[listcal[listcal[r, 1, 1, 1], 2, 1, 1], 
             3, 2, -1] - listcal[listcal[listcal[listcal[r, 1, 1, 1], 2, 1, 
               1], 3, 1, -2], 3, 2, 1]); term3 = (1/(2*ks))*
           (ks^2*listcal[listcal[listcal[r, 1, 2, 1], 2, 1, 1], 3, 2, 1] + 
            listcal[listcal[listcal[r, 1, 2, 1], 2, 1, 1], 3, 2, -1] - 
            listcal[listcal[listcal[listcal[r, 1, 2, 1], 2, 1, 1], 3, 1, -2], 
             3, 2, 1]); term1 + term2 + term3]}
listcal[expr_, i_, j_, n_] := ReplacePart[expr, {i, j} -> expr[[i,j]] + n]
 
repvar = {P1 -> (-I)*k0, P2 -> (-I)*k0, P0R1 -> (-2*I)*k0, a10 -> a0, 
     a20 -> a0, b10 -> b0, b20 -> b0}
 
reppara2N = {a0 -> 2*nu, b0 -> -2*nu, D -> 3 - 2*ep, ks -> 1}
 
repNumericTestKira = {nu -> 3/7, k0 -> 5/23}
 
id[expr_] := expr /. {G[{2, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{0, n2, n3, n4}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{1, n2, n3, n4}, {a1 - 1, a2}, {b1 + 1, b2}], 
      G[{n1_, 2, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{n1, 0, n3, n4}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{n1, 1, n3, n4}, {a1, a2 - 1}, {b1 + 1, b2}], 
      G[{n1_, n2_, 2, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{n1, n2, 0, n4}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{n1, n2, 1, n4}, {a1 - 1, a2}, {b1, b2 + 1}], 
      G[{n1_, n2_, n3_, 2}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{n1, n2, n3, 0}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{n1, n2, n3, 1}, {a1, a2 - 1}, {b1, b2 + 1}], 
      R1[{2, n4_}, {a_}, {b1_, b2_}] :> -R1[{0, n4}, {a}, {b1, b2}] - 
        (2*nu + 1)*R1[{1, n4}, {a - 1}, {b1, b2 + 1}], 
      R1[{n3_, 2}, {a_}, {b1_, b2_}] :> -R1[{n3, 0}, {a}, {b1, b2}] - 
        (2*nu + 1)*R1[{n3, 1}, {a - 1}, {b1, b2 + 1}]}
 
symmetry[expr_] := Module[{test}, 
     test = expr /. {R2[{n1_, n2_}, {a_}, {b1_, b2_}] :> R1[{n1, n2}, {a}, 
           {b1, b2}]}; test = 
       test /. G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
              If[a1 > a2, G[{n2, n1, n4, n3}, {a2, a1}, {b1, b2}], G[
                {n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
            G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
             If[b1 > b2, G[{n3, n4, n1, n2}, {a1, a2}, {b2, b1}], 
              G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
           G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
            If[a1 == a2 && n1 > n2, G[{n2, n1, n4, n3}, {a2, a1}, {b1, b2}], 
             G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
          G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
           If[a1 == a2 && n1 == n2 && n3 > n4, G[{n2, n1, n4, n3}, {a2, a1}, 
             {b1, b2}], G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
         G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
          If[b1 == b2 && n1 > n3, G[{n3, n4, n1, n2}, {a1, a2}, {b2, b1}], 
           G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
        G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
         If[b1 == b2 && n1 == n3 && n2 > n4, G[{n3, n4, n1, n2}, {a1, a2}, 
           {b2, b1}], G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]]; 
      test = test /. R1[{n3_, n4_}, {a_}, {b1_, b2_}] :> 
         If[n3 > n4, R1[{n4, n3}, {a}, {b1, b2}], R1[{n3, n4}, {a}, 
           {b1, b2}]]; Return[test]; ]
 
dk0[expr_] := D[expr, k0] + (Expand[expr] /. (a_.)*(r:G[__] | R1[__]) :> 
       a*dk0Term[r])
 
dk0Term[expr_] := expr /. {G[c1_, c2_, c3_] :> G[c1, c2 + {1, 0}, c3] + 
        G[c1, c2 + {0, 1}, c3], R1[c1_, c2_, c3_] :> listcal[R1[c1, c2, c3], 
        2, 1, 1]}
 
dks[expr_] := D[expr, ks] + (Expand[expr] /. (a_.)*(r:G[__] | R1[__]) :> 
       a*dksTerm[r])
 
dksTerm[expr_] := expr /. {g:G[c1_, c2_, c3_] :> 
       Module[{b2, term1, term2, term3}, b2 = b20 + g[[3,2]]; 
         term1 = (-b2/(2*ks))*(ks^2*listcal[g, 3, 2, 2] + g - 
            listcal[listcal[g, 3, 1, -2], 3, 2, 2]); 
         term2 = (1/(2*ks))*(ks^2*listcal[listcal[listcal[g, 1, 3, 1], 2, 1, 
               1], 3, 2, 1] + listcal[listcal[listcal[g, 1, 3, 1], 2, 1, 1], 
             3, 2, -1] - listcal[listcal[listcal[listcal[g, 1, 3, 1], 2, 1, 
               1], 3, 1, -2], 3, 2, 1]); term3 = (1/(2*ks))*
           (ks^2*listcal[listcal[listcal[g, 1, 4, 1], 2, 2, 1], 3, 2, 1] + 
            listcal[listcal[listcal[g, 1, 4, 1], 2, 2, 1], 3, 2, -1] - 
            listcal[listcal[listcal[listcal[g, 1, 4, 1], 2, 2, 1], 3, 1, -2], 
             3, 2, 1]); term1 + term2 + term3], r:R1[c1_, c2_, c3_] :> 
       Module[{b2, term1, term2, term3}, b2 = b20 + r[[3,2]]; 
         term1 = (-b2/(2*ks))*(ks^2*listcal[r, 3, 2, 2] + r - 
            listcal[listcal[r, 3, 1, -2], 3, 2, 2]); 
         term2 = (1/(2*ks))*(ks^2*listcal[listcal[listcal[r, 1, 1, 1], 2, 1, 
               1], 3, 2, 1] + listcal[listcal[listcal[r, 1, 1, 1], 2, 1, 1], 
             3, 2, -1] - listcal[listcal[listcal[listcal[r, 1, 1, 1], 2, 1, 
               1], 3, 1, -2], 3, 2, 1]); term3 = (1/(2*ks))*
           (ks^2*listcal[listcal[listcal[r, 1, 2, 1], 2, 1, 1], 3, 2, 1] + 
            listcal[listcal[listcal[r, 1, 2, 1], 2, 1, 1], 3, 2, -1] - 
            listcal[listcal[listcal[listcal[r, 1, 2, 1], 2, 1, 1], 3, 1, -2], 
             3, 2, 1]); term1 + term2 + term3]}
listcal[expr_, i_, j_, n_] := ReplacePart[expr, {i, j} -> expr[[i,j]] + n]
 
repvar = {P1 -> (-I)*k0, P2 -> (-I)*k0, P0R1 -> (-2*I)*k0, a10 -> a0, 
     a20 -> a0, b10 -> b0, b20 -> b0}
 
reppara2N = {a0 -> 2*nu, b0 -> -2*nu, D -> 3 - 2*ep, ks -> 1}
 
repNumericTestKira = {nu -> 3/7, k0 -> 5/23}
 
id[expr_] := expr /. {G[{2, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{0, n2, n3, n4}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{1, n2, n3, n4}, {a1 - 1, a2}, {b1 + 1, b2}], 
      G[{n1_, 2, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{n1, 0, n3, n4}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{n1, 1, n3, n4}, {a1, a2 - 1}, {b1 + 1, b2}], 
      G[{n1_, n2_, 2, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{n1, n2, 0, n4}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{n1, n2, 1, n4}, {a1 - 1, a2}, {b1, b2 + 1}], 
      G[{n1_, n2_, n3_, 2}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{n1, n2, n3, 0}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{n1, n2, n3, 1}, {a1, a2 - 1}, {b1, b2 + 1}], 
      R1[{2, n4_}, {a_}, {b1_, b2_}] :> -R1[{0, n4}, {a}, {b1, b2}] - 
        (2*nu + 1)*R1[{1, n4}, {a - 1}, {b1, b2 + 1}], 
      R1[{n3_, 2}, {a_}, {b1_, b2_}] :> -R1[{n3, 0}, {a}, {b1, b2}] - 
        (2*nu + 1)*R1[{n3, 1}, {a - 1}, {b1, b2 + 1}]}
 
symmetry[expr_] := Module[{test}, 
     test = expr /. {R2[{n1_, n2_}, {a_}, {b1_, b2_}] :> R1[{n1, n2}, {a}, 
           {b1, b2}]}; test = 
       test /. G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
              If[a1 > a2, G[{n2, n1, n4, n3}, {a2, a1}, {b1, b2}], G[
                {n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
            G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
             If[b1 > b2, G[{n3, n4, n1, n2}, {a1, a2}, {b2, b1}], 
              G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
           G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
            If[a1 == a2 && n1 > n2, G[{n2, n1, n4, n3}, {a2, a1}, {b1, b2}], 
             G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
          G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
           If[a1 == a2 && n1 == n2 && n3 > n4, G[{n2, n1, n4, n3}, {a2, a1}, 
             {b1, b2}], G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
         G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
          If[b1 == b2 && n1 > n3, G[{n3, n4, n1, n2}, {a1, a2}, {b2, b1}], 
           G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
        G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
         If[b1 == b2 && n1 == n3 && n2 > n4, G[{n3, n4, n1, n2}, {a1, a2}, 
           {b2, b1}], G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]]; 
      test = test /. R1[{n3_, n4_}, {a_}, {b1_, b2_}] :> 
         If[n3 > n4, R1[{n4, n3}, {a}, {b1, b2}], R1[{n3, n4}, {a}, 
           {b1, b2}]]; Return[test]; ]
 
dk0[expr_] := D[expr, k0] + (Expand[expr] /. (a_.)*(r:G[__] | R1[__]) :> 
       a*dk0Term[r])
 
dk0Term[expr_] := expr /. {G[c1_, c2_, c3_] :> G[c1, c2 + {1, 0}, c3] + 
        G[c1, c2 + {0, 1}, c3], R1[c1_, c2_, c3_] :> listcal[R1[c1, c2, c3], 
        2, 1, 1]}
 
dks[expr_] := D[expr, ks] + (Expand[expr] /. (a_.)*(r:G[__] | R1[__]) :> 
       a*dksTerm[r])
 
dksTerm[expr_] := expr /. {g:G[c1_, c2_, c3_] :> 
       Module[{b2, term1, term2, term3}, b2 = b20 + g[[3,2]]; 
         term1 = (-b2/(2*ks))*(ks^2*listcal[g, 3, 2, 2] + g - 
            listcal[listcal[g, 3, 1, -2], 3, 2, 2]); 
         term2 = (1/(2*ks))*(ks^2*listcal[listcal[listcal[g, 1, 3, 1], 2, 1, 
               1], 3, 2, 1] + listcal[listcal[listcal[g, 1, 3, 1], 2, 1, 1], 
             3, 2, -1] - listcal[listcal[listcal[listcal[g, 1, 3, 1], 2, 1, 
               1], 3, 1, -2], 3, 2, 1]); term3 = (1/(2*ks))*
           (ks^2*listcal[listcal[listcal[g, 1, 4, 1], 2, 2, 1], 3, 2, 1] + 
            listcal[listcal[listcal[g, 1, 4, 1], 2, 2, 1], 3, 2, -1] - 
            listcal[listcal[listcal[listcal[g, 1, 4, 1], 2, 2, 1], 3, 1, -2], 
             3, 2, 1]); term1 + term2 + term3], r:R1[c1_, c2_, c3_] :> 
       Module[{b2, term1, term2, term3}, b2 = b20 + r[[3,2]]; 
         term1 = (-b2/(2*ks))*(ks^2*listcal[r, 3, 2, 2] + r - 
            listcal[listcal[r, 3, 1, -2], 3, 2, 2]); 
         term2 = (1/(2*ks))*(ks^2*listcal[listcal[listcal[r, 1, 1, 1], 2, 1, 
               1], 3, 2, 1] + listcal[listcal[listcal[r, 1, 1, 1], 2, 1, 1], 
             3, 2, -1] - listcal[listcal[listcal[listcal[r, 1, 1, 1], 2, 1, 
               1], 3, 1, -2], 3, 2, 1]); term3 = (1/(2*ks))*
           (ks^2*listcal[listcal[listcal[r, 1, 2, 1], 2, 1, 1], 3, 2, 1] + 
            listcal[listcal[listcal[r, 1, 2, 1], 2, 1, 1], 3, 2, -1] - 
            listcal[listcal[listcal[listcal[r, 1, 2, 1], 2, 1, 1], 3, 1, -2], 
             3, 2, 1]); term1 + term2 + term3]}
listcal[expr_, i_, j_, n_] := ReplacePart[expr, {i, j} -> expr[[i,j]] + n]
 
repvar = {P1 -> (-I)*k0, P2 -> (-I)*k0, P0R1 -> (-2*I)*k0, a10 -> a0, 
     a20 -> a0, b10 -> b0, b20 -> b0}
 
reppara2N = {a0 -> 2*nu, b0 -> -2*nu, D -> 3 - 2*ep, ks -> 1}
 
repNumericTest = {nu -> 3/7, ep -> 1/13, k0 -> 5/3}
 
id[expr_] := expr /. {G[{2, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{0, n2, n3, n4}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{1, n2, n3, n4}, {a1 - 1, a2}, {b1 + 1, b2}], 
      G[{n1_, 2, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{n1, 0, n3, n4}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{n1, 1, n3, n4}, {a1, a2 - 1}, {b1 + 1, b2}], 
      G[{n1_, n2_, 2, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{n1, n2, 0, n4}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{n1, n2, 1, n4}, {a1 - 1, a2}, {b1, b2 + 1}], 
      G[{n1_, n2_, n3_, 2}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{n1, n2, n3, 0}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{n1, n2, n3, 1}, {a1, a2 - 1}, {b1, b2 + 1}], 
      R1[{2, n4_}, {a_}, {b1_, b2_}] :> -R1[{0, n4}, {a}, {b1, b2}] - 
        (2*nu + 1)*R1[{1, n4}, {a - 1}, {b1, b2 + 1}], 
      R1[{n3_, 2}, {a_}, {b1_, b2_}] :> -R1[{n3, 0}, {a}, {b1, b2}] - 
        (2*nu + 1)*R1[{n3, 1}, {a - 1}, {b1, b2 + 1}]}
 
symmetry[expr_] := Module[{test}, 
     test = expr /. {R2[{n1_, n2_}, {a_}, {b1_, b2_}] :> R1[{n1, n2}, {a}, 
           {b1, b2}]}; test = 
       test /. G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
              If[a1 > a2, G[{n2, n1, n4, n3}, {a2, a1}, {b1, b2}], G[
                {n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
            G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
             If[b1 > b2, G[{n3, n4, n1, n2}, {a1, a2}, {b2, b1}], 
              G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
           G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
            If[a1 == a2 && n1 > n2, G[{n2, n1, n4, n3}, {a2, a1}, {b1, b2}], 
             G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
          G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
           If[a1 == a2 && n1 == n2 && n3 > n4, G[{n2, n1, n4, n3}, {a2, a1}, 
             {b1, b2}], G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
         G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
          If[b1 == b2 && n1 > n3, G[{n3, n4, n1, n2}, {a1, a2}, {b2, b1}], 
           G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
        G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
         If[b1 == b2 && n1 == n3 && n2 > n4, G[{n3, n4, n1, n2}, {a1, a2}, 
           {b2, b1}], G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]]; 
      test = test /. R1[{n3_, n4_}, {a_}, {b1_, b2_}] :> 
         If[n3 > n4, R1[{n4, n3}, {a}, {b1, b2}], R1[{n3, n4}, {a}, 
           {b1, b2}]]; Return[test]; ]
 
dk0[expr_] := D[expr, k0] + (Expand[expr] /. (a_.)*(r:G[__] | R1[__]) :> 
       a*dk0Term[r])
 
dk0Term[expr_] := expr /. {G[c1_, c2_, c3_] :> G[c1, c2 + {1, 0}, c3] + 
        G[c1, c2 + {0, 1}, c3], R1[c1_, c2_, c3_] :> listcal[R1[c1, c2, c3], 
        2, 1, 1]}
 
dks[expr_] := D[expr, ks] + (Expand[expr] /. (a_.)*(r:G[__] | R1[__]) :> 
       a*dksTerm[r])
 
dksTerm[expr_] := expr /. {g:G[c1_, c2_, c3_] :> 
       Module[{b2, term1, term2, term3}, b2 = b20 + g[[3,2]]; 
         term1 = (-b2/(2*ks))*(ks^2*listcal[g, 3, 2, 2] + g - 
            listcal[listcal[g, 3, 1, -2], 3, 2, 2]); 
         term2 = (1/(2*ks))*(ks^2*listcal[listcal[listcal[g, 1, 3, 1], 2, 1, 
               1], 3, 2, 1] + listcal[listcal[listcal[g, 1, 3, 1], 2, 1, 1], 
             3, 2, -1] - listcal[listcal[listcal[listcal[g, 1, 3, 1], 2, 1, 
               1], 3, 1, -2], 3, 2, 1]); term3 = (1/(2*ks))*
           (ks^2*listcal[listcal[listcal[g, 1, 4, 1], 2, 2, 1], 3, 2, 1] + 
            listcal[listcal[listcal[g, 1, 4, 1], 2, 2, 1], 3, 2, -1] - 
            listcal[listcal[listcal[listcal[g, 1, 4, 1], 2, 2, 1], 3, 1, -2], 
             3, 2, 1]); term1 + term2 + term3], r:R1[c1_, c2_, c3_] :> 
       Module[{b2, term1, term2, term3}, b2 = b20 + r[[3,2]]; 
         term1 = (-b2/(2*ks))*(ks^2*listcal[r, 3, 2, 2] + r - 
            listcal[listcal[r, 3, 1, -2], 3, 2, 2]); 
         term2 = (1/(2*ks))*(ks^2*listcal[listcal[listcal[r, 1, 1, 1], 2, 1, 
               1], 3, 2, 1] + listcal[listcal[listcal[r, 1, 1, 1], 2, 1, 1], 
             3, 2, -1] - listcal[listcal[listcal[listcal[r, 1, 1, 1], 2, 1, 
               1], 3, 1, -2], 3, 2, 1]); term3 = (1/(2*ks))*
           (ks^2*listcal[listcal[listcal[r, 1, 2, 1], 2, 1, 1], 3, 2, 1] + 
            listcal[listcal[listcal[r, 1, 2, 1], 2, 1, 1], 3, 2, -1] - 
            listcal[listcal[listcal[listcal[r, 1, 2, 1], 2, 1, 1], 3, 1, -2], 
             3, 2, 1]); term1 + term2 + term3]}
listcal[expr_, i_, j_, n_] := ReplacePart[expr, {i, j} -> expr[[i,j]] + n]
 
repvar = {P1 -> (-I)*k0, P2 -> (-I)*k0, P0R1 -> (-2*I)*k0, a10 -> a0, 
     a20 -> a0, b10 -> b0, b20 -> b0}
 
reppara2N = {a0 -> 2*nu, b0 -> -2*nu, D -> 3 - 2*ep, ks -> 1}
 
repNumericTestKira = {nu -> 3/7, ep -> 1/13, k0 -> 5/23}
 
id[expr_] := expr /. {G[{2, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{0, n2, n3, n4}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{1, n2, n3, n4}, {a1 - 1, a2}, {b1 + 1, b2}], 
      G[{n1_, 2, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{n1, 0, n3, n4}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{n1, 1, n3, n4}, {a1, a2 - 1}, {b1 + 1, b2}], 
      G[{n1_, n2_, 2, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{n1, n2, 0, n4}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{n1, n2, 1, n4}, {a1 - 1, a2}, {b1, b2 + 1}], 
      G[{n1_, n2_, n3_, 2}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{n1, n2, n3, 0}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{n1, n2, n3, 1}, {a1, a2 - 1}, {b1, b2 + 1}], 
      R1[{2, n4_}, {a_}, {b1_, b2_}] :> -R1[{0, n4}, {a}, {b1, b2}] - 
        (2*nu + 1)*R1[{1, n4}, {a - 1}, {b1, b2 + 1}], 
      R1[{n3_, 2}, {a_}, {b1_, b2_}] :> -R1[{n3, 0}, {a}, {b1, b2}] - 
        (2*nu + 1)*R1[{n3, 1}, {a - 1}, {b1, b2 + 1}]}
 
symmetry[expr_] := Module[{test}, 
     test = expr /. {R2[{n1_, n2_}, {a_}, {b1_, b2_}] :> R1[{n1, n2}, {a}, 
           {b1, b2}]}; test = 
       test /. G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
              If[a1 > a2, G[{n2, n1, n4, n3}, {a2, a1}, {b1, b2}], G[
                {n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
            G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
             If[b1 > b2, G[{n3, n4, n1, n2}, {a1, a2}, {b2, b1}], 
              G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
           G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
            If[a1 == a2 && n1 > n2, G[{n2, n1, n4, n3}, {a2, a1}, {b1, b2}], 
             G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
          G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
           If[a1 == a2 && n1 == n2 && n3 > n4, G[{n2, n1, n4, n3}, {a2, a1}, 
             {b1, b2}], G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
         G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
          If[b1 == b2 && n1 > n3, G[{n3, n4, n1, n2}, {a1, a2}, {b2, b1}], 
           G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
        G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
         If[b1 == b2 && n1 == n3 && n2 > n4, G[{n3, n4, n1, n2}, {a1, a2}, 
           {b2, b1}], G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]]; 
      test = test /. R1[{n3_, n4_}, {a_}, {b1_, b2_}] :> 
         If[n3 > n4, R1[{n4, n3}, {a}, {b1, b2}], R1[{n3, n4}, {a}, 
           {b1, b2}]]; Return[test]; ]
 
dk0[expr_] := D[expr, k0] + (Expand[expr] /. (a_.)*(r:G[__] | R1[__]) :> 
       a*dk0Term[r])
 
dk0Term[expr_] := expr /. {G[c1_, c2_, c3_] :> G[c1, c2 + {1, 0}, c3] + 
        G[c1, c2 + {0, 1}, c3], R1[c1_, c2_, c3_] :> listcal[R1[c1, c2, c3], 
        2, 1, 1]}
 
dks[expr_] := D[expr, ks] + (Expand[expr] /. (a_.)*(r:G[__] | R1[__]) :> 
       a*dksTerm[r])
 
dksTerm[expr_] := expr /. {g:G[c1_, c2_, c3_] :> 
       Module[{b2, term1, term2, term3}, b2 = b20 + g[[3,2]]; 
         term1 = (-b2/(2*ks))*(ks^2*listcal[g, 3, 2, 2] + g - 
            listcal[listcal[g, 3, 1, -2], 3, 2, 2]); 
         term2 = (1/(2*ks))*(ks^2*listcal[listcal[listcal[g, 1, 3, 1], 2, 1, 
               1], 3, 2, 1] + listcal[listcal[listcal[g, 1, 3, 1], 2, 1, 1], 
             3, 2, -1] - listcal[listcal[listcal[listcal[g, 1, 3, 1], 2, 1, 
               1], 3, 1, -2], 3, 2, 1]); term3 = (1/(2*ks))*
           (ks^2*listcal[listcal[listcal[g, 1, 4, 1], 2, 2, 1], 3, 2, 1] + 
            listcal[listcal[listcal[g, 1, 4, 1], 2, 2, 1], 3, 2, -1] - 
            listcal[listcal[listcal[listcal[g, 1, 4, 1], 2, 2, 1], 3, 1, -2], 
             3, 2, 1]); term1 + term2 + term3], r:R1[c1_, c2_, c3_] :> 
       Module[{b2, term1, term2, term3}, b2 = b20 + r[[3,2]]; 
         term1 = (-b2/(2*ks))*(ks^2*listcal[r, 3, 2, 2] + r - 
            listcal[listcal[r, 3, 1, -2], 3, 2, 2]); 
         term2 = (1/(2*ks))*(ks^2*listcal[listcal[listcal[r, 1, 1, 1], 2, 1, 
               1], 3, 2, 1] + listcal[listcal[listcal[r, 1, 1, 1], 2, 1, 1], 
             3, 2, -1] - listcal[listcal[listcal[listcal[r, 1, 1, 1], 2, 1, 
               1], 3, 1, -2], 3, 2, 1]); term3 = (1/(2*ks))*
           (ks^2*listcal[listcal[listcal[r, 1, 2, 1], 2, 1, 1], 3, 2, 1] + 
            listcal[listcal[listcal[r, 1, 2, 1], 2, 1, 1], 3, 2, -1] - 
            listcal[listcal[listcal[listcal[r, 1, 2, 1], 2, 1, 1], 3, 1, -2], 
             3, 2, 1]); term1 + term2 + term3]}
listcal[expr_, i_, j_, n_] := ReplacePart[expr, {i, j} -> expr[[i,j]] + n]
 
repvar = {P1 -> (-I)*k0, P2 -> (-I)*k0, P0R1 -> (-2*I)*k0, a10 -> a0, 
     a20 -> a0, b10 -> b0, b20 -> b0}
 
reppara2N = {a0 -> 2*nu, b0 -> -2*nu, D -> 3 - 2*ep, ks -> 1}
 
repNumericTestKira = {nu -> 3/7, ep -> 1/13, k0 -> 5/23}
 
id[expr_] := expr /. {G[{2, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{0, n2, n3, n4}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{1, n2, n3, n4}, {a1 - 1, a2}, {b1 + 1, b2}], 
      G[{n1_, 2, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{n1, 0, n3, n4}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{n1, 1, n3, n4}, {a1, a2 - 1}, {b1 + 1, b2}], 
      G[{n1_, n2_, 2, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{n1, n2, 0, n4}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{n1, n2, 1, n4}, {a1 - 1, a2}, {b1, b2 + 1}], 
      G[{n1_, n2_, n3_, 2}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{n1, n2, n3, 0}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{n1, n2, n3, 1}, {a1, a2 - 1}, {b1, b2 + 1}], 
      R1[{2, n4_}, {a_}, {b1_, b2_}] :> -R1[{0, n4}, {a}, {b1, b2}] - 
        (2*nu + 1)*R1[{1, n4}, {a - 1}, {b1, b2 + 1}], 
      R1[{n3_, 2}, {a_}, {b1_, b2_}] :> -R1[{n3, 0}, {a}, {b1, b2}] - 
        (2*nu + 1)*R1[{n3, 1}, {a - 1}, {b1, b2 + 1}]}
 
symmetry[expr_] := Module[{test}, 
     test = expr /. {R2[{n1_, n2_}, {a_}, {b1_, b2_}] :> R1[{n1, n2}, {a}, 
           {b1, b2}]}; test = 
       test /. G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
              If[a1 > a2, G[{n2, n1, n4, n3}, {a2, a1}, {b1, b2}], G[
                {n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
            G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
             If[b1 > b2, G[{n3, n4, n1, n2}, {a1, a2}, {b2, b1}], 
              G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
           G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
            If[a1 == a2 && n1 > n2, G[{n2, n1, n4, n3}, {a2, a1}, {b1, b2}], 
             G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
          G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
           If[a1 == a2 && n1 == n2 && n3 > n4, G[{n2, n1, n4, n3}, {a2, a1}, 
             {b1, b2}], G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
         G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
          If[b1 == b2 && n1 > n3, G[{n3, n4, n1, n2}, {a1, a2}, {b2, b1}], 
           G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
        G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
         If[b1 == b2 && n1 == n3 && n2 > n4, G[{n3, n4, n1, n2}, {a1, a2}, 
           {b2, b1}], G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]]; 
      test = test /. R1[{n3_, n4_}, {a_}, {b1_, b2_}] :> 
         If[n3 > n4, R1[{n4, n3}, {a}, {b1, b2}], R1[{n3, n4}, {a}, 
           {b1, b2}]]; Return[test]; ]
 
dk0[expr_] := D[expr, k0] + (Expand[expr] /. (a_.)*(r:G[__] | R1[__]) :> 
       a*dk0Term[r])
 
dk0Term[expr_] := expr /. {G[c1_, c2_, c3_] :> G[c1, c2 + {1, 0}, c3] + 
        G[c1, c2 + {0, 1}, c3], R1[c1_, c2_, c3_] :> listcal[R1[c1, c2, c3], 
        2, 1, 1]}
 
dks[expr_] := D[expr, ks] + (Expand[expr] /. (a_.)*(r:G[__] | R1[__]) :> 
       a*dksTerm[r])
 
dksTerm[expr_] := expr /. {g:G[c1_, c2_, c3_] :> 
       Module[{b2, term1, term2, term3}, b2 = b20 + g[[3,2]]; 
         term1 = (-b2/(2*ks))*(ks^2*listcal[g, 3, 2, 2] + g - 
            listcal[listcal[g, 3, 1, -2], 3, 2, 2]); 
         term2 = (1/(2*ks))*(ks^2*listcal[listcal[listcal[g, 1, 3, 1], 2, 1, 
               1], 3, 2, 1] + listcal[listcal[listcal[g, 1, 3, 1], 2, 1, 1], 
             3, 2, -1] - listcal[listcal[listcal[listcal[g, 1, 3, 1], 2, 1, 
               1], 3, 1, -2], 3, 2, 1]); term3 = (1/(2*ks))*
           (ks^2*listcal[listcal[listcal[g, 1, 4, 1], 2, 2, 1], 3, 2, 1] + 
            listcal[listcal[listcal[g, 1, 4, 1], 2, 2, 1], 3, 2, -1] - 
            listcal[listcal[listcal[listcal[g, 1, 4, 1], 2, 2, 1], 3, 1, -2], 
             3, 2, 1]); term1 + term2 + term3], r:R1[c1_, c2_, c3_] :> 
       Module[{b2, term1, term2, term3}, b2 = b20 + r[[3,2]]; 
         term1 = (-b2/(2*ks))*(ks^2*listcal[r, 3, 2, 2] + r - 
            listcal[listcal[r, 3, 1, -2], 3, 2, 2]); 
         term2 = (1/(2*ks))*(ks^2*listcal[listcal[listcal[r, 1, 1, 1], 2, 1, 
               1], 3, 2, 1] + listcal[listcal[listcal[r, 1, 1, 1], 2, 1, 1], 
             3, 2, -1] - listcal[listcal[listcal[listcal[r, 1, 1, 1], 2, 1, 
               1], 3, 1, -2], 3, 2, 1]); term3 = (1/(2*ks))*
           (ks^2*listcal[listcal[listcal[r, 1, 2, 1], 2, 1, 1], 3, 2, 1] + 
            listcal[listcal[listcal[r, 1, 2, 1], 2, 1, 1], 3, 2, -1] - 
            listcal[listcal[listcal[listcal[r, 1, 2, 1], 2, 1, 1], 3, 1, -2], 
             3, 2, 1]); term1 + term2 + term3]}
listcal[expr_, i_, j_, n_] := ReplacePart[expr, {i, j} -> expr[[i,j]] + n]
 
repvar = {P1 -> (-I)*k0, P2 -> (-I)*k0, P0R1 -> (-2*I)*k0, a10 -> a0, 
     a20 -> a0, b10 -> b0, b20 -> b0}
 
reppara2N = {a0 -> 2*nu, b0 -> -2*nu, D -> 3 - 2*ep, ks -> 1}
 
repNumericTest = {nu -> 3/7, ep -> 1/13, k0 -> 5/3}
 
id[expr_] := expr /. {G[{2, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{0, n2, n3, n4}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{1, n2, n3, n4}, {a1 - 1, a2}, {b1 + 1, b2}], 
      G[{n1_, 2, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{n1, 0, n3, n4}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{n1, 1, n3, n4}, {a1, a2 - 1}, {b1 + 1, b2}], 
      G[{n1_, n2_, 2, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{n1, n2, 0, n4}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{n1, n2, 1, n4}, {a1 - 1, a2}, {b1, b2 + 1}], 
      G[{n1_, n2_, n3_, 2}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{n1, n2, n3, 0}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{n1, n2, n3, 1}, {a1, a2 - 1}, {b1, b2 + 1}], 
      R1[{2, n4_}, {a_}, {b1_, b2_}] :> -R1[{0, n4}, {a}, {b1, b2}] - 
        (2*nu + 1)*R1[{1, n4}, {a - 1}, {b1, b2 + 1}], 
      R1[{n3_, 2}, {a_}, {b1_, b2_}] :> -R1[{n3, 0}, {a}, {b1, b2}] - 
        (2*nu + 1)*R1[{n3, 1}, {a - 1}, {b1, b2 + 1}]}
 
symmetry[expr_] := Module[{test}, 
     test = expr /. {R2[{n1_, n2_}, {a_}, {b1_, b2_}] :> R1[{n1, n2}, {a}, 
           {b1, b2}]}; test = 
       test /. G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
              If[a1 > a2, G[{n2, n1, n4, n3}, {a2, a1}, {b1, b2}], G[
                {n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
            G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
             If[b1 > b2, G[{n3, n4, n1, n2}, {a1, a2}, {b2, b1}], 
              G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
           G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
            If[a1 == a2 && n1 > n2, G[{n2, n1, n4, n3}, {a2, a1}, {b1, b2}], 
             G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
          G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
           If[a1 == a2 && n1 == n2 && n3 > n4, G[{n2, n1, n4, n3}, {a2, a1}, 
             {b1, b2}], G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
         G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
          If[b1 == b2 && n1 > n3, G[{n3, n4, n1, n2}, {a1, a2}, {b2, b1}], 
           G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
        G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
         If[b1 == b2 && n1 == n3 && n2 > n4, G[{n3, n4, n1, n2}, {a1, a2}, 
           {b2, b1}], G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]]; 
      test = test /. R1[{n3_, n4_}, {a_}, {b1_, b2_}] :> 
         If[n3 > n4, R1[{n4, n3}, {a}, {b1, b2}], R1[{n3, n4}, {a}, 
           {b1, b2}]]; Return[test]; ]
 
dk0[expr_] := D[expr, k0] + (Expand[expr] /. (a_.)*(r:G[__] | R1[__]) :> 
       a*dk0Term[r])
 
dk0Term[expr_] := expr /. {G[c1_, c2_, c3_] :> G[c1, c2 + {1, 0}, c3] + 
        G[c1, c2 + {0, 1}, c3], R1[c1_, c2_, c3_] :> listcal[R1[c1, c2, c3], 
        2, 1, 1]}
 
dks[expr_] := D[expr, ks] + (Expand[expr] /. (a_.)*(r:G[__] | R1[__]) :> 
       a*dksTerm[r])
 
dksTerm[expr_] := expr /. {g:G[c1_, c2_, c3_] :> 
       Module[{b2, term1, term2, term3}, b2 = b20 + g[[3,2]]; 
         term1 = (-b2/(2*ks))*(ks^2*listcal[g, 3, 2, 2] + g - 
            listcal[listcal[g, 3, 1, -2], 3, 2, 2]); 
         term2 = (1/(2*ks))*(ks^2*listcal[listcal[listcal[g, 1, 3, 1], 2, 1, 
               1], 3, 2, 1] + listcal[listcal[listcal[g, 1, 3, 1], 2, 1, 1], 
             3, 2, -1] - listcal[listcal[listcal[listcal[g, 1, 3, 1], 2, 1, 
               1], 3, 1, -2], 3, 2, 1]); term3 = (1/(2*ks))*
           (ks^2*listcal[listcal[listcal[g, 1, 4, 1], 2, 2, 1], 3, 2, 1] + 
            listcal[listcal[listcal[g, 1, 4, 1], 2, 2, 1], 3, 2, -1] - 
            listcal[listcal[listcal[listcal[g, 1, 4, 1], 2, 2, 1], 3, 1, -2], 
             3, 2, 1]); term1 + term2 + term3], r:R1[c1_, c2_, c3_] :> 
       Module[{b2, term1, term2, term3}, b2 = b20 + r[[3,2]]; 
         term1 = (-b2/(2*ks))*(ks^2*listcal[r, 3, 2, 2] + r - 
            listcal[listcal[r, 3, 1, -2], 3, 2, 2]); 
         term2 = (1/(2*ks))*(ks^2*listcal[listcal[listcal[r, 1, 1, 1], 2, 1, 
               1], 3, 2, 1] + listcal[listcal[listcal[r, 1, 1, 1], 2, 1, 1], 
             3, 2, -1] - listcal[listcal[listcal[listcal[r, 1, 1, 1], 2, 1, 
               1], 3, 1, -2], 3, 2, 1]); term3 = (1/(2*ks))*
           (ks^2*listcal[listcal[listcal[r, 1, 2, 1], 2, 1, 1], 3, 2, 1] + 
            listcal[listcal[listcal[r, 1, 2, 1], 2, 1, 1], 3, 2, -1] - 
            listcal[listcal[listcal[listcal[r, 1, 2, 1], 2, 1, 1], 3, 1, -2], 
             3, 2, 1]); term1 + term2 + term3]}
listcal[expr_, i_, j_, n_] := ReplacePart[expr, {i, j} -> expr[[i,j]] + n]
 
repvar = {P1 -> (-I)*k0, P2 -> (-I)*k0, P0R1 -> (-2*I)*k0, a10 -> a0, 
     a20 -> a0, b10 -> b0, b20 -> b0}
 
reppara2N = {a0 -> 2*nu, b0 -> -2*nu, D -> 3 - 2*ep, ks -> 1}
 
repNumericTest = {nu -> 3/7, ep -> 1/13, k0 -> 5/3}
 
id[expr_] := expr /. {G[{2, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{0, n2, n3, n4}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{1, n2, n3, n4}, {a1 - 1, a2}, {b1 + 1, b2}], 
      G[{n1_, 2, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{n1, 0, n3, n4}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{n1, 1, n3, n4}, {a1, a2 - 1}, {b1 + 1, b2}], 
      G[{n1_, n2_, 2, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{n1, n2, 0, n4}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{n1, n2, 1, n4}, {a1 - 1, a2}, {b1, b2 + 1}], 
      G[{n1_, n2_, n3_, 2}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{n1, n2, n3, 0}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{n1, n2, n3, 1}, {a1, a2 - 1}, {b1, b2 + 1}], 
      R1[{2, n4_}, {a_}, {b1_, b2_}] :> -R1[{0, n4}, {a}, {b1, b2}] - 
        (2*nu + 1)*R1[{1, n4}, {a - 1}, {b1, b2 + 1}], 
      R1[{n3_, 2}, {a_}, {b1_, b2_}] :> -R1[{n3, 0}, {a}, {b1, b2}] - 
        (2*nu + 1)*R1[{n3, 1}, {a - 1}, {b1, b2 + 1}]}
 
symmetry[expr_] := Module[{test}, 
     test = expr /. {R2[{n1_, n2_}, {a_}, {b1_, b2_}] :> R1[{n1, n2}, {a}, 
           {b1, b2}]}; test = 
       test /. G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
              If[a1 > a2, G[{n2, n1, n4, n3}, {a2, a1}, {b1, b2}], G[
                {n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
            G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
             If[b1 > b2, G[{n3, n4, n1, n2}, {a1, a2}, {b2, b1}], 
              G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
           G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
            If[a1 == a2 && n1 > n2, G[{n2, n1, n4, n3}, {a2, a1}, {b1, b2}], 
             G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
          G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
           If[a1 == a2 && n1 == n2 && n3 > n4, G[{n2, n1, n4, n3}, {a2, a1}, 
             {b1, b2}], G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
         G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
          If[b1 == b2 && n1 > n3, G[{n3, n4, n1, n2}, {a1, a2}, {b2, b1}], 
           G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
        G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
         If[b1 == b2 && n1 == n3 && n2 > n4, G[{n3, n4, n1, n2}, {a1, a2}, 
           {b2, b1}], G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]]; 
      test = test /. R1[{n3_, n4_}, {a_}, {b1_, b2_}] :> 
         If[n3 > n4, R1[{n4, n3}, {a}, {b1, b2}], R1[{n3, n4}, {a}, 
           {b1, b2}]]; Return[test]; ]
 
dk0[expr_] := D[expr, k0] + (Expand[expr] /. (a_.)*(r:G[__] | R1[__]) :> 
       a*dk0Term[r])
 
dk0Term[expr_] := expr /. {G[c1_, c2_, c3_] :> G[c1, c2 + {1, 0}, c3] + 
        G[c1, c2 + {0, 1}, c3], R1[c1_, c2_, c3_] :> listcal[R1[c1, c2, c3], 
        2, 1, 1]}
 
dks[expr_] := D[expr, ks] + (Expand[expr] /. (a_.)*(r:G[__] | R1[__]) :> 
       a*dksTerm[r])
 
dksTerm[expr_] := expr /. {g:G[c1_, c2_, c3_] :> 
       Module[{b2, term1, term2, term3}, b2 = b20 + g[[3,2]]; 
         term1 = (-b2/(2*ks))*(ks^2*listcal[g, 3, 2, 2] + g - 
            listcal[listcal[g, 3, 1, -2], 3, 2, 2]); 
         term2 = (1/(2*ks))*(ks^2*listcal[listcal[listcal[g, 1, 3, 1], 2, 1, 
               1], 3, 2, 1] + listcal[listcal[listcal[g, 1, 3, 1], 2, 1, 1], 
             3, 2, -1] - listcal[listcal[listcal[listcal[g, 1, 3, 1], 2, 1, 
               1], 3, 1, -2], 3, 2, 1]); term3 = (1/(2*ks))*
           (ks^2*listcal[listcal[listcal[g, 1, 4, 1], 2, 2, 1], 3, 2, 1] + 
            listcal[listcal[listcal[g, 1, 4, 1], 2, 2, 1], 3, 2, -1] - 
            listcal[listcal[listcal[listcal[g, 1, 4, 1], 2, 2, 1], 3, 1, -2], 
             3, 2, 1]); term1 + term2 + term3], r:R1[c1_, c2_, c3_] :> 
       Module[{b2, term1, term2, term3}, b2 = b20 + r[[3,2]]; 
         term1 = (-b2/(2*ks))*(ks^2*listcal[r, 3, 2, 2] + r - 
            listcal[listcal[r, 3, 1, -2], 3, 2, 2]); 
         term2 = (1/(2*ks))*(ks^2*listcal[listcal[listcal[r, 1, 1, 1], 2, 1, 
               1], 3, 2, 1] + listcal[listcal[listcal[r, 1, 1, 1], 2, 1, 1], 
             3, 2, -1] - listcal[listcal[listcal[listcal[r, 1, 1, 1], 2, 1, 
               1], 3, 1, -2], 3, 2, 1]); term3 = (1/(2*ks))*
           (ks^2*listcal[listcal[listcal[r, 1, 2, 1], 2, 1, 1], 3, 2, 1] + 
            listcal[listcal[listcal[r, 1, 2, 1], 2, 1, 1], 3, 2, -1] - 
            listcal[listcal[listcal[listcal[r, 1, 2, 1], 2, 1, 1], 3, 1, -2], 
             3, 2, 1]); term1 + term2 + term3]}
listcal[expr_, i_, j_, n_] := ReplacePart[expr, {i, j} -> expr[[i,j]] + n]
 
repvar = {P1 -> (-I)*k0, P2 -> (-I)*k0, P0R1 -> (-2*I)*k0, a10 -> a0, 
     a20 -> a0, b10 -> b0, b20 -> b0}
 
reppara2N = {a0 -> 2*nu, b0 -> -2*nu, D -> 3 - 2*ep, ks -> 1}
 
repNumericTest = {nu -> 3/7, ep -> 1/13, k0 -> 5/3}
 
id[expr_] := expr /. {G[{2, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{0, n2, n3, n4}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{1, n2, n3, n4}, {a1 - 1, a2}, {b1 + 1, b2}], 
      G[{n1_, 2, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{n1, 0, n3, n4}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{n1, 1, n3, n4}, {a1, a2 - 1}, {b1 + 1, b2}], 
      G[{n1_, n2_, 2, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{n1, n2, 0, n4}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{n1, n2, 1, n4}, {a1 - 1, a2}, {b1, b2 + 1}], 
      G[{n1_, n2_, n3_, 2}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{n1, n2, n3, 0}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{n1, n2, n3, 1}, {a1, a2 - 1}, {b1, b2 + 1}], 
      R1[{2, n4_}, {a_}, {b1_, b2_}] :> -R1[{0, n4}, {a}, {b1, b2}] - 
        (2*nu + 1)*R1[{1, n4}, {a - 1}, {b1, b2 + 1}], 
      R1[{n3_, 2}, {a_}, {b1_, b2_}] :> -R1[{n3, 0}, {a}, {b1, b2}] - 
        (2*nu + 1)*R1[{n3, 1}, {a - 1}, {b1, b2 + 1}]}
 
symmetry[expr_] := Module[{test}, 
     test = expr /. {R2[{n1_, n2_}, {a_}, {b1_, b2_}] :> R1[{n1, n2}, {a}, 
           {b1, b2}]}; test = 
       test /. G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
              If[a1 > a2, G[{n2, n1, n4, n3}, {a2, a1}, {b1, b2}], G[
                {n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
            G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
             If[b1 > b2, G[{n3, n4, n1, n2}, {a1, a2}, {b2, b1}], 
              G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
           G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
            If[a1 == a2 && n1 > n2, G[{n2, n1, n4, n3}, {a2, a1}, {b1, b2}], 
             G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
          G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
           If[a1 == a2 && n1 == n2 && n3 > n4, G[{n2, n1, n4, n3}, {a2, a1}, 
             {b1, b2}], G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
         G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
          If[b1 == b2 && n1 > n3, G[{n3, n4, n1, n2}, {a1, a2}, {b2, b1}], 
           G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
        G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
         If[b1 == b2 && n1 == n3 && n2 > n4, G[{n3, n4, n1, n2}, {a1, a2}, 
           {b2, b1}], G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]]; 
      test = test /. R1[{n3_, n4_}, {a_}, {b1_, b2_}] :> 
         If[n3 > n4, R1[{n4, n3}, {a}, {b1, b2}], R1[{n3, n4}, {a}, 
           {b1, b2}]]; Return[test]; ]
 
dk0[expr_] := D[expr, k0] + (Expand[expr] /. (a_.)*(r:G[__] | R1[__]) :> 
       a*dk0Term[r])
 
dk0Term[expr_] := expr /. {G[c1_, c2_, c3_] :> G[c1, c2 + {1, 0}, c3] + 
        G[c1, c2 + {0, 1}, c3], R1[c1_, c2_, c3_] :> listcal[R1[c1, c2, c3], 
        2, 1, 1]}
 
dks[expr_] := D[expr, ks] + (Expand[expr] /. (a_.)*(r:G[__] | R1[__]) :> 
       a*dksTerm[r])
 
dksTerm[expr_] := expr /. {g:G[c1_, c2_, c3_] :> 
       Module[{b2, term1, term2, term3}, b2 = b20 + g[[3,2]]; 
         term1 = (-b2/(2*ks))*(ks^2*listcal[g, 3, 2, 2] + g - 
            listcal[listcal[g, 3, 1, -2], 3, 2, 2]); 
         term2 = (1/(2*ks))*(ks^2*listcal[listcal[listcal[g, 1, 3, 1], 2, 1, 
               1], 3, 2, 1] + listcal[listcal[listcal[g, 1, 3, 1], 2, 1, 1], 
             3, 2, -1] - listcal[listcal[listcal[listcal[g, 1, 3, 1], 2, 1, 
               1], 3, 1, -2], 3, 2, 1]); term3 = (1/(2*ks))*
           (ks^2*listcal[listcal[listcal[g, 1, 4, 1], 2, 2, 1], 3, 2, 1] + 
            listcal[listcal[listcal[g, 1, 4, 1], 2, 2, 1], 3, 2, -1] - 
            listcal[listcal[listcal[listcal[g, 1, 4, 1], 2, 2, 1], 3, 1, -2], 
             3, 2, 1]); term1 + term2 + term3], r:R1[c1_, c2_, c3_] :> 
       Module[{b2, term1, term2, term3}, b2 = b20 + r[[3,2]]; 
         term1 = (-b2/(2*ks))*(ks^2*listcal[r, 3, 2, 2] + r - 
            listcal[listcal[r, 3, 1, -2], 3, 2, 2]); 
         term2 = (1/(2*ks))*(ks^2*listcal[listcal[listcal[r, 1, 1, 1], 2, 1, 
               1], 3, 2, 1] + listcal[listcal[listcal[r, 1, 1, 1], 2, 1, 1], 
             3, 2, -1] - listcal[listcal[listcal[listcal[r, 1, 1, 1], 2, 1, 
               1], 3, 1, -2], 3, 2, 1]); term3 = (1/(2*ks))*
           (ks^2*listcal[listcal[listcal[r, 1, 2, 1], 2, 1, 1], 3, 2, 1] + 
            listcal[listcal[listcal[r, 1, 2, 1], 2, 1, 1], 3, 2, -1] - 
            listcal[listcal[listcal[listcal[r, 1, 2, 1], 2, 1, 1], 3, 1, -2], 
             3, 2, 1]); term1 + term2 + term3]}
listcal[expr_, i_, j_, n_] := ReplacePart[expr, {i, j} -> expr[[i,j]] + n]
 
repvar = {P1 -> (-I)*k0, P2 -> (-I)*k0, P0R1 -> (-2*I)*k0, a10 -> a0, 
     a20 -> a0, b10 -> b0, b20 -> b0}
 
reppara2N = {a0 -> 2*nu, b0 -> -2*nu, D -> 3 - 2*ep, ks -> 1}
 
repNumericTest = {nu -> 3/7, ep -> 1/13, k0 -> 5/3}
 
id[expr_] := expr /. {G[{2, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{0, n2, n3, n4}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{1, n2, n3, n4}, {a1 - 1, a2}, {b1 + 1, b2}], 
      G[{n1_, 2, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{n1, 0, n3, n4}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{n1, 1, n3, n4}, {a1, a2 - 1}, {b1 + 1, b2}], 
      G[{n1_, n2_, 2, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{n1, n2, 0, n4}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{n1, n2, 1, n4}, {a1 - 1, a2}, {b1, b2 + 1}], 
      G[{n1_, n2_, n3_, 2}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{n1, n2, n3, 0}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{n1, n2, n3, 1}, {a1, a2 - 1}, {b1, b2 + 1}], 
      R1[{2, n4_}, {a_}, {b1_, b2_}] :> -R1[{0, n4}, {a}, {b1, b2}] - 
        (2*nu + 1)*R1[{1, n4}, {a - 1}, {b1, b2 + 1}], 
      R1[{n3_, 2}, {a_}, {b1_, b2_}] :> -R1[{n3, 0}, {a}, {b1, b2}] - 
        (2*nu + 1)*R1[{n3, 1}, {a - 1}, {b1, b2 + 1}]}
 
symmetry[expr_] := Module[{test}, 
     test = expr /. {R2[{n1_, n2_}, {a_}, {b1_, b2_}] :> R1[{n1, n2}, {a}, 
           {b1, b2}]}; test = 
       test /. G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
              If[a1 > a2, G[{n2, n1, n4, n3}, {a2, a1}, {b1, b2}], G[
                {n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
            G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
             If[b1 > b2, G[{n3, n4, n1, n2}, {a1, a2}, {b2, b1}], 
              G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
           G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
            If[a1 == a2 && n1 > n2, G[{n2, n1, n4, n3}, {a2, a1}, {b1, b2}], 
             G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
          G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
           If[a1 == a2 && n1 == n2 && n3 > n4, G[{n2, n1, n4, n3}, {a2, a1}, 
             {b1, b2}], G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
         G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
          If[b1 == b2 && n1 > n3, G[{n3, n4, n1, n2}, {a1, a2}, {b2, b1}], 
           G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
        G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
         If[b1 == b2 && n1 == n3 && n2 > n4, G[{n3, n4, n1, n2}, {a1, a2}, 
           {b2, b1}], G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]]; 
      test = test /. R1[{n3_, n4_}, {a_}, {b1_, b2_}] :> 
         If[n3 > n4, R1[{n4, n3}, {a}, {b1, b2}], R1[{n3, n4}, {a}, 
           {b1, b2}]]; Return[test]; ]
 
dk0[expr_] := D[expr, k0] + (Expand[expr] /. (a_.)*(r:G[__] | R1[__]) :> 
       a*dk0Term[r])
 
dk0Term[expr_] := expr /. {G[c1_, c2_, c3_] :> G[c1, c2 + {1, 0}, c3] + 
        G[c1, c2 + {0, 1}, c3], R1[c1_, c2_, c3_] :> listcal[R1[c1, c2, c3], 
        2, 1, 1]}
 
dks[expr_] := D[expr, ks] + (Expand[expr] /. (a_.)*(r:G[__] | R1[__]) :> 
       a*dksTerm[r])
 
dksTerm[expr_] := expr /. {g:G[c1_, c2_, c3_] :> 
       Module[{b2, term1, term2, term3}, b2 = b20 + g[[3,2]]; 
         term1 = (-b2/(2*ks))*(ks^2*listcal[g, 3, 2, 2] + g - 
            listcal[listcal[g, 3, 1, -2], 3, 2, 2]); 
         term2 = (1/(2*ks))*(ks^2*listcal[listcal[listcal[g, 1, 3, 1], 2, 1, 
               1], 3, 2, 1] + listcal[listcal[listcal[g, 1, 3, 1], 2, 1, 1], 
             3, 2, -1] - listcal[listcal[listcal[listcal[g, 1, 3, 1], 2, 1, 
               1], 3, 1, -2], 3, 2, 1]); term3 = (1/(2*ks))*
           (ks^2*listcal[listcal[listcal[g, 1, 4, 1], 2, 2, 1], 3, 2, 1] + 
            listcal[listcal[listcal[g, 1, 4, 1], 2, 2, 1], 3, 2, -1] - 
            listcal[listcal[listcal[listcal[g, 1, 4, 1], 2, 2, 1], 3, 1, -2], 
             3, 2, 1]); term1 + term2 + term3], r:R1[c1_, c2_, c3_] :> 
       Module[{b2, term1, term2, term3}, b2 = b20 + r[[3,2]]; 
         term1 = (-b2/(2*ks))*(ks^2*listcal[r, 3, 2, 2] + r - 
            listcal[listcal[r, 3, 1, -2], 3, 2, 2]); 
         term2 = (1/(2*ks))*(ks^2*listcal[listcal[listcal[r, 1, 1, 1], 2, 1, 
               1], 3, 2, 1] + listcal[listcal[listcal[r, 1, 1, 1], 2, 1, 1], 
             3, 2, -1] - listcal[listcal[listcal[listcal[r, 1, 1, 1], 2, 1, 
               1], 3, 1, -2], 3, 2, 1]); term3 = (1/(2*ks))*
           (ks^2*listcal[listcal[listcal[r, 1, 2, 1], 2, 1, 1], 3, 2, 1] + 
            listcal[listcal[listcal[r, 1, 2, 1], 2, 1, 1], 3, 2, -1] - 
            listcal[listcal[listcal[listcal[r, 1, 2, 1], 2, 1, 1], 3, 1, -2], 
             3, 2, 1]); term1 + term2 + term3]}
listcal[expr_, i_, j_, n_] := ReplacePart[expr, {i, j} -> expr[[i,j]] + n]
 
repvar = {P1 -> (-I)*k0, P2 -> (-I)*k0, P0R1 -> (-2*I)*k0, a10 -> a0, 
     a20 -> a0, b10 -> b0, b20 -> b0}
 
reppara2N = {a0 -> 2*nu, b0 -> -2*nu, D -> 3 - 2*ep, ks -> 1}
 
repNumericTest = {nu -> 3/7, ep -> 1/13, k0 -> 5/3}
 
id[expr_] := expr /. {G[{2, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{0, n2, n3, n4}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{1, n2, n3, n4}, {a1 - 1, a2}, {b1 + 1, b2}], 
      G[{n1_, 2, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{n1, 0, n3, n4}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{n1, 1, n3, n4}, {a1, a2 - 1}, {b1 + 1, b2}], 
      G[{n1_, n2_, 2, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{n1, n2, 0, n4}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{n1, n2, 1, n4}, {a1 - 1, a2}, {b1, b2 + 1}], 
      G[{n1_, n2_, n3_, 2}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{n1, n2, n3, 0}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{n1, n2, n3, 1}, {a1, a2 - 1}, {b1, b2 + 1}], 
      R1[{2, n4_}, {a_}, {b1_, b2_}] :> -R1[{0, n4}, {a}, {b1, b2}] - 
        (2*nu + 1)*R1[{1, n4}, {a - 1}, {b1, b2 + 1}], 
      R1[{n3_, 2}, {a_}, {b1_, b2_}] :> -R1[{n3, 0}, {a}, {b1, b2}] - 
        (2*nu + 1)*R1[{n3, 1}, {a - 1}, {b1, b2 + 1}]}
 
symmetry[expr_] := Module[{test}, 
     test = expr /. {R2[{n1_, n2_}, {a_}, {b1_, b2_}] :> R1[{n1, n2}, {a}, 
           {b1, b2}]}; test = 
       test /. G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
              If[a1 > a2, G[{n2, n1, n4, n3}, {a2, a1}, {b1, b2}], G[
                {n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
            G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
             If[b1 > b2, G[{n3, n4, n1, n2}, {a1, a2}, {b2, b1}], 
              G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
           G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
            If[a1 == a2 && n1 > n2, G[{n2, n1, n4, n3}, {a2, a1}, {b1, b2}], 
             G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
          G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
           If[a1 == a2 && n1 == n2 && n3 > n4, G[{n2, n1, n4, n3}, {a2, a1}, 
             {b1, b2}], G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
         G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
          If[b1 == b2 && n1 > n3, G[{n3, n4, n1, n2}, {a1, a2}, {b2, b1}], 
           G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
        G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
         If[b1 == b2 && n1 == n3 && n2 > n4, G[{n3, n4, n1, n2}, {a1, a2}, 
           {b2, b1}], G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]]; 
      test = test /. R1[{n3_, n4_}, {a_}, {b1_, b2_}] :> 
         If[n3 > n4, R1[{n4, n3}, {a}, {b1, b2}], R1[{n3, n4}, {a}, 
           {b1, b2}]]; Return[test]; ]
 
dk0[expr_] := D[expr, k0] + (Expand[expr] /. (a_.)*(r:G[__] | R1[__]) :> 
       a*dk0Term[r])
 
dk0Term[expr_] := expr /. {G[c1_, c2_, c3_] :> G[c1, c2 + {1, 0}, c3] + 
        G[c1, c2 + {0, 1}, c3], R1[c1_, c2_, c3_] :> listcal[R1[c1, c2, c3], 
        2, 1, 1]}
 
dks[expr_] := D[expr, ks] + (Expand[expr] /. (a_.)*(r:G[__] | R1[__]) :> 
       a*dksTerm[r])
 
dksTerm[expr_] := expr /. {g:G[c1_, c2_, c3_] :> 
       Module[{b2, term1, term2, term3}, b2 = b20 + g[[3,2]]; 
         term1 = (-b2/(2*ks))*(ks^2*listcal[g, 3, 2, 2] + g - 
            listcal[listcal[g, 3, 1, -2], 3, 2, 2]); 
         term2 = (1/(2*ks))*(ks^2*listcal[listcal[listcal[g, 1, 3, 1], 2, 1, 
               1], 3, 2, 1] + listcal[listcal[listcal[g, 1, 3, 1], 2, 1, 1], 
             3, 2, -1] - listcal[listcal[listcal[listcal[g, 1, 3, 1], 2, 1, 
               1], 3, 1, -2], 3, 2, 1]); term3 = (1/(2*ks))*
           (ks^2*listcal[listcal[listcal[g, 1, 4, 1], 2, 2, 1], 3, 2, 1] + 
            listcal[listcal[listcal[g, 1, 4, 1], 2, 2, 1], 3, 2, -1] - 
            listcal[listcal[listcal[listcal[g, 1, 4, 1], 2, 2, 1], 3, 1, -2], 
             3, 2, 1]); term1 + term2 + term3], r:R1[c1_, c2_, c3_] :> 
       Module[{b2, term1, term2, term3}, b2 = b20 + r[[3,2]]; 
         term1 = (-b2/(2*ks))*(ks^2*listcal[r, 3, 2, 2] + r - 
            listcal[listcal[r, 3, 1, -2], 3, 2, 2]); 
         term2 = (1/(2*ks))*(ks^2*listcal[listcal[listcal[r, 1, 1, 1], 2, 1, 
               1], 3, 2, 1] + listcal[listcal[listcal[r, 1, 1, 1], 2, 1, 1], 
             3, 2, -1] - listcal[listcal[listcal[listcal[r, 1, 1, 1], 2, 1, 
               1], 3, 1, -2], 3, 2, 1]); term3 = (1/(2*ks))*
           (ks^2*listcal[listcal[listcal[r, 1, 2, 1], 2, 1, 1], 3, 2, 1] + 
            listcal[listcal[listcal[r, 1, 2, 1], 2, 1, 1], 3, 2, -1] - 
            listcal[listcal[listcal[listcal[r, 1, 2, 1], 2, 1, 1], 3, 1, -2], 
             3, 2, 1]); term1 + term2 + term3]}
listcal[expr_, i_, j_, n_] := ReplacePart[expr, {i, j} -> expr[[i,j]] + n]
 
repvar = {P1 -> (-I)*k0, P2 -> (-I)*k0, P0R1 -> (-2*I)*k0, a10 -> a0, 
     a20 -> a0, b10 -> b0, b20 -> b0}
 
reppara2N = {a0 -> 2*nu, b0 -> -2*nu, D -> 3 - 2*ep, ks -> 1}
 
repNumericTest = {nu -> 3/7, ep -> 1/13, k0 -> 5/3}
 
id[expr_] := expr /. {G[{2, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{0, n2, n3, n4}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{1, n2, n3, n4}, {a1 - 1, a2}, {b1 + 1, b2}], 
      G[{n1_, 2, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{n1, 0, n3, n4}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{n1, 1, n3, n4}, {a1, a2 - 1}, {b1 + 1, b2}], 
      G[{n1_, n2_, 2, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{n1, n2, 0, n4}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{n1, n2, 1, n4}, {a1 - 1, a2}, {b1, b2 + 1}], 
      G[{n1_, n2_, n3_, 2}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{n1, n2, n3, 0}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{n1, n2, n3, 1}, {a1, a2 - 1}, {b1, b2 + 1}], 
      R1[{2, n4_}, {a_}, {b1_, b2_}] :> -R1[{0, n4}, {a}, {b1, b2}] - 
        (2*nu + 1)*R1[{1, n4}, {a - 1}, {b1, b2 + 1}], 
      R1[{n3_, 2}, {a_}, {b1_, b2_}] :> -R1[{n3, 0}, {a}, {b1, b2}] - 
        (2*nu + 1)*R1[{n3, 1}, {a - 1}, {b1, b2 + 1}]}
 
symmetry[expr_] := Module[{test}, 
     test = expr /. {R2[{n1_, n2_}, {a_}, {b1_, b2_}] :> R1[{n1, n2}, {a}, 
           {b1, b2}]}; test = 
       test /. G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
              If[a1 > a2, G[{n2, n1, n4, n3}, {a2, a1}, {b1, b2}], G[
                {n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
            G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
             If[b1 > b2, G[{n3, n4, n1, n2}, {a1, a2}, {b2, b1}], 
              G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
           G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
            If[a1 == a2 && n1 > n2, G[{n2, n1, n4, n3}, {a2, a1}, {b1, b2}], 
             G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
          G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
           If[a1 == a2 && n1 == n2 && n3 > n4, G[{n2, n1, n4, n3}, {a2, a1}, 
             {b1, b2}], G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
         G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
          If[b1 == b2 && n1 > n3, G[{n3, n4, n1, n2}, {a1, a2}, {b2, b1}], 
           G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
        G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
         If[b1 == b2 && n1 == n3 && n2 > n4, G[{n3, n4, n1, n2}, {a1, a2}, 
           {b2, b1}], G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]]; 
      test = test /. R1[{n3_, n4_}, {a_}, {b1_, b2_}] :> 
         If[n3 > n4, R1[{n4, n3}, {a}, {b1, b2}], R1[{n3, n4}, {a}, 
           {b1, b2}]]; Return[test]; ]
 
dk0[expr_] := D[expr, k0] + (Expand[expr] /. (a_.)*(r:G[__] | R1[__]) :> 
       a*dk0Term[r])
 
dk0Term[expr_] := expr /. {G[c1_, c2_, c3_] :> G[c1, c2 + {1, 0}, c3] + 
        G[c1, c2 + {0, 1}, c3], R1[c1_, c2_, c3_] :> listcal[R1[c1, c2, c3], 
        2, 1, 1]}
 
dks[expr_] := D[expr, ks] + (Expand[expr] /. (a_.)*(r:G[__] | R1[__]) :> 
       a*dksTerm[r])
 
dksTerm[expr_] := expr /. {g:G[c1_, c2_, c3_] :> 
       Module[{b2, term1, term2, term3}, b2 = b20 + g[[3,2]]; 
         term1 = (-b2/(2*ks))*(ks^2*listcal[g, 3, 2, 2] + g - 
            listcal[listcal[g, 3, 1, -2], 3, 2, 2]); 
         term2 = (1/(2*ks))*(ks^2*listcal[listcal[listcal[g, 1, 3, 1], 2, 1, 
               1], 3, 2, 1] + listcal[listcal[listcal[g, 1, 3, 1], 2, 1, 1], 
             3, 2, -1] - listcal[listcal[listcal[listcal[g, 1, 3, 1], 2, 1, 
               1], 3, 1, -2], 3, 2, 1]); term3 = (1/(2*ks))*
           (ks^2*listcal[listcal[listcal[g, 1, 4, 1], 2, 2, 1], 3, 2, 1] + 
            listcal[listcal[listcal[g, 1, 4, 1], 2, 2, 1], 3, 2, -1] - 
            listcal[listcal[listcal[listcal[g, 1, 4, 1], 2, 2, 1], 3, 1, -2], 
             3, 2, 1]); term1 + term2 + term3], r:R1[c1_, c2_, c3_] :> 
       Module[{b2, term1, term2, term3}, b2 = b20 + r[[3,2]]; 
         term1 = (-b2/(2*ks))*(ks^2*listcal[r, 3, 2, 2] + r - 
            listcal[listcal[r, 3, 1, -2], 3, 2, 2]); 
         term2 = (1/(2*ks))*(ks^2*listcal[listcal[listcal[r, 1, 1, 1], 2, 1, 
               1], 3, 2, 1] + listcal[listcal[listcal[r, 1, 1, 1], 2, 1, 1], 
             3, 2, -1] - listcal[listcal[listcal[listcal[r, 1, 1, 1], 2, 1, 
               1], 3, 1, -2], 3, 2, 1]); term3 = (1/(2*ks))*
           (ks^2*listcal[listcal[listcal[r, 1, 2, 1], 2, 1, 1], 3, 2, 1] + 
            listcal[listcal[listcal[r, 1, 2, 1], 2, 1, 1], 3, 2, -1] - 
            listcal[listcal[listcal[listcal[r, 1, 2, 1], 2, 1, 1], 3, 1, -2], 
             3, 2, 1]); term1 + term2 + term3]}
listcal[expr_, i_, j_, n_] := ReplacePart[expr, {i, j} -> expr[[i,j]] + n]
 
repvar = {P1 -> (-I)*k0, P2 -> (-I)*k0, P0R1 -> (-2*I)*k0, a10 -> a0, 
     a20 -> a0, b10 -> b0, b20 -> b0}
 
reppara2N = {a0 -> 2*nu, b0 -> -2*nu, d -> 3 - 2*ep, ks -> 1}
 
repNumericTestKira = {nu -> 3/7, ep -> 1/13, k0 -> 5/23}
 
id[expr_] := expr /. {G[{2, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{0, n2, n3, n4}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{1, n2, n3, n4}, {a1 - 1, a2}, {b1 + 1, b2}], 
      G[{n1_, 2, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{n1, 0, n3, n4}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{n1, 1, n3, n4}, {a1, a2 - 1}, {b1 + 1, b2}], 
      G[{n1_, n2_, 2, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{n1, n2, 0, n4}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{n1, n2, 1, n4}, {a1 - 1, a2}, {b1, b2 + 1}], 
      G[{n1_, n2_, n3_, 2}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{n1, n2, n3, 0}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{n1, n2, n3, 1}, {a1, a2 - 1}, {b1, b2 + 1}], 
      R1[{2, n4_}, {a_}, {b1_, b2_}] :> -R1[{0, n4}, {a}, {b1, b2}] - 
        (2*nu + 1)*R1[{1, n4}, {a - 1}, {b1, b2 + 1}], 
      R1[{n3_, 2}, {a_}, {b1_, b2_}] :> -R1[{n3, 0}, {a}, {b1, b2}] - 
        (2*nu + 1)*R1[{n3, 1}, {a - 1}, {b1, b2 + 1}]}
 
symmetry[expr_] := Module[{test}, 
     test = expr /. {R2[{n1_, n2_}, {a_}, {b1_, b2_}] :> R1[{n1, n2}, {a}, 
           {b1, b2}]}; test = 
       test /. G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
              If[a1 > a2, G[{n2, n1, n4, n3}, {a2, a1}, {b1, b2}], G[
                {n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
            G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
             If[b1 > b2, G[{n3, n4, n1, n2}, {a1, a2}, {b2, b1}], 
              G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
           G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
            If[a1 == a2 && n1 > n2, G[{n2, n1, n4, n3}, {a2, a1}, {b1, b2}], 
             G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
          G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
           If[a1 == a2 && n1 == n2 && n3 > n4, G[{n2, n1, n4, n3}, {a2, a1}, 
             {b1, b2}], G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
         G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
          If[b1 == b2 && n1 > n3, G[{n3, n4, n1, n2}, {a1, a2}, {b2, b1}], 
           G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
        G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
         If[b1 == b2 && n1 == n3 && n2 > n4, G[{n3, n4, n1, n2}, {a1, a2}, 
           {b2, b1}], G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]]; 
      test = test /. R1[{n3_, n4_}, {a_}, {b1_, b2_}] :> 
         If[n3 > n4, R1[{n4, n3}, {a}, {b1, b2}], R1[{n3, n4}, {a}, 
           {b1, b2}]]; Return[test]; ]
 
dk0[expr_] := D[expr, k0] + (Expand[expr] /. (a_.)*(r:G[__] | R1[__]) :> 
       a*dk0Term[r])
 
dk0Term[expr_] := expr /. {G[c1_, c2_, c3_] :> G[c1, c2 + {1, 0}, c3] + 
        G[c1, c2 + {0, 1}, c3], R1[c1_, c2_, c3_] :> listcal[R1[c1, c2, c3], 
        2, 1, 1]}
 
dks[expr_] := D[expr, ks] + (Expand[expr] /. (a_.)*(r:G[__] | R1[__]) :> 
       a*dksTerm[r])
 
dksTerm[expr_] := expr /. {g:G[c1_, c2_, c3_] :> 
       Module[{b2, term1, term2, term3}, b2 = b20 + g[[3,2]]; 
         term1 = (-b2/(2*ks))*(ks^2*listcal[g, 3, 2, 2] + g - 
            listcal[listcal[g, 3, 1, -2], 3, 2, 2]); 
         term2 = (1/(2*ks))*(ks^2*listcal[listcal[listcal[g, 1, 3, 1], 2, 1, 
               1], 3, 2, 1] + listcal[listcal[listcal[g, 1, 3, 1], 2, 1, 1], 
             3, 2, -1] - listcal[listcal[listcal[listcal[g, 1, 3, 1], 2, 1, 
               1], 3, 1, -2], 3, 2, 1]); term3 = (1/(2*ks))*
           (ks^2*listcal[listcal[listcal[g, 1, 4, 1], 2, 2, 1], 3, 2, 1] + 
            listcal[listcal[listcal[g, 1, 4, 1], 2, 2, 1], 3, 2, -1] - 
            listcal[listcal[listcal[listcal[g, 1, 4, 1], 2, 2, 1], 3, 1, -2], 
             3, 2, 1]); term1 + term2 + term3], r:R1[c1_, c2_, c3_] :> 
       Module[{b2, term1, term2, term3}, b2 = b20 + r[[3,2]]; 
         term1 = (-b2/(2*ks))*(ks^2*listcal[r, 3, 2, 2] + r - 
            listcal[listcal[r, 3, 1, -2], 3, 2, 2]); 
         term2 = (1/(2*ks))*(ks^2*listcal[listcal[listcal[r, 1, 1, 1], 2, 1, 
               1], 3, 2, 1] + listcal[listcal[listcal[r, 1, 1, 1], 2, 1, 1], 
             3, 2, -1] - listcal[listcal[listcal[listcal[r, 1, 1, 1], 2, 1, 
               1], 3, 1, -2], 3, 2, 1]); term3 = (1/(2*ks))*
           (ks^2*listcal[listcal[listcal[r, 1, 2, 1], 2, 1, 1], 3, 2, 1] + 
            listcal[listcal[listcal[r, 1, 2, 1], 2, 1, 1], 3, 2, -1] - 
            listcal[listcal[listcal[listcal[r, 1, 2, 1], 2, 1, 1], 3, 1, -2], 
             3, 2, 1]); term1 + term2 + term3]}
listcal[expr_, i_, j_, n_] := ReplacePart[expr, {i, j} -> expr[[i,j]] + n]
 
repvar = {P1 -> (-I)*k0, P2 -> (-I)*k0, P0R1 -> (-2*I)*k0, a10 -> a0, 
     a20 -> a0, b10 -> b0, b20 -> b0}
 
reppara2N = {a0 -> 2*nu, b0 -> -2*nu, d -> 3 - 2*ep, ks -> 1}
 
repNumericTestKira = {nu -> 3/7, ep -> 1/13, k0 -> 5/23}
 
id[expr_] := expr /. {G[{2, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{0, n2, n3, n4}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{1, n2, n3, n4}, {a1 - 1, a2}, {b1 + 1, b2}], 
      G[{n1_, 2, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{n1, 0, n3, n4}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{n1, 1, n3, n4}, {a1, a2 - 1}, {b1 + 1, b2}], 
      G[{n1_, n2_, 2, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{n1, n2, 0, n4}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{n1, n2, 1, n4}, {a1 - 1, a2}, {b1, b2 + 1}], 
      G[{n1_, n2_, n3_, 2}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{n1, n2, n3, 0}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{n1, n2, n3, 1}, {a1, a2 - 1}, {b1, b2 + 1}], 
      R1[{2, n4_}, {a_}, {b1_, b2_}] :> -R1[{0, n4}, {a}, {b1, b2}] - 
        (2*nu + 1)*R1[{1, n4}, {a - 1}, {b1, b2 + 1}], 
      R1[{n3_, 2}, {a_}, {b1_, b2_}] :> -R1[{n3, 0}, {a}, {b1, b2}] - 
        (2*nu + 1)*R1[{n3, 1}, {a - 1}, {b1, b2 + 1}]}
 
symmetry[expr_] := Module[{test}, 
     test = expr /. {R2[{n1_, n2_}, {a_}, {b1_, b2_}] :> R1[{n1, n2}, {a}, 
           {b1, b2}]}; test = 
       test /. G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
              If[a1 > a2, G[{n2, n1, n4, n3}, {a2, a1}, {b1, b2}], G[
                {n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
            G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
             If[b1 > b2, G[{n3, n4, n1, n2}, {a1, a2}, {b2, b1}], 
              G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
           G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
            If[a1 == a2 && n1 > n2, G[{n2, n1, n4, n3}, {a2, a1}, {b1, b2}], 
             G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
          G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
           If[a1 == a2 && n1 == n2 && n3 > n4, G[{n2, n1, n4, n3}, {a2, a1}, 
             {b1, b2}], G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
         G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
          If[b1 == b2 && n1 > n3, G[{n3, n4, n1, n2}, {a1, a2}, {b2, b1}], 
           G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
        G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
         If[b1 == b2 && n1 == n3 && n2 > n4, G[{n3, n4, n1, n2}, {a1, a2}, 
           {b2, b1}], G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]]; 
      test = test /. R1[{n3_, n4_}, {a_}, {b1_, b2_}] :> 
         If[n3 > n4, R1[{n4, n3}, {a}, {b1, b2}], R1[{n3, n4}, {a}, 
           {b1, b2}]]; Return[test]; ]
 
dk0[expr_] := D[expr, k0] + (Expand[expr] /. (a_.)*(r:G[__] | R1[__]) :> 
       a*dk0Term[r])
 
dk0Term[expr_] := expr /. {G[c1_, c2_, c3_] :> G[c1, c2 + {1, 0}, c3] + 
        G[c1, c2 + {0, 1}, c3], R1[c1_, c2_, c3_] :> listcal[R1[c1, c2, c3], 
        2, 1, 1]}
 
dks[expr_] := D[expr, ks] + (Expand[expr] /. (a_.)*(r:G[__] | R1[__]) :> 
       a*dksTerm[r])
 
dksTerm[expr_] := expr /. {g:G[c1_, c2_, c3_] :> 
       Module[{b2, term1, term2, term3}, b2 = b20 + g[[3,2]]; 
         term1 = (-b2/(2*ks))*(ks^2*listcal[g, 3, 2, 2] + g - 
            listcal[listcal[g, 3, 1, -2], 3, 2, 2]); 
         term2 = (1/(2*ks))*(ks^2*listcal[listcal[listcal[g, 1, 3, 1], 2, 1, 
               1], 3, 2, 1] + listcal[listcal[listcal[g, 1, 3, 1], 2, 1, 1], 
             3, 2, -1] - listcal[listcal[listcal[listcal[g, 1, 3, 1], 2, 1, 
               1], 3, 1, -2], 3, 2, 1]); term3 = (1/(2*ks))*
           (ks^2*listcal[listcal[listcal[g, 1, 4, 1], 2, 2, 1], 3, 2, 1] + 
            listcal[listcal[listcal[g, 1, 4, 1], 2, 2, 1], 3, 2, -1] - 
            listcal[listcal[listcal[listcal[g, 1, 4, 1], 2, 2, 1], 3, 1, -2], 
             3, 2, 1]); term1 + term2 + term3], r:R1[c1_, c2_, c3_] :> 
       Module[{b2, term1, term2, term3}, b2 = b20 + r[[3,2]]; 
         term1 = (-b2/(2*ks))*(ks^2*listcal[r, 3, 2, 2] + r - 
            listcal[listcal[r, 3, 1, -2], 3, 2, 2]); 
         term2 = (1/(2*ks))*(ks^2*listcal[listcal[listcal[r, 1, 1, 1], 2, 1, 
               1], 3, 2, 1] + listcal[listcal[listcal[r, 1, 1, 1], 2, 1, 1], 
             3, 2, -1] - listcal[listcal[listcal[listcal[r, 1, 1, 1], 2, 1, 
               1], 3, 1, -2], 3, 2, 1]); term3 = (1/(2*ks))*
           (ks^2*listcal[listcal[listcal[r, 1, 2, 1], 2, 1, 1], 3, 2, 1] + 
            listcal[listcal[listcal[r, 1, 2, 1], 2, 1, 1], 3, 2, -1] - 
            listcal[listcal[listcal[listcal[r, 1, 2, 1], 2, 1, 1], 3, 1, -2], 
             3, 2, 1]); term1 + term2 + term3]}
listcal[expr_, i_, j_, n_] := ReplacePart[expr, {i, j} -> expr[[i,j]] + n]
 
repvar = {P1 -> (-I)*k0, P2 -> (-I)*k0, P0R1 -> (-2*I)*k0, a10 -> a0, 
     a20 -> a0, b10 -> b0, b20 -> b0}
 
reppara2N = {a0 -> 2*nu, b0 -> -2*nu, d -> 3 - 2*ep, ks -> 1}
 
repNumericTestKira = {nu -> 3/7, ep -> 1/13, k0 -> 5/23}
 
id[expr_] := expr /. {G[{2, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{0, n2, n3, n4}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{1, n2, n3, n4}, {a1 - 1, a2}, {b1 + 1, b2}], 
      G[{n1_, 2, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{n1, 0, n3, n4}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{n1, 1, n3, n4}, {a1, a2 - 1}, {b1 + 1, b2}], 
      G[{n1_, n2_, 2, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{n1, n2, 0, n4}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{n1, n2, 1, n4}, {a1 - 1, a2}, {b1, b2 + 1}], 
      G[{n1_, n2_, n3_, 2}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{n1, n2, n3, 0}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{n1, n2, n3, 1}, {a1, a2 - 1}, {b1, b2 + 1}], 
      R1[{2, n4_}, {a_}, {b1_, b2_}] :> -R1[{0, n4}, {a}, {b1, b2}] - 
        (2*nu + 1)*R1[{1, n4}, {a - 1}, {b1, b2 + 1}], 
      R1[{n3_, 2}, {a_}, {b1_, b2_}] :> -R1[{n3, 0}, {a}, {b1, b2}] - 
        (2*nu + 1)*R1[{n3, 1}, {a - 1}, {b1, b2 + 1}]}
 
symmetry[expr_] := Module[{test}, 
     test = expr /. {R2[{n1_, n2_}, {a_}, {b1_, b2_}] :> R1[{n1, n2}, {a}, 
           {b1, b2}]}; test = 
       test /. G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
              If[a1 > a2, G[{n2, n1, n4, n3}, {a2, a1}, {b1, b2}], G[
                {n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
            G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
             If[b1 > b2, G[{n3, n4, n1, n2}, {a1, a2}, {b2, b1}], 
              G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
           G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
            If[a1 == a2 && n1 > n2, G[{n2, n1, n4, n3}, {a2, a1}, {b1, b2}], 
             G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
          G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
           If[a1 == a2 && n1 == n2 && n3 > n4, G[{n2, n1, n4, n3}, {a2, a1}, 
             {b1, b2}], G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
         G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
          If[b1 == b2 && n1 > n3, G[{n3, n4, n1, n2}, {a1, a2}, {b2, b1}], 
           G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
        G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
         If[b1 == b2 && n1 == n3 && n2 > n4, G[{n3, n4, n1, n2}, {a1, a2}, 
           {b2, b1}], G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]]; 
      test = test /. R1[{n3_, n4_}, {a_}, {b1_, b2_}] :> 
         If[n3 > n4, R1[{n4, n3}, {a}, {b1, b2}], R1[{n3, n4}, {a}, 
           {b1, b2}]]; Return[test]; ]
 
dk0[expr_] := D[expr, k0] + (Expand[expr] /. (a_.)*(r:G[__] | R1[__]) :> 
       a*dk0Term[r])
 
dk0Term[expr_] := expr /. {G[c1_, c2_, c3_] :> G[c1, c2 + {1, 0}, c3] + 
        G[c1, c2 + {0, 1}, c3], R1[c1_, c2_, c3_] :> listcal[R1[c1, c2, c3], 
        2, 1, 1]}
 
dks[expr_] := D[expr, ks] + (Expand[expr] /. (a_.)*(r:G[__] | R1[__]) :> 
       a*dksTerm[r])
 
dksTerm[expr_] := expr /. {g:G[c1_, c2_, c3_] :> 
       Module[{b2, term1, term2, term3}, b2 = b20 + g[[3,2]]; 
         term1 = (-b2/(2*ks))*(ks^2*listcal[g, 3, 2, 2] + g - 
            listcal[listcal[g, 3, 1, -2], 3, 2, 2]); 
         term2 = (1/(2*ks))*(ks^2*listcal[listcal[listcal[g, 1, 3, 1], 2, 1, 
               1], 3, 2, 1] + listcal[listcal[listcal[g, 1, 3, 1], 2, 1, 1], 
             3, 2, -1] - listcal[listcal[listcal[listcal[g, 1, 3, 1], 2, 1, 
               1], 3, 1, -2], 3, 2, 1]); term3 = (1/(2*ks))*
           (ks^2*listcal[listcal[listcal[g, 1, 4, 1], 2, 2, 1], 3, 2, 1] + 
            listcal[listcal[listcal[g, 1, 4, 1], 2, 2, 1], 3, 2, -1] - 
            listcal[listcal[listcal[listcal[g, 1, 4, 1], 2, 2, 1], 3, 1, -2], 
             3, 2, 1]); term1 + term2 + term3], r:R1[c1_, c2_, c3_] :> 
       Module[{b2, term1, term2, term3}, b2 = b20 + r[[3,2]]; 
         term1 = (-b2/(2*ks))*(ks^2*listcal[r, 3, 2, 2] + r - 
            listcal[listcal[r, 3, 1, -2], 3, 2, 2]); 
         term2 = (1/(2*ks))*(ks^2*listcal[listcal[listcal[r, 1, 1, 1], 2, 1, 
               1], 3, 2, 1] + listcal[listcal[listcal[r, 1, 1, 1], 2, 1, 1], 
             3, 2, -1] - listcal[listcal[listcal[listcal[r, 1, 1, 1], 2, 1, 
               1], 3, 1, -2], 3, 2, 1]); term3 = (1/(2*ks))*
           (ks^2*listcal[listcal[listcal[r, 1, 2, 1], 2, 1, 1], 3, 2, 1] + 
            listcal[listcal[listcal[r, 1, 2, 1], 2, 1, 1], 3, 2, -1] - 
            listcal[listcal[listcal[listcal[r, 1, 2, 1], 2, 1, 1], 3, 1, -2], 
             3, 2, 1]); term1 + term2 + term3]}
listcal[expr_, i_, j_, n_] := ReplacePart[expr, {i, j} -> expr[[i,j]] + n]
 
repvar = {P1 -> (-I)*k0, P2 -> (-I)*k0, P0R1 -> (-2*I)*k0, a10 -> a0, 
     a20 -> a0, b10 -> b0, b20 -> b0}
 
reppara2N = {a0 -> 2*nu, b0 -> -2*nu, d -> 3 - 2*ep, ks -> 1}
 
repNumericTestKira = {nu -> 17/7, ep -> 1/13, k0 -> 5/23}
 
id[expr_] := expr /. {G[{2, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{0, n2, n3, n4}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{1, n2, n3, n4}, {a1 - 1, a2}, {b1 + 1, b2}], 
      G[{n1_, 2, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{n1, 0, n3, n4}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{n1, 1, n3, n4}, {a1, a2 - 1}, {b1 + 1, b2}], 
      G[{n1_, n2_, 2, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{n1, n2, 0, n4}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{n1, n2, 1, n4}, {a1 - 1, a2}, {b1, b2 + 1}], 
      G[{n1_, n2_, n3_, 2}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{n1, n2, n3, 0}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{n1, n2, n3, 1}, {a1, a2 - 1}, {b1, b2 + 1}], 
      R1[{2, n4_}, {a_}, {b1_, b2_}] :> -R1[{0, n4}, {a}, {b1, b2}] - 
        (2*nu + 1)*R1[{1, n4}, {a - 1}, {b1, b2 + 1}], 
      R1[{n3_, 2}, {a_}, {b1_, b2_}] :> -R1[{n3, 0}, {a}, {b1, b2}] - 
        (2*nu + 1)*R1[{n3, 1}, {a - 1}, {b1, b2 + 1}]}
 
symmetry[expr_] := Module[{test}, 
     test = expr /. {R2[{n1_, n2_}, {a_}, {b1_, b2_}] :> R1[{n1, n2}, {a}, 
           {b1, b2}]}; test = 
       test /. G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
              If[a1 > a2, G[{n2, n1, n4, n3}, {a2, a1}, {b1, b2}], G[
                {n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
            G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
             If[b1 > b2, G[{n3, n4, n1, n2}, {a1, a2}, {b2, b1}], 
              G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
           G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
            If[a1 == a2 && n1 > n2, G[{n2, n1, n4, n3}, {a2, a1}, {b1, b2}], 
             G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
          G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
           If[a1 == a2 && n1 == n2 && n3 > n4, G[{n2, n1, n4, n3}, {a2, a1}, 
             {b1, b2}], G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
         G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
          If[b1 == b2 && n1 > n3, G[{n3, n4, n1, n2}, {a1, a2}, {b2, b1}], 
           G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
        G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
         If[b1 == b2 && n1 == n3 && n2 > n4, G[{n3, n4, n1, n2}, {a1, a2}, 
           {b2, b1}], G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]]; 
      test = test /. R1[{n3_, n4_}, {a_}, {b1_, b2_}] :> 
         If[n3 > n4, R1[{n4, n3}, {a}, {b1, b2}], R1[{n3, n4}, {a}, 
           {b1, b2}]]; Return[test]; ]
 
dk0[expr_] := D[expr, k0] + (Expand[expr] /. (a_.)*(r:G[__] | R1[__]) :> 
       a*dk0Term[r])
 
dk0Term[expr_] := expr /. {G[c1_, c2_, c3_] :> G[c1, c2 + {1, 0}, c3] + 
        G[c1, c2 + {0, 1}, c3], R1[c1_, c2_, c3_] :> listcal[R1[c1, c2, c3], 
        2, 1, 1]}
 
dks[expr_] := D[expr, ks] + (Expand[expr] /. (a_.)*(r:G[__] | R1[__]) :> 
       a*dksTerm[r])
 
dksTerm[expr_] := expr /. {g:G[c1_, c2_, c3_] :> 
       Module[{b2, term1, term2, term3}, b2 = b20 + g[[3,2]]; 
         term1 = (-b2/(2*ks))*(ks^2*listcal[g, 3, 2, 2] + g - 
            listcal[listcal[g, 3, 1, -2], 3, 2, 2]); 
         term2 = (1/(2*ks))*(ks^2*listcal[listcal[listcal[g, 1, 3, 1], 2, 1, 
               1], 3, 2, 1] + listcal[listcal[listcal[g, 1, 3, 1], 2, 1, 1], 
             3, 2, -1] - listcal[listcal[listcal[listcal[g, 1, 3, 1], 2, 1, 
               1], 3, 1, -2], 3, 2, 1]); term3 = (1/(2*ks))*
           (ks^2*listcal[listcal[listcal[g, 1, 4, 1], 2, 2, 1], 3, 2, 1] + 
            listcal[listcal[listcal[g, 1, 4, 1], 2, 2, 1], 3, 2, -1] - 
            listcal[listcal[listcal[listcal[g, 1, 4, 1], 2, 2, 1], 3, 1, -2], 
             3, 2, 1]); term1 + term2 + term3], r:R1[c1_, c2_, c3_] :> 
       Module[{b2, term1, term2, term3}, b2 = b20 + r[[3,2]]; 
         term1 = (-b2/(2*ks))*(ks^2*listcal[r, 3, 2, 2] + r - 
            listcal[listcal[r, 3, 1, -2], 3, 2, 2]); 
         term2 = (1/(2*ks))*(ks^2*listcal[listcal[listcal[r, 1, 1, 1], 2, 1, 
               1], 3, 2, 1] + listcal[listcal[listcal[r, 1, 1, 1], 2, 1, 1], 
             3, 2, -1] - listcal[listcal[listcal[listcal[r, 1, 1, 1], 2, 1, 
               1], 3, 1, -2], 3, 2, 1]); term3 = (1/(2*ks))*
           (ks^2*listcal[listcal[listcal[r, 1, 2, 1], 2, 1, 1], 3, 2, 1] + 
            listcal[listcal[listcal[r, 1, 2, 1], 2, 1, 1], 3, 2, -1] - 
            listcal[listcal[listcal[listcal[r, 1, 2, 1], 2, 1, 1], 3, 1, -2], 
             3, 2, 1]); term1 + term2 + term3]}
listcal[expr_, i_, j_, n_] := ReplacePart[expr, {i, j} -> expr[[i,j]] + n]
 
repvar = {P1 -> (-I)*k0, P2 -> (-I)*k0, P0R1 -> (-2*I)*k0, a10 -> a0, 
     a20 -> a0, b10 -> b0, b20 -> b0}
 
reppara2N = {a0 -> 2*nu, b0 -> -2*nu, d -> 3 - 2*ep, ks -> 1}
 
repNumericTestKira = {nu -> 17/7, ep -> 1/13, k0 -> 5/23}
 
id[expr_] := expr /. {G[{2, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{0, n2, n3, n4}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{1, n2, n3, n4}, {a1 - 1, a2}, {b1 + 1, b2}], 
      G[{n1_, 2, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{n1, 0, n3, n4}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{n1, 1, n3, n4}, {a1, a2 - 1}, {b1 + 1, b2}], 
      G[{n1_, n2_, 2, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{n1, n2, 0, n4}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{n1, n2, 1, n4}, {a1 - 1, a2}, {b1, b2 + 1}], 
      G[{n1_, n2_, n3_, 2}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{n1, n2, n3, 0}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{n1, n2, n3, 1}, {a1, a2 - 1}, {b1, b2 + 1}], 
      R1[{2, n4_}, {a_}, {b1_, b2_}] :> -R1[{0, n4}, {a}, {b1, b2}] - 
        (2*nu + 1)*R1[{1, n4}, {a - 1}, {b1, b2 + 1}], 
      R1[{n3_, 2}, {a_}, {b1_, b2_}] :> -R1[{n3, 0}, {a}, {b1, b2}] - 
        (2*nu + 1)*R1[{n3, 1}, {a - 1}, {b1, b2 + 1}]}
 
symmetry[expr_] := Module[{test}, 
     test = expr /. {R2[{n1_, n2_}, {a_}, {b1_, b2_}] :> R1[{n1, n2}, {a}, 
           {b1, b2}]}; test = 
       test /. G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
              If[a1 > a2, G[{n2, n1, n4, n3}, {a2, a1}, {b1, b2}], G[
                {n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
            G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
             If[b1 > b2, G[{n3, n4, n1, n2}, {a1, a2}, {b2, b1}], 
              G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
           G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
            If[a1 == a2 && n1 > n2, G[{n2, n1, n4, n3}, {a2, a1}, {b1, b2}], 
             G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
          G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
           If[a1 == a2 && n1 == n2 && n3 > n4, G[{n2, n1, n4, n3}, {a2, a1}, 
             {b1, b2}], G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
         G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
          If[b1 == b2 && n1 > n3, G[{n3, n4, n1, n2}, {a1, a2}, {b2, b1}], 
           G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
        G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
         If[b1 == b2 && n1 == n3 && n2 > n4, G[{n3, n4, n1, n2}, {a1, a2}, 
           {b2, b1}], G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]]; 
      test = test /. R1[{n3_, n4_}, {a_}, {b1_, b2_}] :> 
         If[n3 > n4, R1[{n4, n3}, {a}, {b1, b2}], R1[{n3, n4}, {a}, 
           {b1, b2}]]; Return[test]; ]
 
dk0[expr_] := D[expr, k0] + (Expand[expr] /. (a_.)*(r:G[__] | R1[__]) :> 
       a*dk0Term[r])
 
dk0Term[expr_] := expr /. {G[c1_, c2_, c3_] :> G[c1, c2 + {1, 0}, c3] + 
        G[c1, c2 + {0, 1}, c3], R1[c1_, c2_, c3_] :> listcal[R1[c1, c2, c3], 
        2, 1, 1]}
 
dks[expr_] := D[expr, ks] + (Expand[expr] /. (a_.)*(r:G[__] | R1[__]) :> 
       a*dksTerm[r])
 
dksTerm[expr_] := expr /. {g:G[c1_, c2_, c3_] :> 
       Module[{b2, term1, term2, term3}, b2 = b20 + g[[3,2]]; 
         term1 = (-b2/(2*ks))*(ks^2*listcal[g, 3, 2, 2] + g - 
            listcal[listcal[g, 3, 1, -2], 3, 2, 2]); 
         term2 = (1/(2*ks))*(ks^2*listcal[listcal[listcal[g, 1, 3, 1], 2, 1, 
               1], 3, 2, 1] + listcal[listcal[listcal[g, 1, 3, 1], 2, 1, 1], 
             3, 2, -1] - listcal[listcal[listcal[listcal[g, 1, 3, 1], 2, 1, 
               1], 3, 1, -2], 3, 2, 1]); term3 = (1/(2*ks))*
           (ks^2*listcal[listcal[listcal[g, 1, 4, 1], 2, 2, 1], 3, 2, 1] + 
            listcal[listcal[listcal[g, 1, 4, 1], 2, 2, 1], 3, 2, -1] - 
            listcal[listcal[listcal[listcal[g, 1, 4, 1], 2, 2, 1], 3, 1, -2], 
             3, 2, 1]); term1 + term2 + term3], r:R1[c1_, c2_, c3_] :> 
       Module[{b2, term1, term2, term3}, b2 = b20 + r[[3,2]]; 
         term1 = (-b2/(2*ks))*(ks^2*listcal[r, 3, 2, 2] + r - 
            listcal[listcal[r, 3, 1, -2], 3, 2, 2]); 
         term2 = (1/(2*ks))*(ks^2*listcal[listcal[listcal[r, 1, 1, 1], 2, 1, 
               1], 3, 2, 1] + listcal[listcal[listcal[r, 1, 1, 1], 2, 1, 1], 
             3, 2, -1] - listcal[listcal[listcal[listcal[r, 1, 1, 1], 2, 1, 
               1], 3, 1, -2], 3, 2, 1]); term3 = (1/(2*ks))*
           (ks^2*listcal[listcal[listcal[r, 1, 2, 1], 2, 1, 1], 3, 2, 1] + 
            listcal[listcal[listcal[r, 1, 2, 1], 2, 1, 1], 3, 2, -1] - 
            listcal[listcal[listcal[listcal[r, 1, 2, 1], 2, 1, 1], 3, 1, -2], 
             3, 2, 1]); term1 + term2 + term3]}
listcal[expr_, i_, j_, n_] := ReplacePart[expr, {i, j} -> expr[[i,j]] + n]
 
repvar = {P1 -> (-I)*k0, P2 -> (-I)*k0, P0R1 -> (-2*I)*k0, a10 -> a0, 
     a20 -> a0, b10 -> b0, b20 -> b0}
 
reppara2N = {a0 -> 2*nu, b0 -> -2*nu, d -> 3 - 2*ep, ks -> 1}
 
repNumericTestKira = {nu -> 17/7, ep -> 1/13, k0 -> 5/23}
 
id[expr_] := expr /. {G[{2, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{0, n2, n3, n4}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{1, n2, n3, n4}, {a1 - 1, a2}, {b1 + 1, b2}], 
      G[{n1_, 2, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{n1, 0, n3, n4}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{n1, 1, n3, n4}, {a1, a2 - 1}, {b1 + 1, b2}], 
      G[{n1_, n2_, 2, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{n1, n2, 0, n4}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{n1, n2, 1, n4}, {a1 - 1, a2}, {b1, b2 + 1}], 
      G[{n1_, n2_, n3_, 2}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{n1, n2, n3, 0}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{n1, n2, n3, 1}, {a1, a2 - 1}, {b1, b2 + 1}], 
      R1[{2, n4_}, {a_}, {b1_, b2_}] :> -R1[{0, n4}, {a}, {b1, b2}] - 
        (2*nu + 1)*R1[{1, n4}, {a - 1}, {b1, b2 + 1}], 
      R1[{n3_, 2}, {a_}, {b1_, b2_}] :> -R1[{n3, 0}, {a}, {b1, b2}] - 
        (2*nu + 1)*R1[{n3, 1}, {a - 1}, {b1, b2 + 1}]}
 
symmetry[expr_] := Module[{test}, 
     test = expr /. {R2[{n1_, n2_}, {a_}, {b1_, b2_}] :> R1[{n1, n2}, {a}, 
           {b1, b2}]}; test = 
       test /. G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
              If[a1 > a2, G[{n2, n1, n4, n3}, {a2, a1}, {b1, b2}], G[
                {n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
            G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
             If[b1 > b2, G[{n3, n4, n1, n2}, {a1, a2}, {b2, b1}], 
              G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
           G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
            If[a1 == a2 && n1 > n2, G[{n2, n1, n4, n3}, {a2, a1}, {b1, b2}], 
             G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
          G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
           If[a1 == a2 && n1 == n2 && n3 > n4, G[{n2, n1, n4, n3}, {a2, a1}, 
             {b1, b2}], G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
         G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
          If[b1 == b2 && n1 > n3, G[{n3, n4, n1, n2}, {a1, a2}, {b2, b1}], 
           G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
        G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
         If[b1 == b2 && n1 == n3 && n2 > n4, G[{n3, n4, n1, n2}, {a1, a2}, 
           {b2, b1}], G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]]; 
      test = test /. R1[{n3_, n4_}, {a_}, {b1_, b2_}] :> 
         If[n3 > n4, R1[{n4, n3}, {a}, {b1, b2}], R1[{n3, n4}, {a}, 
           {b1, b2}]]; Return[test]; ]
 
dk0[expr_] := D[expr, k0] + (Expand[expr] /. (a_.)*(r:G[__] | R1[__]) :> 
       a*dk0Term[r])
 
dk0Term[expr_] := expr /. {G[c1_, c2_, c3_] :> G[c1, c2 + {1, 0}, c3] + 
        G[c1, c2 + {0, 1}, c3], R1[c1_, c2_, c3_] :> listcal[R1[c1, c2, c3], 
        2, 1, 1]}
 
dks[expr_] := D[expr, ks] + (Expand[expr] /. (a_.)*(r:G[__] | R1[__]) :> 
       a*dksTerm[r])
 
dksTerm[expr_] := expr /. {g:G[c1_, c2_, c3_] :> 
       Module[{b2, term1, term2, term3}, b2 = b20 + g[[3,2]]; 
         term1 = (-b2/(2*ks))*(ks^2*listcal[g, 3, 2, 2] + g - 
            listcal[listcal[g, 3, 1, -2], 3, 2, 2]); 
         term2 = (1/(2*ks))*(ks^2*listcal[listcal[listcal[g, 1, 3, 1], 2, 1, 
               1], 3, 2, 1] + listcal[listcal[listcal[g, 1, 3, 1], 2, 1, 1], 
             3, 2, -1] - listcal[listcal[listcal[listcal[g, 1, 3, 1], 2, 1, 
               1], 3, 1, -2], 3, 2, 1]); term3 = (1/(2*ks))*
           (ks^2*listcal[listcal[listcal[g, 1, 4, 1], 2, 2, 1], 3, 2, 1] + 
            listcal[listcal[listcal[g, 1, 4, 1], 2, 2, 1], 3, 2, -1] - 
            listcal[listcal[listcal[listcal[g, 1, 4, 1], 2, 2, 1], 3, 1, -2], 
             3, 2, 1]); term1 + term2 + term3], r:R1[c1_, c2_, c3_] :> 
       Module[{b2, term1, term2, term3}, b2 = b20 + r[[3,2]]; 
         term1 = (-b2/(2*ks))*(ks^2*listcal[r, 3, 2, 2] + r - 
            listcal[listcal[r, 3, 1, -2], 3, 2, 2]); 
         term2 = (1/(2*ks))*(ks^2*listcal[listcal[listcal[r, 1, 1, 1], 2, 1, 
               1], 3, 2, 1] + listcal[listcal[listcal[r, 1, 1, 1], 2, 1, 1], 
             3, 2, -1] - listcal[listcal[listcal[listcal[r, 1, 1, 1], 2, 1, 
               1], 3, 1, -2], 3, 2, 1]); term3 = (1/(2*ks))*
           (ks^2*listcal[listcal[listcal[r, 1, 2, 1], 2, 1, 1], 3, 2, 1] + 
            listcal[listcal[listcal[r, 1, 2, 1], 2, 1, 1], 3, 2, -1] - 
            listcal[listcal[listcal[listcal[r, 1, 2, 1], 2, 1, 1], 3, 1, -2], 
             3, 2, 1]); term1 + term2 + term3]}
listcal[expr_, i_, j_, n_] := ReplacePart[expr, {i, j} -> expr[[i,j]] + n]
 
repvar = {P1 -> (-I)*k0, P2 -> (-I)*k0, P0R1 -> (-2*I)*k0, a10 -> a0, 
     a20 -> a0, b10 -> b0, b20 -> b0}
 
reppara2N = {a0 -> 2*nu, b0 -> -2*nu, d -> 3 - 2*ep, ks -> 1}
 
repNumericTestKira = {nu -> 17/7, ep -> 1/13, k0 -> 5/23}
 
id[expr_] := expr /. {G[{2, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{0, n2, n3, n4}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{1, n2, n3, n4}, {a1 - 1, a2}, {b1 + 1, b2}], 
      G[{n1_, 2, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{n1, 0, n3, n4}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{n1, 1, n3, n4}, {a1, a2 - 1}, {b1 + 1, b2}], 
      G[{n1_, n2_, 2, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{n1, n2, 0, n4}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{n1, n2, 1, n4}, {a1 - 1, a2}, {b1, b2 + 1}], 
      G[{n1_, n2_, n3_, 2}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{n1, n2, n3, 0}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{n1, n2, n3, 1}, {a1, a2 - 1}, {b1, b2 + 1}], 
      R1[{2, n4_}, {a_}, {b1_, b2_}] :> -R1[{0, n4}, {a}, {b1, b2}] - 
        (2*nu + 1)*R1[{1, n4}, {a - 1}, {b1, b2 + 1}], 
      R1[{n3_, 2}, {a_}, {b1_, b2_}] :> -R1[{n3, 0}, {a}, {b1, b2}] - 
        (2*nu + 1)*R1[{n3, 1}, {a - 1}, {b1, b2 + 1}]}
 
symmetry[expr_] := Module[{test}, 
     test = expr /. {R2[{n1_, n2_}, {a_}, {b1_, b2_}] :> R1[{n1, n2}, {a}, 
           {b1, b2}]}; test = 
       test /. G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
              If[a1 > a2, G[{n2, n1, n4, n3}, {a2, a1}, {b1, b2}], G[
                {n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
            G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
             If[b1 > b2, G[{n3, n4, n1, n2}, {a1, a2}, {b2, b1}], 
              G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
           G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
            If[a1 == a2 && n1 > n2, G[{n2, n1, n4, n3}, {a2, a1}, {b1, b2}], 
             G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
          G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
           If[a1 == a2 && n1 == n2 && n3 > n4, G[{n2, n1, n4, n3}, {a2, a1}, 
             {b1, b2}], G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
         G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
          If[b1 == b2 && n1 > n3, G[{n3, n4, n1, n2}, {a1, a2}, {b2, b1}], 
           G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
        G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
         If[b1 == b2 && n1 == n3 && n2 > n4, G[{n3, n4, n1, n2}, {a1, a2}, 
           {b2, b1}], G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]]; 
      test = test /. R1[{n3_, n4_}, {a_}, {b1_, b2_}] :> 
         If[n3 > n4, R1[{n4, n3}, {a}, {b1, b2}], R1[{n3, n4}, {a}, 
           {b1, b2}]]; Return[test]; ]
 
dk0[expr_] := D[expr, k0] + (Expand[expr] /. (a_.)*(r:G[__] | R1[__]) :> 
       a*dk0Term[r])
 
dk0Term[expr_] := expr /. {G[c1_, c2_, c3_] :> G[c1, c2 + {1, 0}, c3] + 
        G[c1, c2 + {0, 1}, c3], R1[c1_, c2_, c3_] :> listcal[R1[c1, c2, c3], 
        2, 1, 1]}
 
dks[expr_] := D[expr, ks] + (Expand[expr] /. (a_.)*(r:G[__] | R1[__]) :> 
       a*dksTerm[r])
 
dksTerm[expr_] := expr /. {g:G[c1_, c2_, c3_] :> 
       Module[{b2, term1, term2, term3}, b2 = b20 + g[[3,2]]; 
         term1 = (-b2/(2*ks))*(ks^2*listcal[g, 3, 2, 2] + g - 
            listcal[listcal[g, 3, 1, -2], 3, 2, 2]); 
         term2 = (1/(2*ks))*(ks^2*listcal[listcal[listcal[g, 1, 3, 1], 2, 1, 
               1], 3, 2, 1] + listcal[listcal[listcal[g, 1, 3, 1], 2, 1, 1], 
             3, 2, -1] - listcal[listcal[listcal[listcal[g, 1, 3, 1], 2, 1, 
               1], 3, 1, -2], 3, 2, 1]); term3 = (1/(2*ks))*
           (ks^2*listcal[listcal[listcal[g, 1, 4, 1], 2, 2, 1], 3, 2, 1] + 
            listcal[listcal[listcal[g, 1, 4, 1], 2, 2, 1], 3, 2, -1] - 
            listcal[listcal[listcal[listcal[g, 1, 4, 1], 2, 2, 1], 3, 1, -2], 
             3, 2, 1]); term1 + term2 + term3], r:R1[c1_, c2_, c3_] :> 
       Module[{b2, term1, term2, term3}, b2 = b20 + r[[3,2]]; 
         term1 = (-b2/(2*ks))*(ks^2*listcal[r, 3, 2, 2] + r - 
            listcal[listcal[r, 3, 1, -2], 3, 2, 2]); 
         term2 = (1/(2*ks))*(ks^2*listcal[listcal[listcal[r, 1, 1, 1], 2, 1, 
               1], 3, 2, 1] + listcal[listcal[listcal[r, 1, 1, 1], 2, 1, 1], 
             3, 2, -1] - listcal[listcal[listcal[listcal[r, 1, 1, 1], 2, 1, 
               1], 3, 1, -2], 3, 2, 1]); term3 = (1/(2*ks))*
           (ks^2*listcal[listcal[listcal[r, 1, 2, 1], 2, 1, 1], 3, 2, 1] + 
            listcal[listcal[listcal[r, 1, 2, 1], 2, 1, 1], 3, 2, -1] - 
            listcal[listcal[listcal[listcal[r, 1, 2, 1], 2, 1, 1], 3, 1, -2], 
             3, 2, 1]); term1 + term2 + term3]}
listcal[expr_, i_, j_, n_] := ReplacePart[expr, {i, j} -> expr[[i,j]] + n]
 
repvar = {P1 -> (-I)*k0, P2 -> (-I)*k0, P0R1 -> (-2*I)*k0, a10 -> a0, 
     a20 -> a0, b10 -> b0, b20 -> b0}
 
reppara2N = {a0 -> 2*nu, b0 -> -2*nu, d -> 3 - 2*ep, ks -> 1}
 
repNumericTestKira = {nu -> 17/7, ep -> 1/13, k0 -> 5/23}
 
id[expr_] := expr /. {G[{2, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{0, n2, n3, n4}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{1, n2, n3, n4}, {a1 - 1, a2}, {b1 + 1, b2}], 
      G[{n1_, 2, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{n1, 0, n3, n4}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{n1, 1, n3, n4}, {a1, a2 - 1}, {b1 + 1, b2}], 
      G[{n1_, n2_, 2, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{n1, n2, 0, n4}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{n1, n2, 1, n4}, {a1 - 1, a2}, {b1, b2 + 1}], 
      G[{n1_, n2_, n3_, 2}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{n1, n2, n3, 0}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{n1, n2, n3, 1}, {a1, a2 - 1}, {b1, b2 + 1}], 
      R1[{2, n4_}, {a_}, {b1_, b2_}] :> -R1[{0, n4}, {a}, {b1, b2}] - 
        (2*nu + 1)*R1[{1, n4}, {a - 1}, {b1, b2 + 1}], 
      R1[{n3_, 2}, {a_}, {b1_, b2_}] :> -R1[{n3, 0}, {a}, {b1, b2}] - 
        (2*nu + 1)*R1[{n3, 1}, {a - 1}, {b1, b2 + 1}]}
 
symmetry[expr_] := Module[{test}, 
     test = expr /. {R2[{n1_, n2_}, {a_}, {b1_, b2_}] :> R1[{n1, n2}, {a}, 
           {b2, b1}]}; test = 
       test /. G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
              If[a1 > a2, G[{n2, n1, n4, n3}, {a2, a1}, {b1, b2}], G[
                {n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
            G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
             If[b1 > b2, G[{n3, n4, n1, n2}, {a1, a2}, {b2, b1}], 
              G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
           G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
            If[a1 == a2 && n1 > n2, G[{n2, n1, n4, n3}, {a2, a1}, {b1, b2}], 
             G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
          G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
           If[a1 == a2 && n1 == n2 && n3 > n4, G[{n2, n1, n4, n3}, {a2, a1}, 
             {b1, b2}], G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
         G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
          If[b1 == b2 && n1 > n3, G[{n3, n4, n1, n2}, {a1, a2}, {b2, b1}], 
           G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
        G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
         If[b1 == b2 && n1 == n3 && n2 > n4, G[{n3, n4, n1, n2}, {a1, a2}, 
           {b2, b1}], G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]]; 
      test = test /. R1[{n3_, n4_}, {a_}, {b1_, b2_}] :> 
         If[n3 > n4, R1[{n4, n3}, {a}, {b1, b2}], R1[{n3, n4}, {a}, 
           {b1, b2}]]; Return[test]; ]
 
dk0[expr_] := D[expr, k0] + (Expand[expr] /. (a_.)*(r:G[__] | R1[__]) :> 
       a*dk0Term[r])
 
dk0Term[expr_] := expr /. {G[c1_, c2_, c3_] :> G[c1, c2 + {1, 0}, c3] + 
        G[c1, c2 + {0, 1}, c3], R1[c1_, c2_, c3_] :> listcal[R1[c1, c2, c3], 
        2, 1, 1]}
 
dks[expr_] := D[expr, ks] + (Expand[expr] /. (a_.)*(r:G[__] | R1[__]) :> 
       a*dksTerm[r])
 
dksTerm[expr_] := expr /. {g:G[c1_, c2_, c3_] :> 
       Module[{b2, term1, term2, term3}, b2 = b20 + g[[3,2]]; 
         term1 = (-b2/(2*ks))*(ks^2*listcal[g, 3, 2, 2] + g - 
            listcal[listcal[g, 3, 1, -2], 3, 2, 2]); 
         term2 = (1/(2*ks))*(ks^2*listcal[listcal[listcal[g, 1, 3, 1], 2, 1, 
               1], 3, 2, 1] + listcal[listcal[listcal[g, 1, 3, 1], 2, 1, 1], 
             3, 2, -1] - listcal[listcal[listcal[listcal[g, 1, 3, 1], 2, 1, 
               1], 3, 1, -2], 3, 2, 1]); term3 = (1/(2*ks))*
           (ks^2*listcal[listcal[listcal[g, 1, 4, 1], 2, 2, 1], 3, 2, 1] + 
            listcal[listcal[listcal[g, 1, 4, 1], 2, 2, 1], 3, 2, -1] - 
            listcal[listcal[listcal[listcal[g, 1, 4, 1], 2, 2, 1], 3, 1, -2], 
             3, 2, 1]); term1 + term2 + term3], r:R1[c1_, c2_, c3_] :> 
       Module[{b2, term1, term2, term3}, b2 = b20 + r[[3,2]]; 
         term1 = (-b2/(2*ks))*(ks^2*listcal[r, 3, 2, 2] + r - 
            listcal[listcal[r, 3, 1, -2], 3, 2, 2]); 
         term2 = (1/(2*ks))*(ks^2*listcal[listcal[listcal[r, 1, 1, 1], 2, 1, 
               1], 3, 2, 1] + listcal[listcal[listcal[r, 1, 1, 1], 2, 1, 1], 
             3, 2, -1] - listcal[listcal[listcal[listcal[r, 1, 1, 1], 2, 1, 
               1], 3, 1, -2], 3, 2, 1]); term3 = (1/(2*ks))*
           (ks^2*listcal[listcal[listcal[r, 1, 2, 1], 2, 1, 1], 3, 2, 1] + 
            listcal[listcal[listcal[r, 1, 2, 1], 2, 1, 1], 3, 2, -1] - 
            listcal[listcal[listcal[listcal[r, 1, 2, 1], 2, 1, 1], 3, 1, -2], 
             3, 2, 1]); term1 + term2 + term3]}
listcal[expr_, i_, j_, n_] := ReplacePart[expr, {i, j} -> expr[[i,j]] + n]
 
repvar = {P1 -> (-I)*k0, P2 -> (-I)*k0, P0R1 -> (-2*I)*k0, a10 -> a0, 
     a20 -> a0, b10 -> b0, b20 -> b0}
 
reppara2N = {a0 -> 2*nu, b0 -> -2*nu, d -> 3 - 2*ep, ks -> 1}
 
repNumericTestKira = {nu -> 17/7, ep -> 1/13, k0 -> 5/23}
 
id[expr_] := expr /. {G[{2, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{0, n2, n3, n4}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{1, n2, n3, n4}, {a1 - 1, a2}, {b1 + 1, b2}], 
      G[{n1_, 2, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{n1, 0, n3, n4}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{n1, 1, n3, n4}, {a1, a2 - 1}, {b1 + 1, b2}], 
      G[{n1_, n2_, 2, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{n1, n2, 0, n4}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{n1, n2, 1, n4}, {a1 - 1, a2}, {b1, b2 + 1}], 
      G[{n1_, n2_, n3_, 2}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{n1, n2, n3, 0}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{n1, n2, n3, 1}, {a1, a2 - 1}, {b1, b2 + 1}], 
      R1[{2, n4_}, {a_}, {b1_, b2_}] :> -R1[{0, n4}, {a}, {b1, b2}] - 
        (2*nu + 1)*R1[{1, n4}, {a - 1}, {b1, b2 + 1}], 
      R1[{n3_, 2}, {a_}, {b1_, b2_}] :> -R1[{n3, 0}, {a}, {b1, b2}] - 
        (2*nu + 1)*R1[{n3, 1}, {a - 1}, {b1, b2 + 1}]}
 
symmetry[expr_] := Module[{test}, 
     test = expr /. {R2[{n1_, n2_}, {a_}, {b1_, b2_}] :> R1[{n1, n2}, {a}, 
           {b2, b1}]}; test = 
       test /. G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
              If[a1 > a2, G[{n2, n1, n4, n3}, {a2, a1}, {b1, b2}], G[
                {n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
            G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
             If[b1 > b2, G[{n3, n4, n1, n2}, {a1, a2}, {b2, b1}], 
              G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
           G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
            If[a1 == a2 && n1 > n2, G[{n2, n1, n4, n3}, {a2, a1}, {b1, b2}], 
             G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
          G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
           If[a1 == a2 && n1 == n2 && n3 > n4, G[{n2, n1, n4, n3}, {a2, a1}, 
             {b1, b2}], G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
         G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
          If[b1 == b2 && n1 > n3, G[{n3, n4, n1, n2}, {a1, a2}, {b2, b1}], 
           G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
        G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
         If[b1 == b2 && n1 == n3 && n2 > n4, G[{n3, n4, n1, n2}, {a1, a2}, 
           {b2, b1}], G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]]; 
      test = test /. R1[{n3_, n4_}, {a_}, {b1_, b2_}] :> 
         If[n3 > n4, R1[{n4, n3}, {a}, {b1, b2}], R1[{n3, n4}, {a}, 
           {b1, b2}]]; Return[test]; ]
 
dk0[expr_] := D[expr, k0] + (Expand[expr] /. (a_.)*(r:G[__] | R1[__]) :> 
       a*dk0Term[r])
 
dk0Term[expr_] := expr /. {G[c1_, c2_, c3_] :> G[c1, c2 + {1, 0}, c3] + 
        G[c1, c2 + {0, 1}, c3], R1[c1_, c2_, c3_] :> listcal[R1[c1, c2, c3], 
        2, 1, 1]}
 
dks[expr_] := D[expr, ks] + (Expand[expr] /. (a_.)*(r:G[__] | R1[__]) :> 
       a*dksTerm[r])
 
dksTerm[expr_] := expr /. {g:G[c1_, c2_, c3_] :> 
       Module[{b2, term1, term2, term3}, b2 = b20 + g[[3,2]]; 
         term1 = (-b2/(2*ks))*(ks^2*listcal[g, 3, 2, 2] + g - 
            listcal[listcal[g, 3, 1, -2], 3, 2, 2]); 
         term2 = (1/(2*ks))*(ks^2*listcal[listcal[listcal[g, 1, 3, 1], 2, 1, 
               1], 3, 2, 1] + listcal[listcal[listcal[g, 1, 3, 1], 2, 1, 1], 
             3, 2, -1] - listcal[listcal[listcal[listcal[g, 1, 3, 1], 2, 1, 
               1], 3, 1, -2], 3, 2, 1]); term3 = (1/(2*ks))*
           (ks^2*listcal[listcal[listcal[g, 1, 4, 1], 2, 2, 1], 3, 2, 1] + 
            listcal[listcal[listcal[g, 1, 4, 1], 2, 2, 1], 3, 2, -1] - 
            listcal[listcal[listcal[listcal[g, 1, 4, 1], 2, 2, 1], 3, 1, -2], 
             3, 2, 1]); term1 + term2 + term3], r:R1[c1_, c2_, c3_] :> 
       Module[{b2, term1, term2, term3}, b2 = b20 + r[[3,2]]; 
         term1 = (-b2/(2*ks))*(ks^2*listcal[r, 3, 2, 2] + r - 
            listcal[listcal[r, 3, 1, -2], 3, 2, 2]); 
         term2 = (1/(2*ks))*(ks^2*listcal[listcal[listcal[r, 1, 1, 1], 2, 1, 
               1], 3, 2, 1] + listcal[listcal[listcal[r, 1, 1, 1], 2, 1, 1], 
             3, 2, -1] - listcal[listcal[listcal[listcal[r, 1, 1, 1], 2, 1, 
               1], 3, 1, -2], 3, 2, 1]); term3 = (1/(2*ks))*
           (ks^2*listcal[listcal[listcal[r, 1, 2, 1], 2, 1, 1], 3, 2, 1] + 
            listcal[listcal[listcal[r, 1, 2, 1], 2, 1, 1], 3, 2, -1] - 
            listcal[listcal[listcal[listcal[r, 1, 2, 1], 2, 1, 1], 3, 1, -2], 
             3, 2, 1]); term1 + term2 + term3]}
listcal[expr_, i_, j_, n_] := ReplacePart[expr, {i, j} -> expr[[i,j]] + n]
 
repvar = {P1 -> (-I)*k0, P2 -> (-I)*k0, P0R1 -> (-2*I)*k0, a10 -> a0, 
     a20 -> a0, b10 -> b0, b20 -> b0}
 
reppara2N = {a0 -> 2*nu, b0 -> -2*nu, d -> 3 - 2*ep, ks -> 1}
 
repNumericTestKira = {nu -> 17/7, ep -> 1/13, k0 -> 5/23}
 
id[expr_] := expr /. {G[{2, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{0, n2, n3, n4}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{1, n2, n3, n4}, {a1 - 1, a2}, {b1 + 1, b2}], 
      G[{n1_, 2, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{n1, 0, n3, n4}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{n1, 1, n3, n4}, {a1, a2 - 1}, {b1 + 1, b2}], 
      G[{n1_, n2_, 2, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{n1, n2, 0, n4}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{n1, n2, 1, n4}, {a1 - 1, a2}, {b1, b2 + 1}], 
      G[{n1_, n2_, n3_, 2}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{n1, n2, n3, 0}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{n1, n2, n3, 1}, {a1, a2 - 1}, {b1, b2 + 1}], 
      R1[{2, n4_}, {a_}, {b1_, b2_}] :> -R1[{0, n4}, {a}, {b1, b2}] - 
        (2*nu + 1)*R1[{1, n4}, {a - 1}, {b1, b2 + 1}], 
      R1[{n3_, 2}, {a_}, {b1_, b2_}] :> -R1[{n3, 0}, {a}, {b1, b2}] - 
        (2*nu + 1)*R1[{n3, 1}, {a - 1}, {b1, b2 + 1}]}
 
symmetry[expr_] := Module[{test}, 
     test = expr /. {R2[{n1_, n2_}, {a_}, {b1_, b2_}] :> R1[{n1, n2}, {a}, 
           {b2, b1}]}; test = 
       test /. G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
              If[a1 > a2, G[{n2, n1, n4, n3}, {a2, a1}, {b1, b2}], G[
                {n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
            G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
             If[b1 > b2, G[{n3, n4, n1, n2}, {a1, a2}, {b2, b1}], 
              G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
           G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
            If[a1 == a2 && n1 > n2, G[{n2, n1, n4, n3}, {a2, a1}, {b1, b2}], 
             G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
          G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
           If[a1 == a2 && n1 == n2 && n3 > n4, G[{n2, n1, n4, n3}, {a2, a1}, 
             {b1, b2}], G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
         G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
          If[b1 == b2 && n1 > n3, G[{n3, n4, n1, n2}, {a1, a2}, {b2, b1}], 
           G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
        G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
         If[b1 == b2 && n1 == n3 && n2 > n4, G[{n3, n4, n1, n2}, {a1, a2}, 
           {b2, b1}], G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]]; 
      test = test /. R1[{n3_, n4_}, {a_}, {b1_, b2_}] :> 
         If[n3 > n4, R1[{n4, n3}, {a}, {b1, b2}], R1[{n3, n4}, {a}, 
           {b1, b2}]]; Return[test]; ]
 
dk0[expr_] := D[expr, k0] + (Expand[expr] /. (a_.)*(r:G[__] | R1[__]) :> 
       a*dk0Term[r])
 
dk0Term[expr_] := expr /. {G[c1_, c2_, c3_] :> G[c1, c2 + {1, 0}, c3] + 
        G[c1, c2 + {0, 1}, c3], R1[c1_, c2_, c3_] :> listcal[R1[c1, c2, c3], 
        2, 1, 1]}
 
dks[expr_] := D[expr, ks] + (Expand[expr] /. (a_.)*(r:G[__] | R1[__]) :> 
       a*dksTerm[r])
 
dksTerm[expr_] := expr /. {g:G[c1_, c2_, c3_] :> 
       Module[{b2, term1, term2, term3}, b2 = b20 + g[[3,2]]; 
         term1 = (-b2/(2*ks))*(ks^2*listcal[g, 3, 2, 2] + g - 
            listcal[listcal[g, 3, 1, -2], 3, 2, 2]); 
         term2 = (1/(2*ks))*(ks^2*listcal[listcal[listcal[g, 1, 3, 1], 2, 1, 
               1], 3, 2, 1] + listcal[listcal[listcal[g, 1, 3, 1], 2, 1, 1], 
             3, 2, -1] - listcal[listcal[listcal[listcal[g, 1, 3, 1], 2, 1, 
               1], 3, 1, -2], 3, 2, 1]); term3 = (1/(2*ks))*
           (ks^2*listcal[listcal[listcal[g, 1, 4, 1], 2, 2, 1], 3, 2, 1] + 
            listcal[listcal[listcal[g, 1, 4, 1], 2, 2, 1], 3, 2, -1] - 
            listcal[listcal[listcal[listcal[g, 1, 4, 1], 2, 2, 1], 3, 1, -2], 
             3, 2, 1]); term1 + term2 + term3], r:R1[c1_, c2_, c3_] :> 
       Module[{b2, term1, term2, term3}, b2 = b20 + r[[3,2]]; 
         term1 = (-b2/(2*ks))*(ks^2*listcal[r, 3, 2, 2] + r - 
            listcal[listcal[r, 3, 1, -2], 3, 2, 2]); 
         term2 = (1/(2*ks))*(ks^2*listcal[listcal[listcal[r, 1, 1, 1], 2, 1, 
               1], 3, 2, 1] + listcal[listcal[listcal[r, 1, 1, 1], 2, 1, 1], 
             3, 2, -1] - listcal[listcal[listcal[listcal[r, 1, 1, 1], 2, 1, 
               1], 3, 1, -2], 3, 2, 1]); term3 = (1/(2*ks))*
           (ks^2*listcal[listcal[listcal[r, 1, 2, 1], 2, 1, 1], 3, 2, 1] + 
            listcal[listcal[listcal[r, 1, 2, 1], 2, 1, 1], 3, 2, -1] - 
            listcal[listcal[listcal[listcal[r, 1, 2, 1], 2, 1, 1], 3, 1, -2], 
             3, 2, 1]); term1 + term2 + term3]}
listcal[expr_, i_, j_, n_] := ReplacePart[expr, {i, j} -> expr[[i,j]] + n]
 
repvar = {P1 -> (-I)*k0, P2 -> (-I)*k0, P0R1 -> (-2*I)*k0, a10 -> a0, 
     a20 -> a0, b10 -> b0, b20 -> b0}
 
reppara2N = {a0 -> 2*nu, b0 -> -2*nu, d -> 3 - 2*ep, ks -> 1}
 
repNumericTestKira = {nu -> 17/7, ep -> 1/13, k0 -> 5/23}
 
id[expr_] := expr /. {G[{2, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{0, n2, n3, n4}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{1, n2, n3, n4}, {a1 - 1, a2}, {b1 + 1, b2}], 
      G[{n1_, 2, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{n1, 0, n3, n4}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{n1, 1, n3, n4}, {a1, a2 - 1}, {b1 + 1, b2}], 
      G[{n1_, n2_, 2, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{n1, n2, 0, n4}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{n1, n2, 1, n4}, {a1 - 1, a2}, {b1, b2 + 1}], 
      G[{n1_, n2_, n3_, 2}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{n1, n2, n3, 0}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{n1, n2, n3, 1}, {a1, a2 - 1}, {b1, b2 + 1}], 
      R1[{2, n4_}, {a_}, {b1_, b2_}] :> -R1[{0, n4}, {a}, {b1, b2}] - 
        (2*nu + 1)*R1[{1, n4}, {a - 1}, {b1, b2 + 1}], 
      R1[{n3_, 2}, {a_}, {b1_, b2_}] :> -R1[{n3, 0}, {a}, {b1, b2}] - 
        (2*nu + 1)*R1[{n3, 1}, {a - 1}, {b1, b2 + 1}]}
 
symmetry[expr_] := Module[{test}, 
     test = expr /. {R2[{n1_, n2_}, {a_}, {b1_, b2_}] :> R1[{n1, n2}, {a}, 
           {b2, b1}]}; test = 
       test /. G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
              If[a1 > a2, G[{n2, n1, n4, n3}, {a2, a1}, {b1, b2}], G[
                {n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
            G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
             If[b1 > b2, G[{n3, n4, n1, n2}, {a1, a2}, {b2, b1}], 
              G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
           G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
            If[a1 == a2 && n1 > n2, G[{n2, n1, n4, n3}, {a2, a1}, {b1, b2}], 
             G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
          G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
           If[a1 == a2 && n1 == n2 && n3 > n4, G[{n2, n1, n4, n3}, {a2, a1}, 
             {b1, b2}], G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
         G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
          If[b1 == b2 && n1 > n3, G[{n3, n4, n1, n2}, {a1, a2}, {b2, b1}], 
           G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
        G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
         If[b1 == b2 && n1 == n3 && n2 > n4, G[{n3, n4, n1, n2}, {a1, a2}, 
           {b2, b1}], G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]]; 
      test = test /. R1[{n3_, n4_}, {a_}, {b1_, b2_}] :> 
         If[n3 > n4, R1[{n4, n3}, {a}, {b1, b2}], R1[{n3, n4}, {a}, 
           {b1, b2}]]; Return[test]; ]
 
dk0[expr_] := D[expr, k0] + (Expand[expr] /. (a_.)*(r:G[__] | R1[__]) :> 
       a*dk0Term[r])
 
dk0Term[expr_] := expr /. {G[c1_, c2_, c3_] :> G[c1, c2 + {1, 0}, c3] + 
        G[c1, c2 + {0, 1}, c3], R1[c1_, c2_, c3_] :> listcal[R1[c1, c2, c3], 
        2, 1, 1]}
 
dks[expr_] := D[expr, ks] + (Expand[expr] /. (a_.)*(r:G[__] | R1[__]) :> 
       a*dksTerm[r])
 
dksTerm[expr_] := expr /. {g:G[c1_, c2_, c3_] :> 
       Module[{b2, term1, term2, term3}, b2 = b20 + g[[3,2]]; 
         term1 = (-b2/(2*ks))*(ks^2*listcal[g, 3, 2, 2] + g - 
            listcal[listcal[g, 3, 1, -2], 3, 2, 2]); 
         term2 = (1/(2*ks))*(ks^2*listcal[listcal[listcal[g, 1, 3, 1], 2, 1, 
               1], 3, 2, 1] + listcal[listcal[listcal[g, 1, 3, 1], 2, 1, 1], 
             3, 2, -1] - listcal[listcal[listcal[listcal[g, 1, 3, 1], 2, 1, 
               1], 3, 1, -2], 3, 2, 1]); term3 = (1/(2*ks))*
           (ks^2*listcal[listcal[listcal[g, 1, 4, 1], 2, 2, 1], 3, 2, 1] + 
            listcal[listcal[listcal[g, 1, 4, 1], 2, 2, 1], 3, 2, -1] - 
            listcal[listcal[listcal[listcal[g, 1, 4, 1], 2, 2, 1], 3, 1, -2], 
             3, 2, 1]); term1 + term2 + term3], r:R1[c1_, c2_, c3_] :> 
       Module[{b2, term1, term2, term3}, b2 = b20 + r[[3,2]]; 
         term1 = (-b2/(2*ks))*(ks^2*listcal[r, 3, 2, 2] + r - 
            listcal[listcal[r, 3, 1, -2], 3, 2, 2]); 
         term2 = (1/(2*ks))*(ks^2*listcal[listcal[listcal[r, 1, 1, 1], 2, 1, 
               1], 3, 2, 1] + listcal[listcal[listcal[r, 1, 1, 1], 2, 1, 1], 
             3, 2, -1] - listcal[listcal[listcal[listcal[r, 1, 1, 1], 2, 1, 
               1], 3, 1, -2], 3, 2, 1]); term3 = (1/(2*ks))*
           (ks^2*listcal[listcal[listcal[r, 1, 2, 1], 2, 1, 1], 3, 2, 1] + 
            listcal[listcal[listcal[r, 1, 2, 1], 2, 1, 1], 3, 2, -1] - 
            listcal[listcal[listcal[listcal[r, 1, 2, 1], 2, 1, 1], 3, 1, -2], 
             3, 2, 1]); term1 + term2 + term3]}
listcal[expr_, i_, j_, n_] := ReplacePart[expr, {i, j} -> expr[[i,j]] + n]
 
repvar = {P1 -> (-I)*k0, P2 -> (-I)*k0, P0R1 -> (-2*I)*k0, a10 -> a0, 
     a20 -> a0, b10 -> b0, b20 -> b0}
 
reppara2N = {a0 -> 2*nu, b0 -> -2*nu, d -> 3 - 2*ep, ks -> 1}
 
repNumericTestKira = {nu -> 17/7, ep -> 1/13, k0 -> 5/23}
 
id[expr_] := expr /. {G[{2, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{0, n2, n3, n4}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{1, n2, n3, n4}, {a1 - 1, a2}, {b1 + 1, b2}], 
      G[{n1_, 2, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{n1, 0, n3, n4}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{n1, 1, n3, n4}, {a1, a2 - 1}, {b1 + 1, b2}], 
      G[{n1_, n2_, 2, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{n1, n2, 0, n4}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{n1, n2, 1, n4}, {a1 - 1, a2}, {b1, b2 + 1}], 
      G[{n1_, n2_, n3_, 2}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{n1, n2, n3, 0}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{n1, n2, n3, 1}, {a1, a2 - 1}, {b1, b2 + 1}], 
      R1[{2, n4_}, {a_}, {b1_, b2_}] :> -R1[{0, n4}, {a}, {b1, b2}] - 
        (2*nu + 1)*R1[{1, n4}, {a - 1}, {b1, b2 + 1}], 
      R1[{n3_, 2}, {a_}, {b1_, b2_}] :> -R1[{n3, 0}, {a}, {b1, b2}] - 
        (2*nu + 1)*R1[{n3, 1}, {a - 1}, {b1, b2 + 1}]}
 
symmetry[expr_] := Module[{test}, 
     test = expr /. {R2[{n1_, n2_}, {a_}, {b1_, b2_}] :> R1[{n1, n2}, {a}, 
           {b2, b1}]}; test = 
       test /. G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
              If[a1 > a2, G[{n2, n1, n4, n3}, {a2, a1}, {b1, b2}], G[
                {n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
            G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
             If[b1 > b2, G[{n3, n4, n1, n2}, {a1, a2}, {b2, b1}], 
              G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
           G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
            If[a1 == a2 && n1 > n2, G[{n2, n1, n4, n3}, {a2, a1}, {b1, b2}], 
             G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
          G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
           If[a1 == a2 && n1 == n2 && n3 > n4, G[{n2, n1, n4, n3}, {a2, a1}, 
             {b1, b2}], G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
         G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
          If[b1 == b2 && n1 > n3, G[{n3, n4, n1, n2}, {a1, a2}, {b2, b1}], 
           G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
        G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
         If[b1 == b2 && n1 == n3 && n2 > n4, G[{n3, n4, n1, n2}, {a1, a2}, 
           {b2, b1}], G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]]; 
      test = test /. R1[{n3_, n4_}, {a_}, {b1_, b2_}] :> 
         If[n3 > n4, R1[{n4, n3}, {a}, {b1, b2}], R1[{n3, n4}, {a}, 
           {b1, b2}]]; Return[test]; ]
 
dk0[expr_] := D[expr, k0] + (Expand[expr] /. (a_.)*(r:G[__] | R1[__]) :> 
       a*dk0Term[r])
 
dk0Term[expr_] := expr /. {G[c1_, c2_, c3_] :> G[c1, c2 + {1, 0}, c3] + 
        G[c1, c2 + {0, 1}, c3], R1[c1_, c2_, c3_] :> listcal[R1[c1, c2, c3], 
        2, 1, 1]}
 
dks[expr_] := D[expr, ks] + (Expand[expr] /. (a_.)*(r:G[__] | R1[__]) :> 
       a*dksTerm[r])
 
dksTerm[expr_] := expr /. {g:G[c1_, c2_, c3_] :> 
       Module[{b2, term1, term2, term3}, b2 = b20 + g[[3,2]]; 
         term1 = (-b2/(2*ks))*(ks^2*listcal[g, 3, 2, 2] + g - 
            listcal[listcal[g, 3, 1, -2], 3, 2, 2]); 
         term2 = (1/(2*ks))*(ks^2*listcal[listcal[listcal[g, 1, 3, 1], 2, 1, 
               1], 3, 2, 1] + listcal[listcal[listcal[g, 1, 3, 1], 2, 1, 1], 
             3, 2, -1] - listcal[listcal[listcal[listcal[g, 1, 3, 1], 2, 1, 
               1], 3, 1, -2], 3, 2, 1]); term3 = (1/(2*ks))*
           (ks^2*listcal[listcal[listcal[g, 1, 4, 1], 2, 2, 1], 3, 2, 1] + 
            listcal[listcal[listcal[g, 1, 4, 1], 2, 2, 1], 3, 2, -1] - 
            listcal[listcal[listcal[listcal[g, 1, 4, 1], 2, 2, 1], 3, 1, -2], 
             3, 2, 1]); term1 + term2 + term3], r:R1[c1_, c2_, c3_] :> 
       Module[{b2, term1, term2, term3}, b2 = b20 + r[[3,2]]; 
         term1 = (-b2/(2*ks))*(ks^2*listcal[r, 3, 2, 2] + r - 
            listcal[listcal[r, 3, 1, -2], 3, 2, 2]); 
         term2 = (1/(2*ks))*(ks^2*listcal[listcal[listcal[r, 1, 1, 1], 2, 1, 
               1], 3, 2, 1] + listcal[listcal[listcal[r, 1, 1, 1], 2, 1, 1], 
             3, 2, -1] - listcal[listcal[listcal[listcal[r, 1, 1, 1], 2, 1, 
               1], 3, 1, -2], 3, 2, 1]); term3 = (1/(2*ks))*
           (ks^2*listcal[listcal[listcal[r, 1, 2, 1], 2, 1, 1], 3, 2, 1] + 
            listcal[listcal[listcal[r, 1, 2, 1], 2, 1, 1], 3, 2, -1] - 
            listcal[listcal[listcal[listcal[r, 1, 2, 1], 2, 1, 1], 3, 1, -2], 
             3, 2, 1]); term1 + term2 + term3]}
listcal[expr_, i_, j_, n_] := ReplacePart[expr, {i, j} -> expr[[i,j]] + n]
 
repvar = {P1 -> (-I)*k0, P2 -> (-I)*k0, P0R1 -> (-2*I)*k0, a10 -> a0, 
     a20 -> a0, b10 -> b0, b20 -> b0}
 
reppara2N = {a0 -> 2*nu, b0 -> -2*nu, d -> 3 - 2*ep, ks -> 1}
 
repNumericTestKira = {nu -> 17/7, ep -> 1/13, k0 -> 5/23}
 
id[expr_] := expr /. {G[{2, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{0, n2, n3, n4}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{1, n2, n3, n4}, {a1 - 1, a2}, {b1 + 1, b2}], 
      G[{n1_, 2, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{n1, 0, n3, n4}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{n1, 1, n3, n4}, {a1, a2 - 1}, {b1 + 1, b2}], 
      G[{n1_, n2_, 2, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{n1, n2, 0, n4}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{n1, n2, 1, n4}, {a1 - 1, a2}, {b1, b2 + 1}], 
      G[{n1_, n2_, n3_, 2}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{n1, n2, n3, 0}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{n1, n2, n3, 1}, {a1, a2 - 1}, {b1, b2 + 1}], 
      R1[{2, n4_}, {a_}, {b1_, b2_}] :> -R1[{0, n4}, {a}, {b1, b2}] - 
        (2*nu + 1)*R1[{1, n4}, {a - 1}, {b1, b2 + 1}], 
      R1[{n3_, 2}, {a_}, {b1_, b2_}] :> -R1[{n3, 0}, {a}, {b1, b2}] - 
        (2*nu + 1)*R1[{n3, 1}, {a - 1}, {b1, b2 + 1}]}
 
symmetry[expr_] := Module[{test}, 
     test = expr /. {R2[{n1_, n2_}, {a_}, {b1_, b2_}] :> R1[{n1, n2}, {a}, 
           {b2, b1}]}; test = 
       test /. G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
              If[a1 > a2, G[{n2, n1, n4, n3}, {a2, a1}, {b1, b2}], G[
                {n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
            G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
             If[b1 > b2, G[{n3, n4, n1, n2}, {a1, a2}, {b2, b1}], 
              G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
           G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
            If[a1 == a2 && n1 > n2, G[{n2, n1, n4, n3}, {a2, a1}, {b1, b2}], 
             G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
          G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
           If[a1 == a2 && n1 == n2 && n3 > n4, G[{n2, n1, n4, n3}, {a2, a1}, 
             {b1, b2}], G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
         G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
          If[b1 == b2 && n1 > n3, G[{n3, n4, n1, n2}, {a1, a2}, {b2, b1}], 
           G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
        G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
         If[b1 == b2 && n1 == n3 && n2 > n4, G[{n3, n4, n1, n2}, {a1, a2}, 
           {b2, b1}], G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]]; 
      test = test /. R1[{n3_, n4_}, {a_}, {b1_, b2_}] :> 
         If[n3 > n4, R1[{n4, n3}, {a}, {b1, b2}], R1[{n3, n4}, {a}, 
           {b1, b2}]]; Return[test]; ]
 
dk0[expr_] := D[expr, k0] + (Expand[expr] /. (a_.)*(r:G[__] | R1[__]) :> 
       a*dk0Term[r])
 
dk0Term[expr_] := expr /. {G[c1_, c2_, c3_] :> G[c1, c2 + {1, 0}, c3] + 
        G[c1, c2 + {0, 1}, c3], R1[c1_, c2_, c3_] :> listcal[R1[c1, c2, c3], 
        2, 1, 1]}
 
dks[expr_] := D[expr, ks] + (Expand[expr] /. (a_.)*(r:G[__] | R1[__]) :> 
       a*dksTerm[r])
 
dksTerm[expr_] := expr /. {g:G[c1_, c2_, c3_] :> 
       Module[{b2, term1, term2, term3}, b2 = b20 + g[[3,2]]; 
         term1 = (-b2/(2*ks))*(ks^2*listcal[g, 3, 2, 2] + g - 
            listcal[listcal[g, 3, 1, -2], 3, 2, 2]); 
         term2 = (1/(2*ks))*(ks^2*listcal[listcal[listcal[g, 1, 3, 1], 2, 1, 
               1], 3, 2, 1] + listcal[listcal[listcal[g, 1, 3, 1], 2, 1, 1], 
             3, 2, -1] - listcal[listcal[listcal[listcal[g, 1, 3, 1], 2, 1, 
               1], 3, 1, -2], 3, 2, 1]); term3 = (1/(2*ks))*
           (ks^2*listcal[listcal[listcal[g, 1, 4, 1], 2, 2, 1], 3, 2, 1] + 
            listcal[listcal[listcal[g, 1, 4, 1], 2, 2, 1], 3, 2, -1] - 
            listcal[listcal[listcal[listcal[g, 1, 4, 1], 2, 2, 1], 3, 1, -2], 
             3, 2, 1]); term1 + term2 + term3], r:R1[c1_, c2_, c3_] :> 
       Module[{b2, term1, term2, term3}, b2 = b20 + r[[3,2]]; 
         term1 = (-b2/(2*ks))*(ks^2*listcal[r, 3, 2, 2] + r - 
            listcal[listcal[r, 3, 1, -2], 3, 2, 2]); 
         term2 = (1/(2*ks))*(ks^2*listcal[listcal[listcal[r, 1, 1, 1], 2, 1, 
               1], 3, 2, 1] + listcal[listcal[listcal[r, 1, 1, 1], 2, 1, 1], 
             3, 2, -1] - listcal[listcal[listcal[listcal[r, 1, 1, 1], 2, 1, 
               1], 3, 1, -2], 3, 2, 1]); term3 = (1/(2*ks))*
           (ks^2*listcal[listcal[listcal[r, 1, 2, 1], 2, 1, 1], 3, 2, 1] + 
            listcal[listcal[listcal[r, 1, 2, 1], 2, 1, 1], 3, 2, -1] - 
            listcal[listcal[listcal[listcal[r, 1, 2, 1], 2, 1, 1], 3, 1, -2], 
             3, 2, 1]); term1 + term2 + term3]}
listcal[expr_, i_, j_, n_] := ReplacePart[expr, {i, j} -> expr[[i,j]] + n]
 
repvar = {P1 -> (-I)*k0, P2 -> (-I)*k0, P0R1 -> (-2*I)*k0, a10 -> a0, 
     a20 -> a0, b10 -> b0, b20 -> b0}
 
reppara2N = {a0 -> 2*nu, b0 -> -2*nu, d -> 3 - 2*ep, ks -> 1}
 
repNumericTestKira = {nu -> 17/7, ep -> 1/13, k0 -> 5/23}
 
id[expr_] := expr /. {G[{2, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{0, n2, n3, n4}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{1, n2, n3, n4}, {a1 - 1, a2}, {b1 + 1, b2}], 
      G[{n1_, 2, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{n1, 0, n3, n4}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{n1, 1, n3, n4}, {a1, a2 - 1}, {b1 + 1, b2}], 
      G[{n1_, n2_, 2, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{n1, n2, 0, n4}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{n1, n2, 1, n4}, {a1 - 1, a2}, {b1, b2 + 1}], 
      G[{n1_, n2_, n3_, 2}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{n1, n2, n3, 0}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{n1, n2, n3, 1}, {a1, a2 - 1}, {b1, b2 + 1}], 
      R1[{2, n4_}, {a_}, {b1_, b2_}] :> -R1[{0, n4}, {a}, {b1, b2}] - 
        (2*nu + 1)*R1[{1, n4}, {a - 1}, {b1, b2 + 1}], 
      R1[{n3_, 2}, {a_}, {b1_, b2_}] :> -R1[{n3, 0}, {a}, {b1, b2}] - 
        (2*nu + 1)*R1[{n3, 1}, {a - 1}, {b1, b2 + 1}]}
 
symmetry[expr_] := Module[{test}, 
     test = expr /. {R2[{n1_, n2_}, {a_}, {b1_, b2_}] :> R1[{n1, n2}, {a}, 
           {b2, b1}]}; test = 
       test /. G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
              If[a1 > a2, G[{n2, n1, n4, n3}, {a2, a1}, {b1, b2}], G[
                {n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
            G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
             If[b1 > b2, G[{n3, n4, n1, n2}, {a1, a2}, {b2, b1}], 
              G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
           G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
            If[a1 == a2 && n1 > n2, G[{n2, n1, n4, n3}, {a2, a1}, {b1, b2}], 
             G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
          G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
           If[a1 == a2 && n1 == n2 && n3 > n4, G[{n2, n1, n4, n3}, {a2, a1}, 
             {b1, b2}], G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
         G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
          If[b1 == b2 && n1 > n3, G[{n3, n4, n1, n2}, {a1, a2}, {b2, b1}], 
           G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
        G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
         If[b1 == b2 && n1 == n3 && n2 > n4, G[{n3, n4, n1, n2}, {a1, a2}, 
           {b2, b1}], G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]]; 
      test = test /. R1[{n3_, n4_}, {a_}, {b1_, b2_}] :> 
         If[n3 > n4, R1[{n4, n3}, {a}, {b1, b2}], R1[{n3, n4}, {a}, 
           {b1, b2}]]; Return[test]; ]
 
dk0[expr_] := D[expr, k0] + (Expand[expr] /. (a_.)*(r:G[__] | R1[__]) :> 
       a*dk0Term[r])
 
dk0Term[expr_] := expr /. {G[c1_, c2_, c3_] :> G[c1, c2 + {1, 0}, c3] + 
        G[c1, c2 + {0, 1}, c3], R1[c1_, c2_, c3_] :> listcal[R1[c1, c2, c3], 
        2, 1, 1]}
 
dks[expr_] := D[expr, ks] + (Expand[expr] /. (a_.)*(r:G[__] | R1[__]) :> 
       a*dksTerm[r])
 
dksTerm[expr_] := expr /. {g:G[c1_, c2_, c3_] :> 
       Module[{b2, term1, term2, term3}, b2 = b20 + g[[3,2]]; 
         term1 = (-b2/(2*ks))*(ks^2*listcal[g, 3, 2, 2] + g - 
            listcal[listcal[g, 3, 1, -2], 3, 2, 2]); 
         term2 = (1/(2*ks))*(ks^2*listcal[listcal[listcal[g, 1, 3, 1], 2, 1, 
               1], 3, 2, 1] + listcal[listcal[listcal[g, 1, 3, 1], 2, 1, 1], 
             3, 2, -1] - listcal[listcal[listcal[listcal[g, 1, 3, 1], 2, 1, 
               1], 3, 1, -2], 3, 2, 1]); term3 = (1/(2*ks))*
           (ks^2*listcal[listcal[listcal[g, 1, 4, 1], 2, 2, 1], 3, 2, 1] + 
            listcal[listcal[listcal[g, 1, 4, 1], 2, 2, 1], 3, 2, -1] - 
            listcal[listcal[listcal[listcal[g, 1, 4, 1], 2, 2, 1], 3, 1, -2], 
             3, 2, 1]); term1 + term2 + term3], r:R1[c1_, c2_, c3_] :> 
       Module[{b2, term1, term2, term3}, b2 = b20 + r[[3,2]]; 
         term1 = (-b2/(2*ks))*(ks^2*listcal[r, 3, 2, 2] + r - 
            listcal[listcal[r, 3, 1, -2], 3, 2, 2]); 
         term2 = (1/(2*ks))*(ks^2*listcal[listcal[listcal[r, 1, 1, 1], 2, 1, 
               1], 3, 2, 1] + listcal[listcal[listcal[r, 1, 1, 1], 2, 1, 1], 
             3, 2, -1] - listcal[listcal[listcal[listcal[r, 1, 1, 1], 2, 1, 
               1], 3, 1, -2], 3, 2, 1]); term3 = (1/(2*ks))*
           (ks^2*listcal[listcal[listcal[r, 1, 2, 1], 2, 1, 1], 3, 2, 1] + 
            listcal[listcal[listcal[r, 1, 2, 1], 2, 1, 1], 3, 2, -1] - 
            listcal[listcal[listcal[listcal[r, 1, 2, 1], 2, 1, 1], 3, 1, -2], 
             3, 2, 1]); term1 + term2 + term3]}
listcal[expr_, i_, j_, n_] := ReplacePart[expr, {i, j} -> expr[[i,j]] + n]
 
repvar = {P1 -> (-I)*k0, P2 -> (-I)*k0, P0R1 -> (-2*I)*k0, a10 -> a0, 
     a20 -> a0, b10 -> b0, b20 -> b0}
 
reppara2N = {a0 -> 2*nu, b0 -> -2*nu, d -> 3 - 2*ep, ks -> 1}
 
repNumericTestKira = {nu -> 17/7, ep -> 1/13, k0 -> 5/23}
 
id[expr_] := expr /. {G[{2, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{0, n2, n3, n4}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{1, n2, n3, n4}, {a1 - 1, a2}, {b1 + 1, b2}], 
      G[{n1_, 2, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{n1, 0, n3, n4}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{n1, 1, n3, n4}, {a1, a2 - 1}, {b1 + 1, b2}], 
      G[{n1_, n2_, 2, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{n1, n2, 0, n4}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{n1, n2, 1, n4}, {a1 - 1, a2}, {b1, b2 + 1}], 
      G[{n1_, n2_, n3_, 2}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{n1, n2, n3, 0}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{n1, n2, n3, 1}, {a1, a2 - 1}, {b1, b2 + 1}], 
      R1[{2, n4_}, {a_}, {b1_, b2_}] :> -R1[{0, n4}, {a}, {b1, b2}] - 
        (2*nu + 1)*R1[{1, n4}, {a - 1}, {b1, b2 + 1}], 
      R1[{n3_, 2}, {a_}, {b1_, b2_}] :> -R1[{n3, 0}, {a}, {b1, b2}] - 
        (2*nu + 1)*R1[{n3, 1}, {a - 1}, {b1, b2 + 1}]}
 
symmetry[expr_] := Module[{test}, 
     test = expr /. {R2[{n1_, n2_}, {a_}, {b1_, b2_}] :> R1[{n1, n2}, {a}, 
           {b2, b1}]}; test = 
       test /. G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
              If[a1 > a2, G[{n2, n1, n4, n3}, {a2, a1}, {b1, b2}], G[
                {n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
            G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
             If[b1 > b2, G[{n3, n4, n1, n2}, {a1, a2}, {b2, b1}], 
              G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
           G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
            If[a1 == a2 && n1 > n2, G[{n2, n1, n4, n3}, {a2, a1}, {b1, b2}], 
             G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
          G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
           If[a1 == a2 && n1 == n2 && n3 > n4, G[{n2, n1, n4, n3}, {a2, a1}, 
             {b1, b2}], G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
         G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
          If[b1 == b2 && n1 > n3, G[{n3, n4, n1, n2}, {a1, a2}, {b2, b1}], 
           G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
        G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
         If[b1 == b2 && n1 == n3 && n2 > n4, G[{n3, n4, n1, n2}, {a1, a2}, 
           {b2, b1}], G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]]; 
      test = test /. R1[{n3_, n4_}, {a_}, {b1_, b2_}] :> 
         If[n3 > n4, R1[{n4, n3}, {a}, {b1, b2}], R1[{n3, n4}, {a}, 
           {b1, b2}]]; Return[test]; ]
 
dk0[expr_] := D[expr, k0] + (Expand[expr] /. (a_.)*(r:G[__] | R1[__]) :> 
       a*dk0Term[r])
 
dk0Term[expr_] := expr /. {G[c1_, c2_, c3_] :> G[c1, c2 + {1, 0}, c3] + 
        G[c1, c2 + {0, 1}, c3], R1[c1_, c2_, c3_] :> listcal[R1[c1, c2, c3], 
        2, 1, 1]}
 
dks[expr_] := D[expr, ks] + (Expand[expr] /. (a_.)*(r:G[__] | R1[__]) :> 
       a*dksTerm[r])
 
dksTerm[expr_] := expr /. {g:G[c1_, c2_, c3_] :> 
       Module[{b2, term1, term2, term3}, b2 = b20 + g[[3,2]]; 
         term1 = (-b2/(2*ks))*(ks^2*listcal[g, 3, 2, 2] + g - 
            listcal[listcal[g, 3, 1, -2], 3, 2, 2]); 
         term2 = (1/(2*ks))*(ks^2*listcal[listcal[listcal[g, 1, 3, 1], 2, 1, 
               1], 3, 2, 1] + listcal[listcal[listcal[g, 1, 3, 1], 2, 1, 1], 
             3, 2, -1] - listcal[listcal[listcal[listcal[g, 1, 3, 1], 2, 1, 
               1], 3, 1, -2], 3, 2, 1]); term3 = (1/(2*ks))*
           (ks^2*listcal[listcal[listcal[g, 1, 4, 1], 2, 2, 1], 3, 2, 1] + 
            listcal[listcal[listcal[g, 1, 4, 1], 2, 2, 1], 3, 2, -1] - 
            listcal[listcal[listcal[listcal[g, 1, 4, 1], 2, 2, 1], 3, 1, -2], 
             3, 2, 1]); term1 + term2 + term3], r:R1[c1_, c2_, c3_] :> 
       Module[{b2, term1, term2, term3}, b2 = b20 + r[[3,2]]; 
         term1 = (-b2/(2*ks))*(ks^2*listcal[r, 3, 2, 2] + r - 
            listcal[listcal[r, 3, 1, -2], 3, 2, 2]); 
         term2 = (1/(2*ks))*(ks^2*listcal[listcal[listcal[r, 1, 1, 1], 2, 1, 
               1], 3, 2, 1] + listcal[listcal[listcal[r, 1, 1, 1], 2, 1, 1], 
             3, 2, -1] - listcal[listcal[listcal[listcal[r, 1, 1, 1], 2, 1, 
               1], 3, 1, -2], 3, 2, 1]); term3 = (1/(2*ks))*
           (ks^2*listcal[listcal[listcal[r, 1, 2, 1], 2, 1, 1], 3, 2, 1] + 
            listcal[listcal[listcal[r, 1, 2, 1], 2, 1, 1], 3, 2, -1] - 
            listcal[listcal[listcal[listcal[r, 1, 2, 1], 2, 1, 1], 3, 1, -2], 
             3, 2, 1]); term1 + term2 + term3]}
listcal[expr_, i_, j_, n_] := ReplacePart[expr, {i, j} -> expr[[i,j]] + n]
 
repvar = {P1 -> (-I)*k0, P2 -> (-I)*k0, P0R1 -> (-2*I)*k0, a10 -> a0, 
     a20 -> a0, b10 -> b0, b20 -> b0}
 
reppara2N = {a0 -> 2*nu, b0 -> -2*nu, d -> 3 - 2*ep, ks -> 1}
 
repNumericTestKira = {nu -> 17/7, ep -> 1/13, k0 -> 5/23}
 
id[expr_] := expr /. {G[{2, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{0, n2, n3, n4}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{1, n2, n3, n4}, {a1 - 1, a2}, {b1 + 1, b2}], 
      G[{n1_, 2, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{n1, 0, n3, n4}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{n1, 1, n3, n4}, {a1, a2 - 1}, {b1 + 1, b2}], 
      G[{n1_, n2_, 2, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{n1, n2, 0, n4}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{n1, n2, 1, n4}, {a1 - 1, a2}, {b1, b2 + 1}], 
      G[{n1_, n2_, n3_, 2}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{n1, n2, n3, 0}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{n1, n2, n3, 1}, {a1, a2 - 1}, {b1, b2 + 1}], 
      R1[{2, n4_}, {a_}, {b1_, b2_}] :> -R1[{0, n4}, {a}, {b1, b2}] - 
        (2*nu + 1)*R1[{1, n4}, {a - 1}, {b1, b2 + 1}], 
      R1[{n3_, 2}, {a_}, {b1_, b2_}] :> -R1[{n3, 0}, {a}, {b1, b2}] - 
        (2*nu + 1)*R1[{n3, 1}, {a - 1}, {b1, b2 + 1}]}
 
symmetry[expr_] := Module[{test}, 
     test = expr /. {R2[{n1_, n2_}, {a_}, {b1_, b2_}] :> R1[{n1, n2}, {a}, 
           {b2, b1}]}; test = 
       test /. G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
              If[a1 > a2, G[{n2, n1, n4, n3}, {a2, a1}, {b1, b2}], G[
                {n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
            G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
             If[b1 > b2, G[{n3, n4, n1, n2}, {a1, a2}, {b2, b1}], 
              G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
           G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
            If[a1 == a2 && n1 > n2, G[{n2, n1, n4, n3}, {a2, a1}, {b1, b2}], 
             G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
          G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
           If[a1 == a2 && n1 == n2 && n3 > n4, G[{n2, n1, n4, n3}, {a2, a1}, 
             {b1, b2}], G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
         G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
          If[b1 == b2 && n1 > n3, G[{n3, n4, n1, n2}, {a1, a2}, {b2, b1}], 
           G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
        G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
         If[b1 == b2 && n1 == n3 && n2 > n4, G[{n3, n4, n1, n2}, {a1, a2}, 
           {b2, b1}], G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]]; 
      test = test /. R1[{n3_, n4_}, {a_}, {b1_, b2_}] :> 
         If[n3 > n4, R1[{n4, n3}, {a}, {b1, b2}], R1[{n3, n4}, {a}, 
           {b1, b2}]]; Return[test]; ]
 
dk0[expr_] := D[expr, k0] + (Expand[expr] /. (a_.)*(r:G[__] | R1[__]) :> 
       a*dk0Term[r])
 
dk0Term[expr_] := expr /. {G[c1_, c2_, c3_] :> G[c1, c2 + {1, 0}, c3] + 
        G[c1, c2 + {0, 1}, c3], R1[c1_, c2_, c3_] :> listcal[R1[c1, c2, c3], 
        2, 1, 1]}
 
dks[expr_] := D[expr, ks] + (Expand[expr] /. (a_.)*(r:G[__] | R1[__]) :> 
       a*dksTerm[r])
 
dksTerm[expr_] := expr /. {g:G[c1_, c2_, c3_] :> 
       Module[{b2, term1, term2, term3}, b2 = b20 + g[[3,2]]; 
         term1 = (-b2/(2*ks))*(ks^2*listcal[g, 3, 2, 2] + g - 
            listcal[listcal[g, 3, 1, -2], 3, 2, 2]); 
         term2 = (1/(2*ks))*(ks^2*listcal[listcal[listcal[g, 1, 3, 1], 2, 1, 
               1], 3, 2, 1] + listcal[listcal[listcal[g, 1, 3, 1], 2, 1, 1], 
             3, 2, -1] - listcal[listcal[listcal[listcal[g, 1, 3, 1], 2, 1, 
               1], 3, 1, -2], 3, 2, 1]); term3 = (1/(2*ks))*
           (ks^2*listcal[listcal[listcal[g, 1, 4, 1], 2, 2, 1], 3, 2, 1] + 
            listcal[listcal[listcal[g, 1, 4, 1], 2, 2, 1], 3, 2, -1] - 
            listcal[listcal[listcal[listcal[g, 1, 4, 1], 2, 2, 1], 3, 1, -2], 
             3, 2, 1]); term1 + term2 + term3], r:R1[c1_, c2_, c3_] :> 
       Module[{b2, term1, term2, term3}, b2 = b20 + r[[3,2]]; 
         term1 = (-b2/(2*ks))*(ks^2*listcal[r, 3, 2, 2] + r - 
            listcal[listcal[r, 3, 1, -2], 3, 2, 2]); 
         term2 = (1/(2*ks))*(ks^2*listcal[listcal[listcal[r, 1, 1, 1], 2, 1, 
               1], 3, 2, 1] + listcal[listcal[listcal[r, 1, 1, 1], 2, 1, 1], 
             3, 2, -1] - listcal[listcal[listcal[listcal[r, 1, 1, 1], 2, 1, 
               1], 3, 1, -2], 3, 2, 1]); term3 = (1/(2*ks))*
           (ks^2*listcal[listcal[listcal[r, 1, 2, 1], 2, 1, 1], 3, 2, 1] + 
            listcal[listcal[listcal[r, 1, 2, 1], 2, 1, 1], 3, 2, -1] - 
            listcal[listcal[listcal[listcal[r, 1, 2, 1], 2, 1, 1], 3, 1, -2], 
             3, 2, 1]); term1 + term2 + term3]}
listcal[expr_, i_, j_, n_] := ReplacePart[expr, {i, j} -> expr[[i,j]] + n]
 
repvar = {P1 -> (-I)*k0, P2 -> (-I)*k0, P0R1 -> (-2*I)*k0, a10 -> a0, 
     a20 -> a0, b10 -> b0, b20 -> b0}
 
reppara2N = {a0 -> 2*nu, b0 -> -2*nu, d -> 3 - 2*ep, ks -> 1}
 
repNumericTestKira = {nu -> 17/7, ep -> 1/13, k0 -> 5/23}
 
id[expr_] := expr /. {G[{2, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{0, n2, n3, n4}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{1, n2, n3, n4}, {a1 - 1, a2}, {b1 + 1, b2}], 
      G[{n1_, 2, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{n1, 0, n3, n4}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{n1, 1, n3, n4}, {a1, a2 - 1}, {b1 + 1, b2}], 
      G[{n1_, n2_, 2, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{n1, n2, 0, n4}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{n1, n2, 1, n4}, {a1 - 1, a2}, {b1, b2 + 1}], 
      G[{n1_, n2_, n3_, 2}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{n1, n2, n3, 0}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{n1, n2, n3, 1}, {a1, a2 - 1}, {b1, b2 + 1}], 
      R1[{2, n4_}, {a_}, {b1_, b2_}] :> -R1[{0, n4}, {a}, {b1, b2}] - 
        (2*nu + 1)*R1[{1, n4}, {a - 1}, {b1, b2 + 1}], 
      R1[{n3_, 2}, {a_}, {b1_, b2_}] :> -R1[{n3, 0}, {a}, {b1, b2}] - 
        (2*nu + 1)*R1[{n3, 1}, {a - 1}, {b1, b2 + 1}]}
 
symmetry[expr_] := Module[{test}, 
     test = expr /. {R2[{n1_, n2_}, {a_}, {b1_, b2_}] :> R1[{n1, n2}, {a}, 
           {b2, b1}]}; test = 
       test /. G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
              If[a1 > a2, G[{n2, n1, n4, n3}, {a2, a1}, {b1, b2}], G[
                {n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
            G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
             If[b1 > b2, G[{n3, n4, n1, n2}, {a1, a2}, {b2, b1}], 
              G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
           G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
            If[a1 == a2 && n1 > n2, G[{n2, n1, n4, n3}, {a2, a1}, {b1, b2}], 
             G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
          G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
           If[a1 == a2 && n1 == n2 && n3 > n4, G[{n2, n1, n4, n3}, {a2, a1}, 
             {b1, b2}], G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
         G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
          If[b1 == b2 && n1 > n3, G[{n3, n4, n1, n2}, {a1, a2}, {b2, b1}], 
           G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
        G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
         If[b1 == b2 && n1 == n3 && n2 > n4, G[{n3, n4, n1, n2}, {a1, a2}, 
           {b2, b1}], G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]]; 
      test = test /. R1[{n3_, n4_}, {a_}, {b1_, b2_}] :> 
         If[n3 > n4, R1[{n4, n3}, {a}, {b1, b2}], R1[{n3, n4}, {a}, 
           {b1, b2}]]; Return[test]; ]
 
dk0[expr_] := D[expr, k0] + (Expand[expr] /. (a_.)*(r:G[__] | R1[__]) :> 
       a*dk0Term[r])
 
dk0Term[expr_] := expr /. {G[c1_, c2_, c3_] :> G[c1, c2 + {1, 0}, c3] + 
        G[c1, c2 + {0, 1}, c3], R1[c1_, c2_, c3_] :> listcal[R1[c1, c2, c3], 
        2, 1, 1]}
 
dks[expr_] := D[expr, ks] + (Expand[expr] /. (a_.)*(r:G[__] | R1[__]) :> 
       a*dksTerm[r])
 
dksTerm[expr_] := expr /. {g:G[c1_, c2_, c3_] :> 
       Module[{b2, term1, term2, term3}, b2 = b20 + g[[3,2]]; 
         term1 = (-b2/(2*ks))*(ks^2*listcal[g, 3, 2, 2] + g - 
            listcal[listcal[g, 3, 1, -2], 3, 2, 2]); 
         term2 = (1/(2*ks))*(ks^2*listcal[listcal[listcal[g, 1, 3, 1], 2, 1, 
               1], 3, 2, 1] + listcal[listcal[listcal[g, 1, 3, 1], 2, 1, 1], 
             3, 2, -1] - listcal[listcal[listcal[listcal[g, 1, 3, 1], 2, 1, 
               1], 3, 1, -2], 3, 2, 1]); term3 = (1/(2*ks))*
           (ks^2*listcal[listcal[listcal[g, 1, 4, 1], 2, 2, 1], 3, 2, 1] + 
            listcal[listcal[listcal[g, 1, 4, 1], 2, 2, 1], 3, 2, -1] - 
            listcal[listcal[listcal[listcal[g, 1, 4, 1], 2, 2, 1], 3, 1, -2], 
             3, 2, 1]); term1 + term2 + term3], r:R1[c1_, c2_, c3_] :> 
       Module[{b2, term1, term2, term3}, b2 = b20 + r[[3,2]]; 
         term1 = (-b2/(2*ks))*(ks^2*listcal[r, 3, 2, 2] + r - 
            listcal[listcal[r, 3, 1, -2], 3, 2, 2]); 
         term2 = (1/(2*ks))*(ks^2*listcal[listcal[listcal[r, 1, 1, 1], 2, 1, 
               1], 3, 2, 1] + listcal[listcal[listcal[r, 1, 1, 1], 2, 1, 1], 
             3, 2, -1] - listcal[listcal[listcal[listcal[r, 1, 1, 1], 2, 1, 
               1], 3, 1, -2], 3, 2, 1]); term3 = (1/(2*ks))*
           (ks^2*listcal[listcal[listcal[r, 1, 2, 1], 2, 1, 1], 3, 2, 1] + 
            listcal[listcal[listcal[r, 1, 2, 1], 2, 1, 1], 3, 2, -1] - 
            listcal[listcal[listcal[listcal[r, 1, 2, 1], 2, 1, 1], 3, 1, -2], 
             3, 2, 1]); term1 + term2 + term3]}
listcal[expr_, i_, j_, n_] := ReplacePart[expr, {i, j} -> expr[[i,j]] + n]
 
repvar = {P1 -> (-I)*k0, P2 -> (-I)*k0, P0R1 -> (-2*I)*k0, a10 -> a0, 
     a20 -> a0, b10 -> b0, b20 -> b0}
 
reppara2N = {a0 -> 2*nu, b0 -> -2*nu, d -> 3 - 2*ep, ks -> 1}
 
repNumericTestKira = {nu -> 17/7, ep -> 1/13, k0 -> 5/23}
 
id[expr_] := expr /. {G[{2, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{0, n2, n3, n4}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{1, n2, n3, n4}, {a1 - 1, a2}, {b1 + 1, b2}], 
      G[{n1_, 2, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{n1, 0, n3, n4}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{n1, 1, n3, n4}, {a1, a2 - 1}, {b1 + 1, b2}], 
      G[{n1_, n2_, 2, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{n1, n2, 0, n4}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{n1, n2, 1, n4}, {a1 - 1, a2}, {b1, b2 + 1}], 
      G[{n1_, n2_, n3_, 2}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{n1, n2, n3, 0}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{n1, n2, n3, 1}, {a1, a2 - 1}, {b1, b2 + 1}], 
      R1[{2, n4_}, {a_}, {b1_, b2_}] :> -R1[{0, n4}, {a}, {b1, b2}] - 
        (2*nu + 1)*R1[{1, n4}, {a - 1}, {b1, b2 + 1}], 
      R1[{n3_, 2}, {a_}, {b1_, b2_}] :> -R1[{n3, 0}, {a}, {b1, b2}] - 
        (2*nu + 1)*R1[{n3, 1}, {a - 1}, {b1, b2 + 1}]}
 
symmetry[expr_] := Module[{test}, 
     test = expr /. {R2[{n1_, n2_}, {a_}, {b1_, b2_}] :> R1[{n1, n2}, {a}, 
           {b2, b1}]}; test = 
       test /. G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
              If[a1 > a2, G[{n2, n1, n4, n3}, {a2, a1}, {b1, b2}], G[
                {n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
            G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
             If[b1 > b2, G[{n3, n4, n1, n2}, {a1, a2}, {b2, b1}], 
              G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
           G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
            If[a1 == a2 && n1 > n2, G[{n2, n1, n4, n3}, {a2, a1}, {b1, b2}], 
             G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
          G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
           If[a1 == a2 && n1 == n2 && n3 > n4, G[{n2, n1, n4, n3}, {a2, a1}, 
             {b1, b2}], G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
         G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
          If[b1 == b2 && n1 > n3, G[{n3, n4, n1, n2}, {a1, a2}, {b2, b1}], 
           G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
        G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
         If[b1 == b2 && n1 == n3 && n2 > n4, G[{n3, n4, n1, n2}, {a1, a2}, 
           {b2, b1}], G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]]; 
      test = test /. R1[{n3_, n4_}, {a_}, {b1_, b2_}] :> 
         If[n3 > n4, R1[{n4, n3}, {a}, {b1, b2}], R1[{n3, n4}, {a}, 
           {b1, b2}]]; Return[test]; ]
 
dk0[expr_] := D[expr, k0] + (Expand[expr] /. (a_.)*(r:G[__] | R1[__]) :> 
       a*dk0Term[r])
 
dk0Term[expr_] := expr /. {G[c1_, c2_, c3_] :> G[c1, c2 + {1, 0}, c3] + 
        G[c1, c2 + {0, 1}, c3], R1[c1_, c2_, c3_] :> listcal[R1[c1, c2, c3], 
        2, 1, 1]}
 
dks[expr_] := D[expr, ks] + (Expand[expr] /. (a_.)*(r:G[__] | R1[__]) :> 
       a*dksTerm[r])
 
dksTerm[expr_] := expr /. {g:G[c1_, c2_, c3_] :> 
       Module[{b2, term1, term2, term3}, b2 = b20 + g[[3,2]]; 
         term1 = (-b2/(2*ks))*(ks^2*listcal[g, 3, 2, 2] + g - 
            listcal[listcal[g, 3, 1, -2], 3, 2, 2]); 
         term2 = (1/(2*ks))*(ks^2*listcal[listcal[listcal[g, 1, 3, 1], 2, 1, 
               1], 3, 2, 1] + listcal[listcal[listcal[g, 1, 3, 1], 2, 1, 1], 
             3, 2, -1] - listcal[listcal[listcal[listcal[g, 1, 3, 1], 2, 1, 
               1], 3, 1, -2], 3, 2, 1]); term3 = (1/(2*ks))*
           (ks^2*listcal[listcal[listcal[g, 1, 4, 1], 2, 2, 1], 3, 2, 1] + 
            listcal[listcal[listcal[g, 1, 4, 1], 2, 2, 1], 3, 2, -1] - 
            listcal[listcal[listcal[listcal[g, 1, 4, 1], 2, 2, 1], 3, 1, -2], 
             3, 2, 1]); term1 + term2 + term3], r:R1[c1_, c2_, c3_] :> 
       Module[{b2, term1, term2, term3}, b2 = b20 + r[[3,2]]; 
         term1 = (-b2/(2*ks))*(ks^2*listcal[r, 3, 2, 2] + r - 
            listcal[listcal[r, 3, 1, -2], 3, 2, 2]); 
         term2 = (1/(2*ks))*(ks^2*listcal[listcal[listcal[r, 1, 1, 1], 2, 1, 
               1], 3, 2, 1] + listcal[listcal[listcal[r, 1, 1, 1], 2, 1, 1], 
             3, 2, -1] - listcal[listcal[listcal[listcal[r, 1, 1, 1], 2, 1, 
               1], 3, 1, -2], 3, 2, 1]); term3 = (1/(2*ks))*
           (ks^2*listcal[listcal[listcal[r, 1, 2, 1], 2, 1, 1], 3, 2, 1] + 
            listcal[listcal[listcal[r, 1, 2, 1], 2, 1, 1], 3, 2, -1] - 
            listcal[listcal[listcal[listcal[r, 1, 2, 1], 2, 1, 1], 3, 1, -2], 
             3, 2, 1]); term1 + term2 + term3]}
listcal[expr_, i_, j_, n_] := ReplacePart[expr, {i, j} -> expr[[i,j]] + n]
 
repvar = {P1 -> (-I)*k0, P2 -> (-I)*k0, P0R1 -> (-2*I)*k0, a10 -> a0, 
     a20 -> a0, b10 -> b0, b20 -> b0}
 
reppara2N = {a0 -> 2*nu, b0 -> -2*nu, d -> 3 - 2*ep, ks -> 1}
 
repNumericTestKira = {nu -> 17/7, ep -> 1/13, k0 -> 5/23}
 
id[expr_] := expr /. {G[{2, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{0, n2, n3, n4}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{1, n2, n3, n4}, {a1 - 1, a2}, {b1 + 1, b2}], 
      G[{n1_, 2, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{n1, 0, n3, n4}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{n1, 1, n3, n4}, {a1, a2 - 1}, {b1 + 1, b2}], 
      G[{n1_, n2_, 2, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{n1, n2, 0, n4}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{n1, n2, 1, n4}, {a1 - 1, a2}, {b1, b2 + 1}], 
      G[{n1_, n2_, n3_, 2}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{n1, n2, n3, 0}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{n1, n2, n3, 1}, {a1, a2 - 1}, {b1, b2 + 1}], 
      R1[{2, n4_}, {a_}, {b1_, b2_}] :> -R1[{0, n4}, {a}, {b1, b2}] - 
        (2*nu + 1)*R1[{1, n4}, {a - 1}, {b1, b2 + 1}], 
      R1[{n3_, 2}, {a_}, {b1_, b2_}] :> -R1[{n3, 0}, {a}, {b1, b2}] - 
        (2*nu + 1)*R1[{n3, 1}, {a - 1}, {b1, b2 + 1}]}
 
symmetry[expr_] := Module[{test}, 
     test = expr /. {R2[{n1_, n2_}, {a_}, {b1_, b2_}] :> R1[{n1, n2}, {a}, 
           {b2, b1}]}; test = 
       test /. G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
              If[a1 > a2, G[{n2, n1, n4, n3}, {a2, a1}, {b1, b2}], G[
                {n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
            G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
             If[b1 > b2, G[{n3, n4, n1, n2}, {a1, a2}, {b2, b1}], 
              G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
           G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
            If[a1 == a2 && n1 > n2, G[{n2, n1, n4, n3}, {a2, a1}, {b1, b2}], 
             G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
          G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
           If[a1 == a2 && n1 == n2 && n3 > n4, G[{n2, n1, n4, n3}, {a2, a1}, 
             {b1, b2}], G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
         G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
          If[b1 == b2 && n1 > n3, G[{n3, n4, n1, n2}, {a1, a2}, {b2, b1}], 
           G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
        G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
         If[b1 == b2 && n1 == n3 && n2 > n4, G[{n3, n4, n1, n2}, {a1, a2}, 
           {b2, b1}], G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]]; 
      test = test /. R1[{n3_, n4_}, {a_}, {b1_, b2_}] :> 
         If[n3 > n4, R1[{n4, n3}, {a}, {b1, b2}], R1[{n3, n4}, {a}, 
           {b1, b2}]]; Return[test]; ]
 
dk0[expr_] := D[expr, k0] + (Expand[expr] /. (a_.)*(r:G[__] | R1[__]) :> 
       a*dk0Term[r])
 
dk0Term[expr_] := expr /. {G[c1_, c2_, c3_] :> G[c1, c2 + {1, 0}, c3] + 
        G[c1, c2 + {0, 1}, c3], R1[c1_, c2_, c3_] :> listcal[R1[c1, c2, c3], 
        2, 1, 1]}
 
dks[expr_] := D[expr, ks] + (Expand[expr] /. (a_.)*(r:G[__] | R1[__]) :> 
       a*dksTerm[r])
 
dksTerm[expr_] := expr /. {g:G[c1_, c2_, c3_] :> 
       Module[{b2, term1, term2, term3}, b2 = b20 + g[[3,2]]; 
         term1 = (-b2/(2*ks))*(ks^2*listcal[g, 3, 2, 2] + g - 
            listcal[listcal[g, 3, 1, -2], 3, 2, 2]); 
         term2 = (1/(2*ks))*(ks^2*listcal[listcal[listcal[g, 1, 3, 1], 2, 1, 
               1], 3, 2, 1] + listcal[listcal[listcal[g, 1, 3, 1], 2, 1, 1], 
             3, 2, -1] - listcal[listcal[listcal[listcal[g, 1, 3, 1], 2, 1, 
               1], 3, 1, -2], 3, 2, 1]); term3 = (1/(2*ks))*
           (ks^2*listcal[listcal[listcal[g, 1, 4, 1], 2, 2, 1], 3, 2, 1] + 
            listcal[listcal[listcal[g, 1, 4, 1], 2, 2, 1], 3, 2, -1] - 
            listcal[listcal[listcal[listcal[g, 1, 4, 1], 2, 2, 1], 3, 1, -2], 
             3, 2, 1]); term1 + term2 + term3], r:R1[c1_, c2_, c3_] :> 
       Module[{b2, term1, term2, term3}, b2 = b20 + r[[3,2]]; 
         term1 = (-b2/(2*ks))*(ks^2*listcal[r, 3, 2, 2] + r - 
            listcal[listcal[r, 3, 1, -2], 3, 2, 2]); 
         term2 = (1/(2*ks))*(ks^2*listcal[listcal[listcal[r, 1, 1, 1], 2, 1, 
               1], 3, 2, 1] + listcal[listcal[listcal[r, 1, 1, 1], 2, 1, 1], 
             3, 2, -1] - listcal[listcal[listcal[listcal[r, 1, 1, 1], 2, 1, 
               1], 3, 1, -2], 3, 2, 1]); term3 = (1/(2*ks))*
           (ks^2*listcal[listcal[listcal[r, 1, 2, 1], 2, 1, 1], 3, 2, 1] + 
            listcal[listcal[listcal[r, 1, 2, 1], 2, 1, 1], 3, 2, -1] - 
            listcal[listcal[listcal[listcal[r, 1, 2, 1], 2, 1, 1], 3, 1, -2], 
             3, 2, 1]); term1 + term2 + term3]}
listcal[expr_, i_, j_, n_] := ReplacePart[expr, {i, j} -> expr[[i,j]] + n]
 
repvar = {P1 -> (-I)*k0, P2 -> (-I)*k0, P0R1 -> (-2*I)*k0, a10 -> a0, 
     a20 -> a0, b10 -> b0, b20 -> b0}
 
reppara2N = {a0 -> 2*nu, b0 -> -2*nu, d -> 3 - 2*ep, ks -> 1}
 
repNumericTestKira = {nu -> 17/7, ep -> 1/13, k0 -> 5/23}
 
id[expr_] := expr /. {G[{2, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{0, n2, n3, n4}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{1, n2, n3, n4}, {a1 - 1, a2}, {b1 + 1, b2}], 
      G[{n1_, 2, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{n1, 0, n3, n4}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{n1, 1, n3, n4}, {a1, a2 - 1}, {b1 + 1, b2}], 
      G[{n1_, n2_, 2, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{n1, n2, 0, n4}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{n1, n2, 1, n4}, {a1 - 1, a2}, {b1, b2 + 1}], 
      G[{n1_, n2_, n3_, 2}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{n1, n2, n3, 0}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{n1, n2, n3, 1}, {a1, a2 - 1}, {b1, b2 + 1}], 
      R1[{2, n4_}, {a_}, {b1_, b2_}] :> -R1[{0, n4}, {a}, {b1, b2}] - 
        (2*nu + 1)*R1[{1, n4}, {a - 1}, {b1, b2 + 1}], 
      R1[{n3_, 2}, {a_}, {b1_, b2_}] :> -R1[{n3, 0}, {a}, {b1, b2}] - 
        (2*nu + 1)*R1[{n3, 1}, {a - 1}, {b1, b2 + 1}]}
 
symmetry[expr_] := Module[{test}, 
     test = expr /. {R2[{n1_, n2_}, {a_}, {b1_, b2_}] :> R1[{n1, n2}, {a}, 
           {b2, b1}]}; test = 
       test /. G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
              If[a1 > a2, G[{n2, n1, n4, n3}, {a2, a1}, {b1, b2}], G[
                {n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
            G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
             If[b1 > b2, G[{n3, n4, n1, n2}, {a1, a2}, {b2, b1}], 
              G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
           G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
            If[a1 == a2 && n1 > n2, G[{n2, n1, n4, n3}, {a2, a1}, {b1, b2}], 
             G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
          G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
           If[a1 == a2 && n1 == n2 && n3 > n4, G[{n2, n1, n4, n3}, {a2, a1}, 
             {b1, b2}], G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
         G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
          If[b1 == b2 && n1 > n3, G[{n3, n4, n1, n2}, {a1, a2}, {b2, b1}], 
           G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
        G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
         If[b1 == b2 && n1 == n3 && n2 > n4, G[{n3, n4, n1, n2}, {a1, a2}, 
           {b2, b1}], G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]]; 
      test = test /. R1[{n3_, n4_}, {a_}, {b1_, b2_}] :> 
         If[n3 > n4, R1[{n4, n3}, {a}, {b1, b2}], R1[{n3, n4}, {a}, 
           {b1, b2}]]; Return[test]; ]
 
dk0[expr_] := D[expr, k0] + (Expand[expr] /. (a_.)*(r:G[__] | R1[__]) :> 
       a*dk0Term[r])
 
dk0Term[expr_] := expr /. {G[c1_, c2_, c3_] :> G[c1, c2 + {1, 0}, c3] + 
        G[c1, c2 + {0, 1}, c3], R1[c1_, c2_, c3_] :> listcal[R1[c1, c2, c3], 
        2, 1, 1]}
 
dks[expr_] := D[expr, ks] + (Expand[expr] /. (a_.)*(r:G[__] | R1[__]) :> 
       a*dksTerm[r])
 
dksTerm[expr_] := expr /. {g:G[c1_, c2_, c3_] :> 
       Module[{b2, term1, term2, term3}, b2 = b20 + g[[3,2]]; 
         term1 = (-b2/(2*ks))*(ks^2*listcal[g, 3, 2, 2] + g - 
            listcal[listcal[g, 3, 1, -2], 3, 2, 2]); 
         term2 = (1/(2*ks))*(ks^2*listcal[listcal[listcal[g, 1, 3, 1], 2, 1, 
               1], 3, 2, 1] + listcal[listcal[listcal[g, 1, 3, 1], 2, 1, 1], 
             3, 2, -1] - listcal[listcal[listcal[listcal[g, 1, 3, 1], 2, 1, 
               1], 3, 1, -2], 3, 2, 1]); term3 = (1/(2*ks))*
           (ks^2*listcal[listcal[listcal[g, 1, 4, 1], 2, 2, 1], 3, 2, 1] + 
            listcal[listcal[listcal[g, 1, 4, 1], 2, 2, 1], 3, 2, -1] - 
            listcal[listcal[listcal[listcal[g, 1, 4, 1], 2, 2, 1], 3, 1, -2], 
             3, 2, 1]); term1 + term2 + term3], r:R1[c1_, c2_, c3_] :> 
       Module[{b2, term1, term2, term3}, b2 = b20 + r[[3,2]]; 
         term1 = (-b2/(2*ks))*(ks^2*listcal[r, 3, 2, 2] + r - 
            listcal[listcal[r, 3, 1, -2], 3, 2, 2]); 
         term2 = (1/(2*ks))*(ks^2*listcal[listcal[listcal[r, 1, 1, 1], 2, 1, 
               1], 3, 2, 1] + listcal[listcal[listcal[r, 1, 1, 1], 2, 1, 1], 
             3, 2, -1] - listcal[listcal[listcal[listcal[r, 1, 1, 1], 2, 1, 
               1], 3, 1, -2], 3, 2, 1]); term3 = (1/(2*ks))*
           (ks^2*listcal[listcal[listcal[r, 1, 2, 1], 2, 1, 1], 3, 2, 1] + 
            listcal[listcal[listcal[r, 1, 2, 1], 2, 1, 1], 3, 2, -1] - 
            listcal[listcal[listcal[listcal[r, 1, 2, 1], 2, 1, 1], 3, 1, -2], 
             3, 2, 1]); term1 + term2 + term3]}
listcal[expr_, i_, j_, n_] := ReplacePart[expr, {i, j} -> expr[[i,j]] + n]
 
repvar = {P1 -> (-I)*k0, P2 -> (-I)*k0, P0R1 -> (-2*I)*k0, a10 -> a0, 
     a20 -> a0, b10 -> b0, b20 -> b0}
 
reppara2N = {a0 -> 2*nu, b0 -> -2*nu, d -> 3 - 2*ep, ks -> 1}
 
repNumericTestKira = {nu -> 17/7, ep -> 1/13, k0 -> 5/23}
 
id[expr_] := expr /. {G[{2, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{0, n2, n3, n4}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{1, n2, n3, n4}, {a1 - 1, a2}, {b1 + 1, b2}], 
      G[{n1_, 2, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{n1, 0, n3, n4}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{n1, 1, n3, n4}, {a1, a2 - 1}, {b1 + 1, b2}], 
      G[{n1_, n2_, 2, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{n1, n2, 0, n4}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{n1, n2, 1, n4}, {a1 - 1, a2}, {b1, b2 + 1}], 
      G[{n1_, n2_, n3_, 2}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{n1, n2, n3, 0}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{n1, n2, n3, 1}, {a1, a2 - 1}, {b1, b2 + 1}], 
      R1[{2, n4_}, {a_}, {b1_, b2_}] :> -R1[{0, n4}, {a}, {b1, b2}] - 
        (2*nu + 1)*R1[{1, n4}, {a - 1}, {b1, b2 + 1}], 
      R1[{n3_, 2}, {a_}, {b1_, b2_}] :> -R1[{n3, 0}, {a}, {b1, b2}] - 
        (2*nu + 1)*R1[{n3, 1}, {a - 1}, {b1, b2 + 1}]}
 
symmetry[expr_] := Module[{test}, 
     test = expr /. {R2[{n1_, n2_}, {a_}, {b1_, b2_}] :> R1[{n1, n2}, {a}, 
           {b2, b1}]}; test = 
       test /. G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
              If[a1 > a2, G[{n2, n1, n4, n3}, {a2, a1}, {b1, b2}], G[
                {n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
            G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
             If[b1 > b2, G[{n3, n4, n1, n2}, {a1, a2}, {b2, b1}], 
              G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
           G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
            If[a1 == a2 && n1 > n2, G[{n2, n1, n4, n3}, {a2, a1}, {b1, b2}], 
             G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
          G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
           If[a1 == a2 && n1 == n2 && n3 > n4, G[{n2, n1, n4, n3}, {a2, a1}, 
             {b1, b2}], G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
         G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
          If[b1 == b2 && n1 > n3, G[{n3, n4, n1, n2}, {a1, a2}, {b2, b1}], 
           G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
        G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
         If[b1 == b2 && n1 == n3 && n2 > n4, G[{n3, n4, n1, n2}, {a1, a2}, 
           {b2, b1}], G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]]; 
      test = test /. R1[{n3_, n4_}, {a_}, {b1_, b2_}] :> 
         If[n3 > n4, R1[{n4, n3}, {a}, {b1, b2}], R1[{n3, n4}, {a}, 
           {b1, b2}]]; Return[test]; ]
 
dk0[expr_] := D[expr, k0] + (Expand[expr] /. (a_.)*(r:G[__] | R1[__]) :> 
       a*dk0Term[r])
 
dk0Term[expr_] := expr /. {G[c1_, c2_, c3_] :> G[c1, c2 + {1, 0}, c3] + 
        G[c1, c2 + {0, 1}, c3], R1[c1_, c2_, c3_] :> listcal[R1[c1, c2, c3], 
        2, 1, 1]}
 
dks[expr_] := D[expr, ks] + (Expand[expr] /. (a_.)*(r:G[__] | R1[__]) :> 
       a*dksTerm[r])
 
dksTerm[expr_] := expr /. {g:G[c1_, c2_, c3_] :> 
       Module[{b2, term1, term2, term3}, b2 = b20 + g[[3,2]]; 
         term1 = (-b2/(2*ks))*(ks^2*listcal[g, 3, 2, 2] + g - 
            listcal[listcal[g, 3, 1, -2], 3, 2, 2]); 
         term2 = (1/(2*ks))*(ks^2*listcal[listcal[listcal[g, 1, 3, 1], 2, 1, 
               1], 3, 2, 1] + listcal[listcal[listcal[g, 1, 3, 1], 2, 1, 1], 
             3, 2, -1] - listcal[listcal[listcal[listcal[g, 1, 3, 1], 2, 1, 
               1], 3, 1, -2], 3, 2, 1]); term3 = (1/(2*ks))*
           (ks^2*listcal[listcal[listcal[g, 1, 4, 1], 2, 2, 1], 3, 2, 1] + 
            listcal[listcal[listcal[g, 1, 4, 1], 2, 2, 1], 3, 2, -1] - 
            listcal[listcal[listcal[listcal[g, 1, 4, 1], 2, 2, 1], 3, 1, -2], 
             3, 2, 1]); term1 + term2 + term3], r:R1[c1_, c2_, c3_] :> 
       Module[{b2, term1, term2, term3}, b2 = b20 + r[[3,2]]; 
         term1 = (-b2/(2*ks))*(ks^2*listcal[r, 3, 2, 2] + r - 
            listcal[listcal[r, 3, 1, -2], 3, 2, 2]); 
         term2 = (1/(2*ks))*(ks^2*listcal[listcal[listcal[r, 1, 1, 1], 2, 1, 
               1], 3, 2, 1] + listcal[listcal[listcal[r, 1, 1, 1], 2, 1, 1], 
             3, 2, -1] - listcal[listcal[listcal[listcal[r, 1, 1, 1], 2, 1, 
               1], 3, 1, -2], 3, 2, 1]); term3 = (1/(2*ks))*
           (ks^2*listcal[listcal[listcal[r, 1, 2, 1], 2, 1, 1], 3, 2, 1] + 
            listcal[listcal[listcal[r, 1, 2, 1], 2, 1, 1], 3, 2, -1] - 
            listcal[listcal[listcal[listcal[r, 1, 2, 1], 2, 1, 1], 3, 1, -2], 
             3, 2, 1]); term1 + term2 + term3]}
listcal[expr_, i_, j_, n_] := ReplacePart[expr, {i, j} -> expr[[i,j]] + n]
 
repvar = {P1 -> (-I)*k0, P2 -> (-I)*k0, P0R1 -> (-2*I)*k0, a10 -> a0, 
     a20 -> a0, b10 -> b0, b20 -> b0}
 
reppara2N = {a0 -> 2*nu, b0 -> -2*nu, d -> 3 - 2*ep, ks -> 1}
 
repNumericTestKira = {nu -> 17/7, ep -> 1/13, k0 -> 5/23}
 
id[expr_] := expr /. {G[{2, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{0, n2, n3, n4}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{1, n2, n3, n4}, {a1 - 1, a2}, {b1 + 1, b2}], 
      G[{n1_, 2, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{n1, 0, n3, n4}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{n1, 1, n3, n4}, {a1, a2 - 1}, {b1 + 1, b2}], 
      G[{n1_, n2_, 2, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{n1, n2, 0, n4}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{n1, n2, 1, n4}, {a1 - 1, a2}, {b1, b2 + 1}], 
      G[{n1_, n2_, n3_, 2}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{n1, n2, n3, 0}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{n1, n2, n3, 1}, {a1, a2 - 1}, {b1, b2 + 1}], 
      R1[{2, n4_}, {a_}, {b1_, b2_}] :> -R1[{0, n4}, {a}, {b1, b2}] - 
        (2*nu + 1)*R1[{1, n4}, {a - 1}, {b1, b2 + 1}], 
      R1[{n3_, 2}, {a_}, {b1_, b2_}] :> -R1[{n3, 0}, {a}, {b1, b2}] - 
        (2*nu + 1)*R1[{n3, 1}, {a - 1}, {b1, b2 + 1}]}
 
symmetry[expr_] := Module[{test}, 
     test = expr /. {R2[{n1_, n2_}, {a_}, {b1_, b2_}] :> R1[{n1, n2}, {a}, 
           {b2, b1}]}; test = 
       test /. G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
              If[a1 > a2, G[{n2, n1, n4, n3}, {a2, a1}, {b1, b2}], G[
                {n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
            G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
             If[b1 > b2, G[{n3, n4, n1, n2}, {a1, a2}, {b2, b1}], 
              G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
           G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
            If[a1 == a2 && n1 > n2, G[{n2, n1, n4, n3}, {a2, a1}, {b1, b2}], 
             G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
          G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
           If[a1 == a2 && n1 == n2 && n3 > n4, G[{n2, n1, n4, n3}, {a2, a1}, 
             {b1, b2}], G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
         G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
          If[b1 == b2 && n1 > n3, G[{n3, n4, n1, n2}, {a1, a2}, {b2, b1}], 
           G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
        G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
         If[b1 == b2 && n1 == n3 && n2 > n4, G[{n3, n4, n1, n2}, {a1, a2}, 
           {b2, b1}], G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]]; 
      test = test /. R1[{n3_, n4_}, {a_}, {b1_, b2_}] :> 
         If[n3 > n4, R1[{n4, n3}, {a}, {b1, b2}], R1[{n3, n4}, {a}, 
           {b1, b2}]]; Return[test]; ]
 
dk0[expr_] := D[expr, k0] + (Expand[expr] /. (a_.)*(r:G[__] | R1[__]) :> 
       a*dk0Term[r])
 
dk0Term[expr_] := expr /. {G[c1_, c2_, c3_] :> G[c1, c2 + {1, 0}, c3] + 
        G[c1, c2 + {0, 1}, c3], R1[c1_, c2_, c3_] :> listcal[R1[c1, c2, c3], 
        2, 1, 1]}
 
dks[expr_] := D[expr, ks] + (Expand[expr] /. (a_.)*(r:G[__] | R1[__]) :> 
       a*dksTerm[r])
 
dksTerm[expr_] := expr /. {g:G[c1_, c2_, c3_] :> 
       Module[{b2, term1, term2, term3}, b2 = b20 + g[[3,2]]; 
         term1 = (-b2/(2*ks))*(ks^2*listcal[g, 3, 2, 2] + g - 
            listcal[listcal[g, 3, 1, -2], 3, 2, 2]); 
         term2 = (1/(2*ks))*(ks^2*listcal[listcal[listcal[g, 1, 3, 1], 2, 1, 
               1], 3, 2, 1] + listcal[listcal[listcal[g, 1, 3, 1], 2, 1, 1], 
             3, 2, -1] - listcal[listcal[listcal[listcal[g, 1, 3, 1], 2, 1, 
               1], 3, 1, -2], 3, 2, 1]); term3 = (1/(2*ks))*
           (ks^2*listcal[listcal[listcal[g, 1, 4, 1], 2, 2, 1], 3, 2, 1] + 
            listcal[listcal[listcal[g, 1, 4, 1], 2, 2, 1], 3, 2, -1] - 
            listcal[listcal[listcal[listcal[g, 1, 4, 1], 2, 2, 1], 3, 1, -2], 
             3, 2, 1]); term1 + term2 + term3], r:R1[c1_, c2_, c3_] :> 
       Module[{b2, term1, term2, term3}, b2 = b20 + r[[3,2]]; 
         term1 = (-b2/(2*ks))*(ks^2*listcal[r, 3, 2, 2] + r - 
            listcal[listcal[r, 3, 1, -2], 3, 2, 2]); 
         term2 = (1/(2*ks))*(ks^2*listcal[listcal[listcal[r, 1, 1, 1], 2, 1, 
               1], 3, 2, 1] + listcal[listcal[listcal[r, 1, 1, 1], 2, 1, 1], 
             3, 2, -1] - listcal[listcal[listcal[listcal[r, 1, 1, 1], 2, 1, 
               1], 3, 1, -2], 3, 2, 1]); term3 = (1/(2*ks))*
           (ks^2*listcal[listcal[listcal[r, 1, 2, 1], 2, 1, 1], 3, 2, 1] + 
            listcal[listcal[listcal[r, 1, 2, 1], 2, 1, 1], 3, 2, -1] - 
            listcal[listcal[listcal[listcal[r, 1, 2, 1], 2, 1, 1], 3, 1, -2], 
             3, 2, 1]); term1 + term2 + term3]}
listcal[expr_, i_, j_, n_] := ReplacePart[expr, {i, j} -> expr[[i,j]] + n]
 
repvar = {P1 -> (-I)*k0, P2 -> (-I)*k0, P0R1 -> (-2*I)*k0, a10 -> a0, 
     a20 -> a0, b10 -> b0, b20 -> b0}
 
reppara2N = {a0 -> 2*nu, b0 -> -2*nu, d -> 3 - 2*ep, ks -> 1}
 
repNumericTestKira = {nu -> 17/7, k0 -> 5/23}
 
id[expr_] := expr /. {G[{2, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{0, n2, n3, n4}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{1, n2, n3, n4}, {a1 - 1, a2}, {b1 + 1, b2}], 
      G[{n1_, 2, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{n1, 0, n3, n4}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{n1, 1, n3, n4}, {a1, a2 - 1}, {b1 + 1, b2}], 
      G[{n1_, n2_, 2, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{n1, n2, 0, n4}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{n1, n2, 1, n4}, {a1 - 1, a2}, {b1, b2 + 1}], 
      G[{n1_, n2_, n3_, 2}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{n1, n2, n3, 0}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{n1, n2, n3, 1}, {a1, a2 - 1}, {b1, b2 + 1}], 
      R1[{2, n4_}, {a_}, {b1_, b2_}] :> -R1[{0, n4}, {a}, {b1, b2}] - 
        (2*nu + 1)*R1[{1, n4}, {a - 1}, {b1, b2 + 1}], 
      R1[{n3_, 2}, {a_}, {b1_, b2_}] :> -R1[{n3, 0}, {a}, {b1, b2}] - 
        (2*nu + 1)*R1[{n3, 1}, {a - 1}, {b1, b2 + 1}]}
 
symmetry[expr_] := Module[{test}, 
     test = expr /. {R2[{n1_, n2_}, {a_}, {b1_, b2_}] :> R1[{n1, n2}, {a}, 
           {b2, b1}]}; test = 
       test /. G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
              If[a1 > a2, G[{n2, n1, n4, n3}, {a2, a1}, {b1, b2}], G[
                {n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
            G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
             If[b1 > b2, G[{n3, n4, n1, n2}, {a1, a2}, {b2, b1}], 
              G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
           G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
            If[a1 == a2 && n1 > n2, G[{n2, n1, n4, n3}, {a2, a1}, {b1, b2}], 
             G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
          G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
           If[a1 == a2 && n1 == n2 && n3 > n4, G[{n2, n1, n4, n3}, {a2, a1}, 
             {b1, b2}], G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
         G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
          If[b1 == b2 && n1 > n3, G[{n3, n4, n1, n2}, {a1, a2}, {b2, b1}], 
           G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
        G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
         If[b1 == b2 && n1 == n3 && n2 > n4, G[{n3, n4, n1, n2}, {a1, a2}, 
           {b2, b1}], G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]]; 
      test = test /. R1[{n3_, n4_}, {a_}, {b1_, b2_}] :> 
         If[n3 > n4, R1[{n4, n3}, {a}, {b1, b2}], R1[{n3, n4}, {a}, 
           {b1, b2}]]; Return[test]; ]
 
dk0[expr_] := D[expr, k0] + (Expand[expr] /. (a_.)*(r:G[__] | R1[__]) :> 
       a*dk0Term[r])
 
dk0Term[expr_] := expr /. {G[c1_, c2_, c3_] :> G[c1, c2 + {1, 0}, c3] + 
        G[c1, c2 + {0, 1}, c3], R1[c1_, c2_, c3_] :> listcal[R1[c1, c2, c3], 
        2, 1, 1]}
 
dks[expr_] := D[expr, ks] + (Expand[expr] /. (a_.)*(r:G[__] | R1[__]) :> 
       a*dksTerm[r])
 
dksTerm[expr_] := expr /. {g:G[c1_, c2_, c3_] :> 
       Module[{b2, term1, term2, term3}, b2 = b20 + g[[3,2]]; 
         term1 = (-b2/(2*ks))*(ks^2*listcal[g, 3, 2, 2] + g - 
            listcal[listcal[g, 3, 1, -2], 3, 2, 2]); 
         term2 = (1/(2*ks))*(ks^2*listcal[listcal[listcal[g, 1, 3, 1], 2, 1, 
               1], 3, 2, 1] + listcal[listcal[listcal[g, 1, 3, 1], 2, 1, 1], 
             3, 2, -1] - listcal[listcal[listcal[listcal[g, 1, 3, 1], 2, 1, 
               1], 3, 1, -2], 3, 2, 1]); term3 = (1/(2*ks))*
           (ks^2*listcal[listcal[listcal[g, 1, 4, 1], 2, 2, 1], 3, 2, 1] + 
            listcal[listcal[listcal[g, 1, 4, 1], 2, 2, 1], 3, 2, -1] - 
            listcal[listcal[listcal[listcal[g, 1, 4, 1], 2, 2, 1], 3, 1, -2], 
             3, 2, 1]); term1 + term2 + term3], r:R1[c1_, c2_, c3_] :> 
       Module[{b2, term1, term2, term3}, b2 = b20 + r[[3,2]]; 
         term1 = (-b2/(2*ks))*(ks^2*listcal[r, 3, 2, 2] + r - 
            listcal[listcal[r, 3, 1, -2], 3, 2, 2]); 
         term2 = (1/(2*ks))*(ks^2*listcal[listcal[listcal[r, 1, 1, 1], 2, 1, 
               1], 3, 2, 1] + listcal[listcal[listcal[r, 1, 1, 1], 2, 1, 1], 
             3, 2, -1] - listcal[listcal[listcal[listcal[r, 1, 1, 1], 2, 1, 
               1], 3, 1, -2], 3, 2, 1]); term3 = (1/(2*ks))*
           (ks^2*listcal[listcal[listcal[r, 1, 2, 1], 2, 1, 1], 3, 2, 1] + 
            listcal[listcal[listcal[r, 1, 2, 1], 2, 1, 1], 3, 2, -1] - 
            listcal[listcal[listcal[listcal[r, 1, 2, 1], 2, 1, 1], 3, 1, -2], 
             3, 2, 1]); term1 + term2 + term3]}
listcal[expr_, i_, j_, n_] := ReplacePart[expr, {i, j} -> expr[[i,j]] + n]
 
repvar = {P1 -> (-I)*k0, P2 -> (-I)*k0, P0R1 -> (-2*I)*k0, a10 -> a0, 
     a20 -> a0, b10 -> b0, b20 -> b0}
 
reppara2N = {a0 -> da + 2*nu, b0 -> -2*nu, d -> 3 - 2*ep, ks -> 1}
 
repNumericTestKira = {nu -> 17/7, ep -> 1/13, k0 -> 5/23}
 
id[expr_] := expr /. {G[{2, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{0, n2, n3, n4}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{1, n2, n3, n4}, {a1 - 1, a2}, {b1 + 1, b2}], 
      G[{n1_, 2, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{n1, 0, n3, n4}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{n1, 1, n3, n4}, {a1, a2 - 1}, {b1 + 1, b2}], 
      G[{n1_, n2_, 2, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{n1, n2, 0, n4}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{n1, n2, 1, n4}, {a1 - 1, a2}, {b1, b2 + 1}], 
      G[{n1_, n2_, n3_, 2}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{n1, n2, n3, 0}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{n1, n2, n3, 1}, {a1, a2 - 1}, {b1, b2 + 1}], 
      R1[{2, n4_}, {a_}, {b1_, b2_}] :> -R1[{0, n4}, {a}, {b1, b2}] - 
        (2*nu + 1)*R1[{1, n4}, {a - 1}, {b1, b2 + 1}], 
      R1[{n3_, 2}, {a_}, {b1_, b2_}] :> -R1[{n3, 0}, {a}, {b1, b2}] - 
        (2*nu + 1)*R1[{n3, 1}, {a - 1}, {b1, b2 + 1}]}
 
symmetry[expr_] := Module[{test}, 
     test = expr /. {R2[{n1_, n2_}, {a_}, {b1_, b2_}] :> R1[{n1, n2}, {a}, 
           {b2, b1}]}; test = 
       test /. G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
              If[a1 > a2, G[{n2, n1, n4, n3}, {a2, a1}, {b1, b2}], G[
                {n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
            G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
             If[b1 > b2, G[{n3, n4, n1, n2}, {a1, a2}, {b2, b1}], 
              G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
           G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
            If[a1 == a2 && n1 > n2, G[{n2, n1, n4, n3}, {a2, a1}, {b1, b2}], 
             G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
          G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
           If[a1 == a2 && n1 == n2 && n3 > n4, G[{n2, n1, n4, n3}, {a2, a1}, 
             {b1, b2}], G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
         G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
          If[b1 == b2 && n1 > n3, G[{n3, n4, n1, n2}, {a1, a2}, {b2, b1}], 
           G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
        G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
         If[b1 == b2 && n1 == n3 && n2 > n4, G[{n3, n4, n1, n2}, {a1, a2}, 
           {b2, b1}], G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]]; 
      test = test /. R1[{n3_, n4_}, {a_}, {b1_, b2_}] :> 
         If[n3 > n4, R1[{n4, n3}, {a}, {b1, b2}], R1[{n3, n4}, {a}, 
           {b1, b2}]]; Return[test]; ]
 
dk0[expr_] := D[expr, k0] + (Expand[expr] /. (a_.)*(r:G[__] | R1[__]) :> 
       a*dk0Term[r])
 
dk0Term[expr_] := expr /. {G[c1_, c2_, c3_] :> G[c1, c2 + {1, 0}, c3] + 
        G[c1, c2 + {0, 1}, c3], R1[c1_, c2_, c3_] :> listcal[R1[c1, c2, c3], 
        2, 1, 1]}
 
dks[expr_] := D[expr, ks] + (Expand[expr] /. (a_.)*(r:G[__] | R1[__]) :> 
       a*dksTerm[r])
 
dksTerm[expr_] := expr /. {g:G[c1_, c2_, c3_] :> 
       Module[{b2, term1, term2, term3}, b2 = b20 + g[[3,2]]; 
         term1 = (-b2/(2*ks))*(ks^2*listcal[g, 3, 2, 2] + g - 
            listcal[listcal[g, 3, 1, -2], 3, 2, 2]); 
         term2 = (1/(2*ks))*(ks^2*listcal[listcal[listcal[g, 1, 3, 1], 2, 1, 
               1], 3, 2, 1] + listcal[listcal[listcal[g, 1, 3, 1], 2, 1, 1], 
             3, 2, -1] - listcal[listcal[listcal[listcal[g, 1, 3, 1], 2, 1, 
               1], 3, 1, -2], 3, 2, 1]); term3 = (1/(2*ks))*
           (ks^2*listcal[listcal[listcal[g, 1, 4, 1], 2, 2, 1], 3, 2, 1] + 
            listcal[listcal[listcal[g, 1, 4, 1], 2, 2, 1], 3, 2, -1] - 
            listcal[listcal[listcal[listcal[g, 1, 4, 1], 2, 2, 1], 3, 1, -2], 
             3, 2, 1]); term1 + term2 + term3], r:R1[c1_, c2_, c3_] :> 
       Module[{b2, term1, term2, term3}, b2 = b20 + r[[3,2]]; 
         term1 = (-b2/(2*ks))*(ks^2*listcal[r, 3, 2, 2] + r - 
            listcal[listcal[r, 3, 1, -2], 3, 2, 2]); 
         term2 = (1/(2*ks))*(ks^2*listcal[listcal[listcal[r, 1, 1, 1], 2, 1, 
               1], 3, 2, 1] + listcal[listcal[listcal[r, 1, 1, 1], 2, 1, 1], 
             3, 2, -1] - listcal[listcal[listcal[listcal[r, 1, 1, 1], 2, 1, 
               1], 3, 1, -2], 3, 2, 1]); term3 = (1/(2*ks))*
           (ks^2*listcal[listcal[listcal[r, 1, 2, 1], 2, 1, 1], 3, 2, 1] + 
            listcal[listcal[listcal[r, 1, 2, 1], 2, 1, 1], 3, 2, -1] - 
            listcal[listcal[listcal[listcal[r, 1, 2, 1], 2, 1, 1], 3, 1, -2], 
             3, 2, 1]); term1 + term2 + term3]}
listcal[expr_, i_, j_, n_] := ReplacePart[expr, {i, j} -> expr[[i,j]] + n]
 
repvar = {P1 -> (-I)*k0, P2 -> (-I)*k0, P0R1 -> (-2*I)*k0, a10 -> a0, 
     a20 -> a0, b10 -> b0, b20 -> b0}
 
reppara2N = {a0 -> da + 2*nu, b0 -> -2*nu, d -> 3 - 2*ep, ks -> 1}
 
repNumericTestKira = {nu -> 17/7, ep -> 1/13, k0 -> 5/23}
 
id[expr_] := expr /. {G[{2, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{0, n2, n3, n4}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{1, n2, n3, n4}, {a1 - 1, a2}, {b1 + 1, b2}], 
      G[{n1_, 2, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{n1, 0, n3, n4}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{n1, 1, n3, n4}, {a1, a2 - 1}, {b1 + 1, b2}], 
      G[{n1_, n2_, 2, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{n1, n2, 0, n4}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{n1, n2, 1, n4}, {a1 - 1, a2}, {b1, b2 + 1}], 
      G[{n1_, n2_, n3_, 2}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{n1, n2, n3, 0}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{n1, n2, n3, 1}, {a1, a2 - 1}, {b1, b2 + 1}], 
      R1[{2, n4_}, {a_}, {b1_, b2_}] :> -R1[{0, n4}, {a}, {b1, b2}] - 
        (2*nu + 1)*R1[{1, n4}, {a - 1}, {b1, b2 + 1}], 
      R1[{n3_, 2}, {a_}, {b1_, b2_}] :> -R1[{n3, 0}, {a}, {b1, b2}] - 
        (2*nu + 1)*R1[{n3, 1}, {a - 1}, {b1, b2 + 1}]}
 
symmetry[expr_] := Module[{test}, 
     test = expr /. {R2[{n1_, n2_}, {a_}, {b1_, b2_}] :> R1[{n1, n2}, {a}, 
           {b2, b1}]}; test = 
       test /. G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
              If[a1 > a2, G[{n2, n1, n4, n3}, {a2, a1}, {b1, b2}], G[
                {n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
            G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
             If[b1 > b2, G[{n3, n4, n1, n2}, {a1, a2}, {b2, b1}], 
              G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
           G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
            If[a1 == a2 && n1 > n2, G[{n2, n1, n4, n3}, {a2, a1}, {b1, b2}], 
             G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
          G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
           If[a1 == a2 && n1 == n2 && n3 > n4, G[{n2, n1, n4, n3}, {a2, a1}, 
             {b1, b2}], G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
         G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
          If[b1 == b2 && n1 > n3, G[{n3, n4, n1, n2}, {a1, a2}, {b2, b1}], 
           G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
        G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
         If[b1 == b2 && n1 == n3 && n2 > n4, G[{n3, n4, n1, n2}, {a1, a2}, 
           {b2, b1}], G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]]; 
      test = test /. R1[{n3_, n4_}, {a_}, {b1_, b2_}] :> 
         If[n3 > n4, R1[{n4, n3}, {a}, {b1, b2}], R1[{n3, n4}, {a}, 
           {b1, b2}]]; Return[test]; ]
 
dk0[expr_] := D[expr, k0] + (Expand[expr] /. (a_.)*(r:G[__] | R1[__]) :> 
       a*dk0Term[r])
 
dk0Term[expr_] := expr /. {G[c1_, c2_, c3_] :> G[c1, c2 + {1, 0}, c3] + 
        G[c1, c2 + {0, 1}, c3], R1[c1_, c2_, c3_] :> listcal[R1[c1, c2, c3], 
        2, 1, 1]}
 
dks[expr_] := D[expr, ks] + (Expand[expr] /. (a_.)*(r:G[__] | R1[__]) :> 
       a*dksTerm[r])
 
dksTerm[expr_] := expr /. {g:G[c1_, c2_, c3_] :> 
       Module[{b2, term1, term2, term3}, b2 = b20 + g[[3,2]]; 
         term1 = (-b2/(2*ks))*(ks^2*listcal[g, 3, 2, 2] + g - 
            listcal[listcal[g, 3, 1, -2], 3, 2, 2]); 
         term2 = (1/(2*ks))*(ks^2*listcal[listcal[listcal[g, 1, 3, 1], 2, 1, 
               1], 3, 2, 1] + listcal[listcal[listcal[g, 1, 3, 1], 2, 1, 1], 
             3, 2, -1] - listcal[listcal[listcal[listcal[g, 1, 3, 1], 2, 1, 
               1], 3, 1, -2], 3, 2, 1]); term3 = (1/(2*ks))*
           (ks^2*listcal[listcal[listcal[g, 1, 4, 1], 2, 2, 1], 3, 2, 1] + 
            listcal[listcal[listcal[g, 1, 4, 1], 2, 2, 1], 3, 2, -1] - 
            listcal[listcal[listcal[listcal[g, 1, 4, 1], 2, 2, 1], 3, 1, -2], 
             3, 2, 1]); term1 + term2 + term3], r:R1[c1_, c2_, c3_] :> 
       Module[{b2, term1, term2, term3}, b2 = b20 + r[[3,2]]; 
         term1 = (-b2/(2*ks))*(ks^2*listcal[r, 3, 2, 2] + r - 
            listcal[listcal[r, 3, 1, -2], 3, 2, 2]); 
         term2 = (1/(2*ks))*(ks^2*listcal[listcal[listcal[r, 1, 1, 1], 2, 1, 
               1], 3, 2, 1] + listcal[listcal[listcal[r, 1, 1, 1], 2, 1, 1], 
             3, 2, -1] - listcal[listcal[listcal[listcal[r, 1, 1, 1], 2, 1, 
               1], 3, 1, -2], 3, 2, 1]); term3 = (1/(2*ks))*
           (ks^2*listcal[listcal[listcal[r, 1, 2, 1], 2, 1, 1], 3, 2, 1] + 
            listcal[listcal[listcal[r, 1, 2, 1], 2, 1, 1], 3, 2, -1] - 
            listcal[listcal[listcal[listcal[r, 1, 2, 1], 2, 1, 1], 3, 1, -2], 
             3, 2, 1]); term1 + term2 + term3]}
listcal[expr_, i_, j_, n_] := ReplacePart[expr, {i, j} -> expr[[i,j]] + n]
 
repvar = {P1 -> (-I)*k0, P2 -> (-I)*k0, P0R1 -> (-2*I)*k0, a10 -> a0, 
     a20 -> a0, b10 -> b0, b20 -> b0}
 
reppara2N = {a0 -> da + 2*nu, b0 -> -2*nu, d -> 3 - 2*ep, ks -> 1}
 
repNumericTestKira = {nu -> 17/7, ep -> 1/13, k0 -> 5/23}
 
id[expr_] := expr /. {G[{2, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{0, n2, n3, n4}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{1, n2, n3, n4}, {a1 - 1, a2}, {b1 + 1, b2}], 
      G[{n1_, 2, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{n1, 0, n3, n4}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{n1, 1, n3, n4}, {a1, a2 - 1}, {b1 + 1, b2}], 
      G[{n1_, n2_, 2, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{n1, n2, 0, n4}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{n1, n2, 1, n4}, {a1 - 1, a2}, {b1, b2 + 1}], 
      G[{n1_, n2_, n3_, 2}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{n1, n2, n3, 0}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{n1, n2, n3, 1}, {a1, a2 - 1}, {b1, b2 + 1}], 
      R1[{2, n4_}, {a_}, {b1_, b2_}] :> -R1[{0, n4}, {a}, {b1, b2}] - 
        (2*nu + 1)*R1[{1, n4}, {a - 1}, {b1, b2 + 1}], 
      R1[{n3_, 2}, {a_}, {b1_, b2_}] :> -R1[{n3, 0}, {a}, {b1, b2}] - 
        (2*nu + 1)*R1[{n3, 1}, {a - 1}, {b1, b2 + 1}]}
 
symmetry[expr_] := Module[{test}, 
     test = expr /. {R2[{n1_, n2_}, {a_}, {b1_, b2_}] :> R1[{n1, n2}, {a}, 
           {b2, b1}]}; test = 
       test /. G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
              If[a1 > a2, G[{n2, n1, n4, n3}, {a2, a1}, {b1, b2}], G[
                {n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
            G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
             If[b1 > b2, G[{n3, n4, n1, n2}, {a1, a2}, {b2, b1}], 
              G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
           G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
            If[a1 == a2 && n1 > n2, G[{n2, n1, n4, n3}, {a2, a1}, {b1, b2}], 
             G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
          G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
           If[a1 == a2 && n1 == n2 && n3 > n4, G[{n2, n1, n4, n3}, {a2, a1}, 
             {b1, b2}], G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
         G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
          If[b1 == b2 && n1 > n3, G[{n3, n4, n1, n2}, {a1, a2}, {b2, b1}], 
           G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
        G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
         If[b1 == b2 && n1 == n3 && n2 > n4, G[{n3, n4, n1, n2}, {a1, a2}, 
           {b2, b1}], G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]]; 
      test = test /. R1[{n3_, n4_}, {a_}, {b1_, b2_}] :> 
         If[n3 > n4, R1[{n4, n3}, {a}, {b1, b2}], R1[{n3, n4}, {a}, 
           {b1, b2}]]; Return[test]; ]
 
dk0[expr_] := D[expr, k0] + (Expand[expr] /. (a_.)*(r:G[__] | R1[__]) :> 
       a*dk0Term[r])
 
dk0Term[expr_] := expr /. {G[c1_, c2_, c3_] :> G[c1, c2 + {1, 0}, c3] + 
        G[c1, c2 + {0, 1}, c3], R1[c1_, c2_, c3_] :> listcal[R1[c1, c2, c3], 
        2, 1, 1]}
 
dks[expr_] := D[expr, ks] + (Expand[expr] /. (a_.)*(r:G[__] | R1[__]) :> 
       a*dksTerm[r])
 
dksTerm[expr_] := expr /. {g:G[c1_, c2_, c3_] :> 
       Module[{b2, term1, term2, term3}, b2 = b20 + g[[3,2]]; 
         term1 = (-b2/(2*ks))*(ks^2*listcal[g, 3, 2, 2] + g - 
            listcal[listcal[g, 3, 1, -2], 3, 2, 2]); 
         term2 = (1/(2*ks))*(ks^2*listcal[listcal[listcal[g, 1, 3, 1], 2, 1, 
               1], 3, 2, 1] + listcal[listcal[listcal[g, 1, 3, 1], 2, 1, 1], 
             3, 2, -1] - listcal[listcal[listcal[listcal[g, 1, 3, 1], 2, 1, 
               1], 3, 1, -2], 3, 2, 1]); term3 = (1/(2*ks))*
           (ks^2*listcal[listcal[listcal[g, 1, 4, 1], 2, 2, 1], 3, 2, 1] + 
            listcal[listcal[listcal[g, 1, 4, 1], 2, 2, 1], 3, 2, -1] - 
            listcal[listcal[listcal[listcal[g, 1, 4, 1], 2, 2, 1], 3, 1, -2], 
             3, 2, 1]); term1 + term2 + term3], r:R1[c1_, c2_, c3_] :> 
       Module[{b2, term1, term2, term3}, b2 = b20 + r[[3,2]]; 
         term1 = (-b2/(2*ks))*(ks^2*listcal[r, 3, 2, 2] + r - 
            listcal[listcal[r, 3, 1, -2], 3, 2, 2]); 
         term2 = (1/(2*ks))*(ks^2*listcal[listcal[listcal[r, 1, 1, 1], 2, 1, 
               1], 3, 2, 1] + listcal[listcal[listcal[r, 1, 1, 1], 2, 1, 1], 
             3, 2, -1] - listcal[listcal[listcal[listcal[r, 1, 1, 1], 2, 1, 
               1], 3, 1, -2], 3, 2, 1]); term3 = (1/(2*ks))*
           (ks^2*listcal[listcal[listcal[r, 1, 2, 1], 2, 1, 1], 3, 2, 1] + 
            listcal[listcal[listcal[r, 1, 2, 1], 2, 1, 1], 3, 2, -1] - 
            listcal[listcal[listcal[listcal[r, 1, 2, 1], 2, 1, 1], 3, 1, -2], 
             3, 2, 1]); term1 + term2 + term3]}
listcal[expr_, i_, j_, n_] := ReplacePart[expr, {i, j} -> expr[[i,j]] + n]
 
repvar = {P1 -> (-I)*k0, P2 -> (-I)*k0, P0R1 -> (-2*I)*k0, a10 -> a0, 
     a20 -> a0, b10 -> b0, b20 -> b0}
 
reppara2N = {a0 -> da + 2*nu, b0 -> -2*nu, d -> 3 - 2*ep, ks -> 1}
 
repNumericTestKira = {nu -> 17/7, ep -> 1/13, k0 -> 5/23}
 
id[expr_] := expr /. {G[{2, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{0, n2, n3, n4}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{1, n2, n3, n4}, {a1 - 1, a2}, {b1 + 1, b2}], 
      G[{n1_, 2, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{n1, 0, n3, n4}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{n1, 1, n3, n4}, {a1, a2 - 1}, {b1 + 1, b2}], 
      G[{n1_, n2_, 2, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{n1, n2, 0, n4}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{n1, n2, 1, n4}, {a1 - 1, a2}, {b1, b2 + 1}], 
      G[{n1_, n2_, n3_, 2}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{n1, n2, n3, 0}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{n1, n2, n3, 1}, {a1, a2 - 1}, {b1, b2 + 1}], 
      R1[{2, n4_}, {a_}, {b1_, b2_}] :> -R1[{0, n4}, {a}, {b1, b2}] - 
        (2*nu + 1)*R1[{1, n4}, {a - 1}, {b1, b2 + 1}], 
      R1[{n3_, 2}, {a_}, {b1_, b2_}] :> -R1[{n3, 0}, {a}, {b1, b2}] - 
        (2*nu + 1)*R1[{n3, 1}, {a - 1}, {b1, b2 + 1}]}
 
symmetry[expr_] := Module[{test}, 
     test = expr /. {R2[{n1_, n2_}, {a_}, {b1_, b2_}] :> R1[{n1, n2}, {a}, 
           {b2, b1}]}; test = 
       test /. G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
              If[a1 > a2, G[{n2, n1, n4, n3}, {a2, a1}, {b1, b2}], G[
                {n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
            G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
             If[b1 > b2, G[{n3, n4, n1, n2}, {a1, a2}, {b2, b1}], 
              G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
           G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
            If[a1 == a2 && n1 > n2, G[{n2, n1, n4, n3}, {a2, a1}, {b1, b2}], 
             G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
          G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
           If[a1 == a2 && n1 == n2 && n3 > n4, G[{n2, n1, n4, n3}, {a2, a1}, 
             {b1, b2}], G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
         G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
          If[b1 == b2 && n1 > n3, G[{n3, n4, n1, n2}, {a1, a2}, {b2, b1}], 
           G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
        G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
         If[b1 == b2 && n1 == n3 && n2 > n4, G[{n3, n4, n1, n2}, {a1, a2}, 
           {b2, b1}], G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]]; 
      test = test /. R1[{n3_, n4_}, {a_}, {b1_, b2_}] :> 
         If[n3 > n4, R1[{n4, n3}, {a}, {b1, b2}], R1[{n3, n4}, {a}, 
           {b1, b2}]]; Return[test]; ]
 
dk0[expr_] := D[expr, k0] + (Expand[expr] /. (a_.)*(r:G[__] | R1[__]) :> 
       a*dk0Term[r])
 
dk0Term[expr_] := expr /. {G[c1_, c2_, c3_] :> G[c1, c2 + {1, 0}, c3] + 
        G[c1, c2 + {0, 1}, c3], R1[c1_, c2_, c3_] :> listcal[R1[c1, c2, c3], 
        2, 1, 1]}
 
dks[expr_] := D[expr, ks] + (Expand[expr] /. (a_.)*(r:G[__] | R1[__]) :> 
       a*dksTerm[r])
 
dksTerm[expr_] := expr /. {g:G[c1_, c2_, c3_] :> 
       Module[{b2, term1, term2, term3}, b2 = b20 + g[[3,2]]; 
         term1 = (-b2/(2*ks))*(ks^2*listcal[g, 3, 2, 2] + g - 
            listcal[listcal[g, 3, 1, -2], 3, 2, 2]); 
         term2 = (1/(2*ks))*(ks^2*listcal[listcal[listcal[g, 1, 3, 1], 2, 1, 
               1], 3, 2, 1] + listcal[listcal[listcal[g, 1, 3, 1], 2, 1, 1], 
             3, 2, -1] - listcal[listcal[listcal[listcal[g, 1, 3, 1], 2, 1, 
               1], 3, 1, -2], 3, 2, 1]); term3 = (1/(2*ks))*
           (ks^2*listcal[listcal[listcal[g, 1, 4, 1], 2, 2, 1], 3, 2, 1] + 
            listcal[listcal[listcal[g, 1, 4, 1], 2, 2, 1], 3, 2, -1] - 
            listcal[listcal[listcal[listcal[g, 1, 4, 1], 2, 2, 1], 3, 1, -2], 
             3, 2, 1]); term1 + term2 + term3], r:R1[c1_, c2_, c3_] :> 
       Module[{b2, term1, term2, term3}, b2 = b20 + r[[3,2]]; 
         term1 = (-b2/(2*ks))*(ks^2*listcal[r, 3, 2, 2] + r - 
            listcal[listcal[r, 3, 1, -2], 3, 2, 2]); 
         term2 = (1/(2*ks))*(ks^2*listcal[listcal[listcal[r, 1, 1, 1], 2, 1, 
               1], 3, 2, 1] + listcal[listcal[listcal[r, 1, 1, 1], 2, 1, 1], 
             3, 2, -1] - listcal[listcal[listcal[listcal[r, 1, 1, 1], 2, 1, 
               1], 3, 1, -2], 3, 2, 1]); term3 = (1/(2*ks))*
           (ks^2*listcal[listcal[listcal[r, 1, 2, 1], 2, 1, 1], 3, 2, 1] + 
            listcal[listcal[listcal[r, 1, 2, 1], 2, 1, 1], 3, 2, -1] - 
            listcal[listcal[listcal[listcal[r, 1, 2, 1], 2, 1, 1], 3, 1, -2], 
             3, 2, 1]); term1 + term2 + term3]}
listcal[expr_, i_, j_, n_] := ReplacePart[expr, {i, j} -> expr[[i,j]] + n]
 
repvar = {P1 -> (-I)*k0, P2 -> (-I)*k0, P0R1 -> (-2*I)*k0, a10 -> a0, 
     a20 -> a0, b10 -> b0, b20 -> b0}
 
reppara2N = {a0 -> da + 2*nu, a0R -> 2*da + 2*nu, b0 -> -2*nu, d -> 3 - 2*ep, 
     ks -> 1}
 
repNumericTestKira = {nu -> 17/7, ep -> 1/13, k0 -> 5/23}
 
id[expr_] := expr /. {G[{2, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{0, n2, n3, n4}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{1, n2, n3, n4}, {a1 - 1, a2}, {b1 + 1, b2}], 
      G[{n1_, 2, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{n1, 0, n3, n4}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{n1, 1, n3, n4}, {a1, a2 - 1}, {b1 + 1, b2}], 
      G[{n1_, n2_, 2, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{n1, n2, 0, n4}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{n1, n2, 1, n4}, {a1 - 1, a2}, {b1, b2 + 1}], 
      G[{n1_, n2_, n3_, 2}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{n1, n2, n3, 0}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{n1, n2, n3, 1}, {a1, a2 - 1}, {b1, b2 + 1}], 
      R1[{2, n4_}, {a_}, {b1_, b2_}] :> -R1[{0, n4}, {a}, {b1, b2}] - 
        (2*nu + 1)*R1[{1, n4}, {a - 1}, {b1, b2 + 1}], 
      R1[{n3_, 2}, {a_}, {b1_, b2_}] :> -R1[{n3, 0}, {a}, {b1, b2}] - 
        (2*nu + 1)*R1[{n3, 1}, {a - 1}, {b1, b2 + 1}]}
 
symmetry[expr_] := Module[{test}, 
     test = expr /. {R2[{n1_, n2_}, {a_}, {b1_, b2_}] :> R1[{n1, n2}, {a}, 
           {b2, b1}]}; test = 
       test /. G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
              If[a1 > a2, G[{n2, n1, n4, n3}, {a2, a1}, {b1, b2}], G[
                {n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
            G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
             If[b1 > b2, G[{n3, n4, n1, n2}, {a1, a2}, {b2, b1}], 
              G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
           G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
            If[a1 == a2 && n1 > n2, G[{n2, n1, n4, n3}, {a2, a1}, {b1, b2}], 
             G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
          G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
           If[a1 == a2 && n1 == n2 && n3 > n4, G[{n2, n1, n4, n3}, {a2, a1}, 
             {b1, b2}], G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
         G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
          If[b1 == b2 && n1 > n3, G[{n3, n4, n1, n2}, {a1, a2}, {b2, b1}], 
           G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
        G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
         If[b1 == b2 && n1 == n3 && n2 > n4, G[{n3, n4, n1, n2}, {a1, a2}, 
           {b2, b1}], G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]]; 
      test = test /. R1[{n3_, n4_}, {a_}, {b1_, b2_}] :> 
         If[n3 > n4, R1[{n4, n3}, {a}, {b1, b2}], R1[{n3, n4}, {a}, 
           {b1, b2}]]; Return[test]; ]
 
dk0[expr_] := D[expr, k0] + (Expand[expr] /. (a_.)*(r:G[__] | R1[__]) :> 
       a*dk0Term[r])
 
dk0Term[expr_] := expr /. {G[c1_, c2_, c3_] :> G[c1, c2 + {1, 0}, c3] + 
        G[c1, c2 + {0, 1}, c3], R1[c1_, c2_, c3_] :> listcal[R1[c1, c2, c3], 
        2, 1, 1]}
 
dks[expr_] := D[expr, ks] + (Expand[expr] /. (a_.)*(r:G[__] | R1[__]) :> 
       a*dksTerm[r])
 
dksTerm[expr_] := expr /. {g:G[c1_, c2_, c3_] :> 
       Module[{b2, term1, term2, term3}, b2 = b20 + g[[3,2]]; 
         term1 = (-b2/(2*ks))*(ks^2*listcal[g, 3, 2, 2] + g - 
            listcal[listcal[g, 3, 1, -2], 3, 2, 2]); 
         term2 = (1/(2*ks))*(ks^2*listcal[listcal[listcal[g, 1, 3, 1], 2, 1, 
               1], 3, 2, 1] + listcal[listcal[listcal[g, 1, 3, 1], 2, 1, 1], 
             3, 2, -1] - listcal[listcal[listcal[listcal[g, 1, 3, 1], 2, 1, 
               1], 3, 1, -2], 3, 2, 1]); term3 = (1/(2*ks))*
           (ks^2*listcal[listcal[listcal[g, 1, 4, 1], 2, 2, 1], 3, 2, 1] + 
            listcal[listcal[listcal[g, 1, 4, 1], 2, 2, 1], 3, 2, -1] - 
            listcal[listcal[listcal[listcal[g, 1, 4, 1], 2, 2, 1], 3, 1, -2], 
             3, 2, 1]); term1 + term2 + term3], r:R1[c1_, c2_, c3_] :> 
       Module[{b2, term1, term2, term3}, b2 = b20 + r[[3,2]]; 
         term1 = (-b2/(2*ks))*(ks^2*listcal[r, 3, 2, 2] + r - 
            listcal[listcal[r, 3, 1, -2], 3, 2, 2]); 
         term2 = (1/(2*ks))*(ks^2*listcal[listcal[listcal[r, 1, 1, 1], 2, 1, 
               1], 3, 2, 1] + listcal[listcal[listcal[r, 1, 1, 1], 2, 1, 1], 
             3, 2, -1] - listcal[listcal[listcal[listcal[r, 1, 1, 1], 2, 1, 
               1], 3, 1, -2], 3, 2, 1]); term3 = (1/(2*ks))*
           (ks^2*listcal[listcal[listcal[r, 1, 2, 1], 2, 1, 1], 3, 2, 1] + 
            listcal[listcal[listcal[r, 1, 2, 1], 2, 1, 1], 3, 2, -1] - 
            listcal[listcal[listcal[listcal[r, 1, 2, 1], 2, 1, 1], 3, 1, -2], 
             3, 2, 1]); term1 + term2 + term3]}
listcal[expr_, i_, j_, n_] := ReplacePart[expr, {i, j} -> expr[[i,j]] + n]
 
repvar = {P1 -> (-I)*k0, P2 -> (-I)*k0, P0R1 -> (-2*I)*k0, a10 -> a0, 
     a20 -> a0, b10 -> b0, b20 -> b0}
 
reppara2N = {a0 -> da + 2*nu, a0R -> 2*da + 2*nu, b0 -> -2*nu, d -> 3 - 2*ep, 
     ks -> 1}
 
repNumericTestKira = {nu -> 17/7, ep -> 1/13, k0 -> 5/23}
 
id[expr_] := expr /. {G[{2, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{0, n2, n3, n4}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{1, n2, n3, n4}, {a1 - 1, a2}, {b1 + 1, b2}], 
      G[{n1_, 2, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{n1, 0, n3, n4}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{n1, 1, n3, n4}, {a1, a2 - 1}, {b1 + 1, b2}], 
      G[{n1_, n2_, 2, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{n1, n2, 0, n4}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{n1, n2, 1, n4}, {a1 - 1, a2}, {b1, b2 + 1}], 
      G[{n1_, n2_, n3_, 2}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{n1, n2, n3, 0}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{n1, n2, n3, 1}, {a1, a2 - 1}, {b1, b2 + 1}], 
      R1[{2, n4_}, {a_}, {b1_, b2_}] :> -R1[{0, n4}, {a}, {b1, b2}] - 
        (2*nu + 1)*R1[{1, n4}, {a - 1}, {b1, b2 + 1}], 
      R1[{n3_, 2}, {a_}, {b1_, b2_}] :> -R1[{n3, 0}, {a}, {b1, b2}] - 
        (2*nu + 1)*R1[{n3, 1}, {a - 1}, {b1, b2 + 1}]}
 
symmetry[expr_] := Module[{test}, 
     test = expr /. {R2[{n1_, n2_}, {a_}, {b1_, b2_}] :> R1[{n1, n2}, {a}, 
           {b2, b1}]}; test = 
       test /. G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
              If[a1 > a2, G[{n2, n1, n4, n3}, {a2, a1}, {b1, b2}], G[
                {n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
            G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
             If[b1 > b2, G[{n3, n4, n1, n2}, {a1, a2}, {b2, b1}], 
              G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
           G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
            If[a1 == a2 && n1 > n2, G[{n2, n1, n4, n3}, {a2, a1}, {b1, b2}], 
             G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
          G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
           If[a1 == a2 && n1 == n2 && n3 > n4, G[{n2, n1, n4, n3}, {a2, a1}, 
             {b1, b2}], G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
         G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
          If[b1 == b2 && n1 > n3, G[{n3, n4, n1, n2}, {a1, a2}, {b2, b1}], 
           G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
        G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
         If[b1 == b2 && n1 == n3 && n2 > n4, G[{n3, n4, n1, n2}, {a1, a2}, 
           {b2, b1}], G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]]; 
      test = test /. R1[{n3_, n4_}, {a_}, {b1_, b2_}] :> 
         If[n3 > n4, R1[{n4, n3}, {a}, {b1, b2}], R1[{n3, n4}, {a}, 
           {b1, b2}]]; Return[test]; ]
 
dk0[expr_] := D[expr, k0] + (Expand[expr] /. (a_.)*(r:G[__] | R1[__]) :> 
       a*dk0Term[r])
 
dk0Term[expr_] := expr /. {G[c1_, c2_, c3_] :> G[c1, c2 + {1, 0}, c3] + 
        G[c1, c2 + {0, 1}, c3], R1[c1_, c2_, c3_] :> listcal[R1[c1, c2, c3], 
        2, 1, 1]}
 
dks[expr_] := D[expr, ks] + (Expand[expr] /. (a_.)*(r:G[__] | R1[__]) :> 
       a*dksTerm[r])
 
dksTerm[expr_] := expr /. {g:G[c1_, c2_, c3_] :> 
       Module[{b2, term1, term2, term3}, b2 = b20 + g[[3,2]]; 
         term1 = (-b2/(2*ks))*(ks^2*listcal[g, 3, 2, 2] + g - 
            listcal[listcal[g, 3, 1, -2], 3, 2, 2]); 
         term2 = (1/(2*ks))*(ks^2*listcal[listcal[listcal[g, 1, 3, 1], 2, 1, 
               1], 3, 2, 1] + listcal[listcal[listcal[g, 1, 3, 1], 2, 1, 1], 
             3, 2, -1] - listcal[listcal[listcal[listcal[g, 1, 3, 1], 2, 1, 
               1], 3, 1, -2], 3, 2, 1]); term3 = (1/(2*ks))*
           (ks^2*listcal[listcal[listcal[g, 1, 4, 1], 2, 2, 1], 3, 2, 1] + 
            listcal[listcal[listcal[g, 1, 4, 1], 2, 2, 1], 3, 2, -1] - 
            listcal[listcal[listcal[listcal[g, 1, 4, 1], 2, 2, 1], 3, 1, -2], 
             3, 2, 1]); term1 + term2 + term3], r:R1[c1_, c2_, c3_] :> 
       Module[{b2, term1, term2, term3}, b2 = b20 + r[[3,2]]; 
         term1 = (-b2/(2*ks))*(ks^2*listcal[r, 3, 2, 2] + r - 
            listcal[listcal[r, 3, 1, -2], 3, 2, 2]); 
         term2 = (1/(2*ks))*(ks^2*listcal[listcal[listcal[r, 1, 1, 1], 2, 1, 
               1], 3, 2, 1] + listcal[listcal[listcal[r, 1, 1, 1], 2, 1, 1], 
             3, 2, -1] - listcal[listcal[listcal[listcal[r, 1, 1, 1], 2, 1, 
               1], 3, 1, -2], 3, 2, 1]); term3 = (1/(2*ks))*
           (ks^2*listcal[listcal[listcal[r, 1, 2, 1], 2, 1, 1], 3, 2, 1] + 
            listcal[listcal[listcal[r, 1, 2, 1], 2, 1, 1], 3, 2, -1] - 
            listcal[listcal[listcal[listcal[r, 1, 2, 1], 2, 1, 1], 3, 1, -2], 
             3, 2, 1]); term1 + term2 + term3]}
listcal[expr_, i_, j_, n_] := ReplacePart[expr, {i, j} -> expr[[i,j]] + n]
 
repvar = {P1 -> (-I)*k0, P2 -> (-I)*k0, P0R1 -> (-2*I)*k0, a10 -> a0, 
     a20 -> a0, b10 -> b0, b20 -> b0}
 
reppara2N = {a0 -> da + 2*nu, a0R -> 2*da + 2*nu, b0 -> -2*nu, d -> 3 - 2*ep, 
     ks -> 1}
 
repNumericTestKira = {nu -> 17/7, ep -> 1/13, k0 -> 5/23}
 
id[expr_] := expr /. {G[{2, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{0, n2, n3, n4}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{1, n2, n3, n4}, {a1 - 1, a2}, {b1 + 1, b2}], 
      G[{n1_, 2, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{n1, 0, n3, n4}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{n1, 1, n3, n4}, {a1, a2 - 1}, {b1 + 1, b2}], 
      G[{n1_, n2_, 2, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{n1, n2, 0, n4}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{n1, n2, 1, n4}, {a1 - 1, a2}, {b1, b2 + 1}], 
      G[{n1_, n2_, n3_, 2}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{n1, n2, n3, 0}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{n1, n2, n3, 1}, {a1, a2 - 1}, {b1, b2 + 1}], 
      R1[{2, n4_}, {a_}, {b1_, b2_}] :> -R1[{0, n4}, {a}, {b1, b2}] - 
        (2*nu + 1)*R1[{1, n4}, {a - 1}, {b1, b2 + 1}], 
      R1[{n3_, 2}, {a_}, {b1_, b2_}] :> -R1[{n3, 0}, {a}, {b1, b2}] - 
        (2*nu + 1)*R1[{n3, 1}, {a - 1}, {b1, b2 + 1}]}
 
symmetry[expr_] := Module[{test}, 
     test = expr /. {R2[{n1_, n2_}, {a_}, {b1_, b2_}] :> R1[{n1, n2}, {a}, 
           {b2, b1}]}; test = 
       test /. G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
              If[a1 > a2, G[{n2, n1, n4, n3}, {a2, a1}, {b1, b2}], G[
                {n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
            G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
             If[b1 > b2, G[{n3, n4, n1, n2}, {a1, a2}, {b2, b1}], 
              G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
           G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
            If[a1 == a2 && n1 > n2, G[{n2, n1, n4, n3}, {a2, a1}, {b1, b2}], 
             G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
          G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
           If[a1 == a2 && n1 == n2 && n3 > n4, G[{n2, n1, n4, n3}, {a2, a1}, 
             {b1, b2}], G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
         G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
          If[b1 == b2 && n1 > n3, G[{n3, n4, n1, n2}, {a1, a2}, {b2, b1}], 
           G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
        G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
         If[b1 == b2 && n1 == n3 && n2 > n4, G[{n3, n4, n1, n2}, {a1, a2}, 
           {b2, b1}], G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]]; 
      test = test /. R1[{n3_, n4_}, {a_}, {b1_, b2_}] :> 
         If[n3 > n4, R1[{n4, n3}, {a}, {b1, b2}], R1[{n3, n4}, {a}, 
           {b1, b2}]]; Return[test]; ]
 
dk0[expr_] := D[expr, k0] + (Expand[expr] /. (a_.)*(r:G[__] | R1[__]) :> 
       a*dk0Term[r])
 
dk0Term[expr_] := expr /. {G[c1_, c2_, c3_] :> G[c1, c2 + {1, 0}, c3] + 
        G[c1, c2 + {0, 1}, c3], R1[c1_, c2_, c3_] :> listcal[R1[c1, c2, c3], 
        2, 1, 1]}
 
dks[expr_] := D[expr, ks] + (Expand[expr] /. (a_.)*(r:G[__] | R1[__]) :> 
       a*dksTerm[r])
 
dksTerm[expr_] := expr /. {g:G[c1_, c2_, c3_] :> 
       Module[{b2, term1, term2, term3}, b2 = b20 + g[[3,2]]; 
         term1 = (-b2/(2*ks))*(ks^2*listcal[g, 3, 2, 2] + g - 
            listcal[listcal[g, 3, 1, -2], 3, 2, 2]); 
         term2 = (1/(2*ks))*(ks^2*listcal[listcal[listcal[g, 1, 3, 1], 2, 1, 
               1], 3, 2, 1] + listcal[listcal[listcal[g, 1, 3, 1], 2, 1, 1], 
             3, 2, -1] - listcal[listcal[listcal[listcal[g, 1, 3, 1], 2, 1, 
               1], 3, 1, -2], 3, 2, 1]); term3 = (1/(2*ks))*
           (ks^2*listcal[listcal[listcal[g, 1, 4, 1], 2, 2, 1], 3, 2, 1] + 
            listcal[listcal[listcal[g, 1, 4, 1], 2, 2, 1], 3, 2, -1] - 
            listcal[listcal[listcal[listcal[g, 1, 4, 1], 2, 2, 1], 3, 1, -2], 
             3, 2, 1]); term1 + term2 + term3], r:R1[c1_, c2_, c3_] :> 
       Module[{b2, term1, term2, term3}, b2 = b20 + r[[3,2]]; 
         term1 = (-b2/(2*ks))*(ks^2*listcal[r, 3, 2, 2] + r - 
            listcal[listcal[r, 3, 1, -2], 3, 2, 2]); 
         term2 = (1/(2*ks))*(ks^2*listcal[listcal[listcal[r, 1, 1, 1], 2, 1, 
               1], 3, 2, 1] + listcal[listcal[listcal[r, 1, 1, 1], 2, 1, 1], 
             3, 2, -1] - listcal[listcal[listcal[listcal[r, 1, 1, 1], 2, 1, 
               1], 3, 1, -2], 3, 2, 1]); term3 = (1/(2*ks))*
           (ks^2*listcal[listcal[listcal[r, 1, 2, 1], 2, 1, 1], 3, 2, 1] + 
            listcal[listcal[listcal[r, 1, 2, 1], 2, 1, 1], 3, 2, -1] - 
            listcal[listcal[listcal[listcal[r, 1, 2, 1], 2, 1, 1], 3, 1, -2], 
             3, 2, 1]); term1 + term2 + term3]}
listcal[expr_, i_, j_, n_] := ReplacePart[expr, {i, j} -> expr[[i,j]] + n]
 
repvar = {P1 -> (-I)*k0, P2 -> (-I)*k0, P0R1 -> (-2*I)*k0, a10 -> a0, 
     a20 -> a0, b10 -> b0, b20 -> b0}
 
reppara2N = {a0 -> da + 2*nu, a0R -> 2*da + 2*nu, b0 -> -2*nu, d -> 3 - 2*ep, 
     ks -> 1}
 
repNumericTestKira = {nu -> 17/7, ep -> 1/13, k0 -> 5/23}
 
id[expr_] := expr /. {G[{2, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{0, n2, n3, n4}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{1, n2, n3, n4}, {a1 - 1, a2}, {b1 + 1, b2}], 
      G[{n1_, 2, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{n1, 0, n3, n4}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{n1, 1, n3, n4}, {a1, a2 - 1}, {b1 + 1, b2}], 
      G[{n1_, n2_, 2, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{n1, n2, 0, n4}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{n1, n2, 1, n4}, {a1 - 1, a2}, {b1, b2 + 1}], 
      G[{n1_, n2_, n3_, 2}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{n1, n2, n3, 0}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{n1, n2, n3, 1}, {a1, a2 - 1}, {b1, b2 + 1}], 
      R1[{2, n4_}, {a_}, {b1_, b2_}] :> -R1[{0, n4}, {a}, {b1, b2}] - 
        (2*nu + 1)*R1[{1, n4}, {a - 1}, {b1, b2 + 1}], 
      R1[{n3_, 2}, {a_}, {b1_, b2_}] :> -R1[{n3, 0}, {a}, {b1, b2}] - 
        (2*nu + 1)*R1[{n3, 1}, {a - 1}, {b1, b2 + 1}]}
 
symmetry[expr_] := Module[{test}, 
     test = expr /. {R2[{n1_, n2_}, {a_}, {b1_, b2_}] :> R1[{n1, n2}, {a}, 
           {b2, b1}]}; test = 
       test /. G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
              If[a1 > a2, G[{n2, n1, n4, n3}, {a2, a1}, {b1, b2}], G[
                {n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
            G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
             If[b1 > b2, G[{n3, n4, n1, n2}, {a1, a2}, {b2, b1}], 
              G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
           G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
            If[a1 == a2 && n1 > n2, G[{n2, n1, n4, n3}, {a2, a1}, {b1, b2}], 
             G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
          G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
           If[a1 == a2 && n1 == n2 && n3 > n4, G[{n2, n1, n4, n3}, {a2, a1}, 
             {b1, b2}], G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
         G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
          If[b1 == b2 && n1 > n3, G[{n3, n4, n1, n2}, {a1, a2}, {b2, b1}], 
           G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
        G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
         If[b1 == b2 && n1 == n3 && n2 > n4, G[{n3, n4, n1, n2}, {a1, a2}, 
           {b2, b1}], G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]]; 
      test = test /. R1[{n3_, n4_}, {a_}, {b1_, b2_}] :> 
         If[n3 > n4, R1[{n4, n3}, {a}, {b1, b2}], R1[{n3, n4}, {a}, 
           {b1, b2}]]; Return[test]; ]
 
dk0[expr_] := D[expr, k0] + (Expand[expr] /. (a_.)*(r:G[__] | R1[__]) :> 
       a*dk0Term[r])
 
dk0Term[expr_] := expr /. {G[c1_, c2_, c3_] :> G[c1, c2 + {1, 0}, c3] + 
        G[c1, c2 + {0, 1}, c3], R1[c1_, c2_, c3_] :> listcal[R1[c1, c2, c3], 
        2, 1, 1]}
 
dks[expr_] := D[expr, ks] + (Expand[expr] /. (a_.)*(r:G[__] | R1[__]) :> 
       a*dksTerm[r])
 
dksTerm[expr_] := expr /. {g:G[c1_, c2_, c3_] :> 
       Module[{b2, term1, term2, term3}, b2 = b20 + g[[3,2]]; 
         term1 = (-b2/(2*ks))*(ks^2*listcal[g, 3, 2, 2] + g - 
            listcal[listcal[g, 3, 1, -2], 3, 2, 2]); 
         term2 = (1/(2*ks))*(ks^2*listcal[listcal[listcal[g, 1, 3, 1], 2, 1, 
               1], 3, 2, 1] + listcal[listcal[listcal[g, 1, 3, 1], 2, 1, 1], 
             3, 2, -1] - listcal[listcal[listcal[listcal[g, 1, 3, 1], 2, 1, 
               1], 3, 1, -2], 3, 2, 1]); term3 = (1/(2*ks))*
           (ks^2*listcal[listcal[listcal[g, 1, 4, 1], 2, 2, 1], 3, 2, 1] + 
            listcal[listcal[listcal[g, 1, 4, 1], 2, 2, 1], 3, 2, -1] - 
            listcal[listcal[listcal[listcal[g, 1, 4, 1], 2, 2, 1], 3, 1, -2], 
             3, 2, 1]); term1 + term2 + term3], r:R1[c1_, c2_, c3_] :> 
       Module[{b2, term1, term2, term3}, b2 = b20 + r[[3,2]]; 
         term1 = (-b2/(2*ks))*(ks^2*listcal[r, 3, 2, 2] + r - 
            listcal[listcal[r, 3, 1, -2], 3, 2, 2]); 
         term2 = (1/(2*ks))*(ks^2*listcal[listcal[listcal[r, 1, 1, 1], 2, 1, 
               1], 3, 2, 1] + listcal[listcal[listcal[r, 1, 1, 1], 2, 1, 1], 
             3, 2, -1] - listcal[listcal[listcal[listcal[r, 1, 1, 1], 2, 1, 
               1], 3, 1, -2], 3, 2, 1]); term3 = (1/(2*ks))*
           (ks^2*listcal[listcal[listcal[r, 1, 2, 1], 2, 1, 1], 3, 2, 1] + 
            listcal[listcal[listcal[r, 1, 2, 1], 2, 1, 1], 3, 2, -1] - 
            listcal[listcal[listcal[listcal[r, 1, 2, 1], 2, 1, 1], 3, 1, -2], 
             3, 2, 1]); term1 + term2 + term3]}
listcal[expr_, i_, j_, n_] := ReplacePart[expr, {i, j} -> expr[[i,j]] + n]
 
repvar = {P1 -> (-I)*k0, P2 -> (-I)*k0, P0R1 -> (-2*I)*k0, a10 -> a0, 
     a20 -> a0, b10 -> b0, b20 -> b0}
 
reppara2N = {a0 -> da + 2*nu, a0R -> 2*da + 2*nu, b0 -> -2*nu, d -> 3 - 2*ep, 
     ks -> 1}
 
repNumericTestKira = {nu -> 17/7, ep -> 1/13, k0 -> 5/23}
 
id[expr_] := expr /. {G[{2, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{0, n2, n3, n4}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{1, n2, n3, n4}, {a1 - 1, a2}, {b1 + 1, b2}], 
      G[{n1_, 2, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{n1, 0, n3, n4}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{n1, 1, n3, n4}, {a1, a2 - 1}, {b1 + 1, b2}], 
      G[{n1_, n2_, 2, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{n1, n2, 0, n4}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{n1, n2, 1, n4}, {a1 - 1, a2}, {b1, b2 + 1}], 
      G[{n1_, n2_, n3_, 2}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{n1, n2, n3, 0}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{n1, n2, n3, 1}, {a1, a2 - 1}, {b1, b2 + 1}], 
      R1[{2, n4_}, {a_}, {b1_, b2_}] :> -R1[{0, n4}, {a}, {b1, b2}] - 
        (2*nu + 1)*R1[{1, n4}, {a - 1}, {b1, b2 + 1}], 
      R1[{n3_, 2}, {a_}, {b1_, b2_}] :> -R1[{n3, 0}, {a}, {b1, b2}] - 
        (2*nu + 1)*R1[{n3, 1}, {a - 1}, {b1, b2 + 1}]}
 
symmetry[expr_] := Module[{test}, 
     test = expr /. {R2[{n1_, n2_}, {a_}, {b1_, b2_}] :> R1[{n1, n2}, {a}, 
           {b2, b1}]}; test = 
       test /. G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
              If[a1 > a2, G[{n2, n1, n4, n3}, {a2, a1}, {b1, b2}], G[
                {n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
            G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
             If[b1 > b2, G[{n3, n4, n1, n2}, {a1, a2}, {b2, b1}], 
              G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
           G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
            If[a1 == a2 && n1 > n2, G[{n2, n1, n4, n3}, {a2, a1}, {b1, b2}], 
             G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
          G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
           If[a1 == a2 && n1 == n2 && n3 > n4, G[{n2, n1, n4, n3}, {a2, a1}, 
             {b1, b2}], G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
         G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
          If[b1 == b2 && n1 > n3, G[{n3, n4, n1, n2}, {a1, a2}, {b2, b1}], 
           G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
        G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
         If[b1 == b2 && n1 == n3 && n2 > n4, G[{n3, n4, n1, n2}, {a1, a2}, 
           {b2, b1}], G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]]; 
      test = test /. R1[{n3_, n4_}, {a_}, {b1_, b2_}] :> 
         If[n3 > n4, R1[{n4, n3}, {a}, {b1, b2}], R1[{n3, n4}, {a}, 
           {b1, b2}]]; Return[test]; ]
 
dk0[expr_] := D[expr, k0] + (Expand[expr] /. (a_.)*(r:G[__] | R1[__]) :> 
       a*dk0Term[r])
 
dk0Term[expr_] := expr /. {G[c1_, c2_, c3_] :> G[c1, c2 + {1, 0}, c3] + 
        G[c1, c2 + {0, 1}, c3], R1[c1_, c2_, c3_] :> listcal[R1[c1, c2, c3], 
        2, 1, 1]}
 
dks[expr_] := D[expr, ks] + (Expand[expr] /. (a_.)*(r:G[__] | R1[__]) :> 
       a*dksTerm[r])
 
dksTerm[expr_] := expr /. {g:G[c1_, c2_, c3_] :> 
       Module[{b2, term1, term2, term3}, b2 = b20 + g[[3,2]]; 
         term1 = (-b2/(2*ks))*(ks^2*listcal[g, 3, 2, 2] + g - 
            listcal[listcal[g, 3, 1, -2], 3, 2, 2]); 
         term2 = (1/(2*ks))*(ks^2*listcal[listcal[listcal[g, 1, 3, 1], 2, 1, 
               1], 3, 2, 1] + listcal[listcal[listcal[g, 1, 3, 1], 2, 1, 1], 
             3, 2, -1] - listcal[listcal[listcal[listcal[g, 1, 3, 1], 2, 1, 
               1], 3, 1, -2], 3, 2, 1]); term3 = (1/(2*ks))*
           (ks^2*listcal[listcal[listcal[g, 1, 4, 1], 2, 2, 1], 3, 2, 1] + 
            listcal[listcal[listcal[g, 1, 4, 1], 2, 2, 1], 3, 2, -1] - 
            listcal[listcal[listcal[listcal[g, 1, 4, 1], 2, 2, 1], 3, 1, -2], 
             3, 2, 1]); term1 + term2 + term3], r:R1[c1_, c2_, c3_] :> 
       Module[{b2, term1, term2, term3}, b2 = b20 + r[[3,2]]; 
         term1 = (-b2/(2*ks))*(ks^2*listcal[r, 3, 2, 2] + r - 
            listcal[listcal[r, 3, 1, -2], 3, 2, 2]); 
         term2 = (1/(2*ks))*(ks^2*listcal[listcal[listcal[r, 1, 1, 1], 2, 1, 
               1], 3, 2, 1] + listcal[listcal[listcal[r, 1, 1, 1], 2, 1, 1], 
             3, 2, -1] - listcal[listcal[listcal[listcal[r, 1, 1, 1], 2, 1, 
               1], 3, 1, -2], 3, 2, 1]); term3 = (1/(2*ks))*
           (ks^2*listcal[listcal[listcal[r, 1, 2, 1], 2, 1, 1], 3, 2, 1] + 
            listcal[listcal[listcal[r, 1, 2, 1], 2, 1, 1], 3, 2, -1] - 
            listcal[listcal[listcal[listcal[r, 1, 2, 1], 2, 1, 1], 3, 1, -2], 
             3, 2, 1]); term1 + term2 + term3]}
listcal[expr_, i_, j_, n_] := ReplacePart[expr, {i, j} -> expr[[i,j]] + n]
 
repvar = {P1 -> (-I)*k0, P2 -> (-I)*k0, P0R1 -> (-2*I)*k0, a10 -> a0, 
     a20 -> a0, b10 -> b0, b20 -> b0}
 
reppara2N = {a0 -> da + 2*nu, a0R -> 2*da + 2*nu, b0 -> -2*nu, d -> 3 - 2*ep, 
     ks -> 1}
 
repNumericTestKira = {nu -> 17/7, ep -> 1/13, k0 -> 5/23}
 
id[expr_] := expr /. {G[{2, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{0, n2, n3, n4}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{1, n2, n3, n4}, {a1 - 1, a2}, {b1 + 1, b2}], 
      G[{n1_, 2, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{n1, 0, n3, n4}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{n1, 1, n3, n4}, {a1, a2 - 1}, {b1 + 1, b2}], 
      G[{n1_, n2_, 2, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{n1, n2, 0, n4}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{n1, n2, 1, n4}, {a1 - 1, a2}, {b1, b2 + 1}], 
      G[{n1_, n2_, n3_, 2}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{n1, n2, n3, 0}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{n1, n2, n3, 1}, {a1, a2 - 1}, {b1, b2 + 1}], 
      R1[{2, n4_}, {a_}, {b1_, b2_}] :> -R1[{0, n4}, {a}, {b1, b2}] - 
        (2*nu + 1)*R1[{1, n4}, {a - 1}, {b1, b2 + 1}], 
      R1[{n3_, 2}, {a_}, {b1_, b2_}] :> -R1[{n3, 0}, {a}, {b1, b2}] - 
        (2*nu + 1)*R1[{n3, 1}, {a - 1}, {b1, b2 + 1}]}
 
symmetry[expr_] := Module[{test}, 
     test = expr /. {R2[{n1_, n2_}, {a_}, {b1_, b2_}] :> R1[{n1, n2}, {a}, 
           {b2, b1}]}; test = 
       test /. G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
              If[a1 > a2, G[{n2, n1, n4, n3}, {a2, a1}, {b1, b2}], G[
                {n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
            G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
             If[b1 > b2, G[{n3, n4, n1, n2}, {a1, a2}, {b2, b1}], 
              G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
           G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
            If[a1 == a2 && n1 > n2, G[{n2, n1, n4, n3}, {a2, a1}, {b1, b2}], 
             G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
          G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
           If[a1 == a2 && n1 == n2 && n3 > n4, G[{n2, n1, n4, n3}, {a2, a1}, 
             {b1, b2}], G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
         G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
          If[b1 == b2 && n1 > n3, G[{n3, n4, n1, n2}, {a1, a2}, {b2, b1}], 
           G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
        G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
         If[b1 == b2 && n1 == n3 && n2 > n4, G[{n3, n4, n1, n2}, {a1, a2}, 
           {b2, b1}], G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]]; 
      test = test /. R1[{n3_, n4_}, {a_}, {b1_, b2_}] :> 
         If[n3 > n4, R1[{n4, n3}, {a}, {b1, b2}], R1[{n3, n4}, {a}, 
           {b1, b2}]]; Return[test]; ]
 
dk0[expr_] := D[expr, k0] + (Expand[expr] /. (a_.)*(r:G[__] | R1[__]) :> 
       a*dk0Term[r])
 
dk0Term[expr_] := expr /. {G[c1_, c2_, c3_] :> G[c1, c2 + {1, 0}, c3] + 
        G[c1, c2 + {0, 1}, c3], R1[c1_, c2_, c3_] :> listcal[R1[c1, c2, c3], 
        2, 1, 1]}
 
dks[expr_] := D[expr, ks] + (Expand[expr] /. (a_.)*(r:G[__] | R1[__]) :> 
       a*dksTerm[r])
 
dksTerm[expr_] := expr /. {g:G[c1_, c2_, c3_] :> 
       Module[{b2, term1, term2, term3}, b2 = b20 + g[[3,2]]; 
         term1 = (-b2/(2*ks))*(ks^2*listcal[g, 3, 2, 2] + g - 
            listcal[listcal[g, 3, 1, -2], 3, 2, 2]); 
         term2 = (1/(2*ks))*(ks^2*listcal[listcal[listcal[g, 1, 3, 1], 2, 1, 
               1], 3, 2, 1] + listcal[listcal[listcal[g, 1, 3, 1], 2, 1, 1], 
             3, 2, -1] - listcal[listcal[listcal[listcal[g, 1, 3, 1], 2, 1, 
               1], 3, 1, -2], 3, 2, 1]); term3 = (1/(2*ks))*
           (ks^2*listcal[listcal[listcal[g, 1, 4, 1], 2, 2, 1], 3, 2, 1] + 
            listcal[listcal[listcal[g, 1, 4, 1], 2, 2, 1], 3, 2, -1] - 
            listcal[listcal[listcal[listcal[g, 1, 4, 1], 2, 2, 1], 3, 1, -2], 
             3, 2, 1]); term1 + term2 + term3], r:R1[c1_, c2_, c3_] :> 
       Module[{b2, term1, term2, term3}, b2 = b20 + r[[3,2]]; 
         term1 = (-b2/(2*ks))*(ks^2*listcal[r, 3, 2, 2] + r - 
            listcal[listcal[r, 3, 1, -2], 3, 2, 2]); 
         term2 = (1/(2*ks))*(ks^2*listcal[listcal[listcal[r, 1, 1, 1], 2, 1, 
               1], 3, 2, 1] + listcal[listcal[listcal[r, 1, 1, 1], 2, 1, 1], 
             3, 2, -1] - listcal[listcal[listcal[listcal[r, 1, 1, 1], 2, 1, 
               1], 3, 1, -2], 3, 2, 1]); term3 = (1/(2*ks))*
           (ks^2*listcal[listcal[listcal[r, 1, 2, 1], 2, 1, 1], 3, 2, 1] + 
            listcal[listcal[listcal[r, 1, 2, 1], 2, 1, 1], 3, 2, -1] - 
            listcal[listcal[listcal[listcal[r, 1, 2, 1], 2, 1, 1], 3, 1, -2], 
             3, 2, 1]); term1 + term2 + term3]}
listcal[expr_, i_, j_, n_] := ReplacePart[expr, {i, j} -> expr[[i,j]] + n]
 
repvar = {P1 -> (-I)*k0, P2 -> (-I)*k0, P0R1 -> (-2*I)*k0, a10 -> a0, 
     a20 -> a0, b10 -> b0, b20 -> b0}
 
reppara2N = {a0 -> da + 2*nu, a0R -> 2*da + 2*nu, b0 -> -2*nu, d -> 3 - 2*ep, 
     ks -> 1}
 
repNumericTestKira = {nu -> 17/7, ep -> 1/13, k0 -> 5/23}
 
id[expr_] := expr /. {G[{2, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{0, n2, n3, n4}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{1, n2, n3, n4}, {a1 - 1, a2}, {b1 + 1, b2}], 
      G[{n1_, 2, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{n1, 0, n3, n4}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{n1, 1, n3, n4}, {a1, a2 - 1}, {b1 + 1, b2}], 
      G[{n1_, n2_, 2, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{n1, n2, 0, n4}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{n1, n2, 1, n4}, {a1 - 1, a2}, {b1, b2 + 1}], 
      G[{n1_, n2_, n3_, 2}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{n1, n2, n3, 0}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{n1, n2, n3, 1}, {a1, a2 - 1}, {b1, b2 + 1}], 
      R1[{2, n4_}, {a_}, {b1_, b2_}] :> -R1[{0, n4}, {a}, {b1, b2}] - 
        (2*nu + 1)*R1[{1, n4}, {a - 1}, {b1, b2 + 1}], 
      R1[{n3_, 2}, {a_}, {b1_, b2_}] :> -R1[{n3, 0}, {a}, {b1, b2}] - 
        (2*nu + 1)*R1[{n3, 1}, {a - 1}, {b1, b2 + 1}]}
 
symmetry[expr_] := Module[{test}, 
     test = expr /. {R2[{n1_, n2_}, {a_}, {b1_, b2_}] :> R1[{n1, n2}, {a}, 
           {b2, b1}]}; test = 
       test /. G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
              If[a1 > a2, G[{n2, n1, n4, n3}, {a2, a1}, {b1, b2}], G[
                {n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
            G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
             If[b1 > b2, G[{n3, n4, n1, n2}, {a1, a2}, {b2, b1}], 
              G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
           G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
            If[a1 == a2 && n1 > n2, G[{n2, n1, n4, n3}, {a2, a1}, {b1, b2}], 
             G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
          G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
           If[a1 == a2 && n1 == n2 && n3 > n4, G[{n2, n1, n4, n3}, {a2, a1}, 
             {b1, b2}], G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
         G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
          If[b1 == b2 && n1 > n3, G[{n3, n4, n1, n2}, {a1, a2}, {b2, b1}], 
           G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
        G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
         If[b1 == b2 && n1 == n3 && n2 > n4, G[{n3, n4, n1, n2}, {a1, a2}, 
           {b2, b1}], G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]]; 
      test = test /. R1[{n3_, n4_}, {a_}, {b1_, b2_}] :> 
         If[n3 > n4, R1[{n4, n3}, {a}, {b1, b2}], R1[{n3, n4}, {a}, 
           {b1, b2}]]; Return[test]; ]
 
dk0[expr_] := D[expr, k0] + (Expand[expr] /. (a_.)*(r:G[__] | R1[__]) :> 
       a*dk0Term[r])
 
dk0Term[expr_] := expr /. {G[c1_, c2_, c3_] :> G[c1, c2 + {1, 0}, c3] + 
        G[c1, c2 + {0, 1}, c3], R1[c1_, c2_, c3_] :> listcal[R1[c1, c2, c3], 
        2, 1, 1]}
 
dks[expr_] := D[expr, ks] + (Expand[expr] /. (a_.)*(r:G[__] | R1[__]) :> 
       a*dksTerm[r])
 
dksTerm[expr_] := expr /. {g:G[c1_, c2_, c3_] :> 
       Module[{b2, term1, term2, term3}, b2 = b20 + g[[3,2]]; 
         term1 = (-b2/(2*ks))*(ks^2*listcal[g, 3, 2, 2] + g - 
            listcal[listcal[g, 3, 1, -2], 3, 2, 2]); 
         term2 = (1/(2*ks))*(ks^2*listcal[listcal[listcal[g, 1, 3, 1], 2, 1, 
               1], 3, 2, 1] + listcal[listcal[listcal[g, 1, 3, 1], 2, 1, 1], 
             3, 2, -1] - listcal[listcal[listcal[listcal[g, 1, 3, 1], 2, 1, 
               1], 3, 1, -2], 3, 2, 1]); term3 = (1/(2*ks))*
           (ks^2*listcal[listcal[listcal[g, 1, 4, 1], 2, 2, 1], 3, 2, 1] + 
            listcal[listcal[listcal[g, 1, 4, 1], 2, 2, 1], 3, 2, -1] - 
            listcal[listcal[listcal[listcal[g, 1, 4, 1], 2, 2, 1], 3, 1, -2], 
             3, 2, 1]); term1 + term2 + term3], r:R1[c1_, c2_, c3_] :> 
       Module[{b2, term1, term2, term3}, b2 = b20 + r[[3,2]]; 
         term1 = (-b2/(2*ks))*(ks^2*listcal[r, 3, 2, 2] + r - 
            listcal[listcal[r, 3, 1, -2], 3, 2, 2]); 
         term2 = (1/(2*ks))*(ks^2*listcal[listcal[listcal[r, 1, 1, 1], 2, 1, 
               1], 3, 2, 1] + listcal[listcal[listcal[r, 1, 1, 1], 2, 1, 1], 
             3, 2, -1] - listcal[listcal[listcal[listcal[r, 1, 1, 1], 2, 1, 
               1], 3, 1, -2], 3, 2, 1]); term3 = (1/(2*ks))*
           (ks^2*listcal[listcal[listcal[r, 1, 2, 1], 2, 1, 1], 3, 2, 1] + 
            listcal[listcal[listcal[r, 1, 2, 1], 2, 1, 1], 3, 2, -1] - 
            listcal[listcal[listcal[listcal[r, 1, 2, 1], 2, 1, 1], 3, 1, -2], 
             3, 2, 1]); term1 + term2 + term3]}
listcal[expr_, i_, j_, n_] := ReplacePart[expr, {i, j} -> expr[[i,j]] + n]
 
repvar = {P1 -> (-I)*k0, P2 -> (-I)*k0, P0R1 -> (-2*I)*k0, a10 -> a0, 
     a20 -> a0, b10 -> b0, b20 -> b0}
 
reppara2N = {a0 -> da + 2*nu, a0R -> 2*da + 2*nu, b0 -> -2*nu, d -> 3 - 2*ep, 
     ks -> 1}
 
repNumericTestKira = {nu -> 17/7, ep -> 1/13, k0 -> 5/23}
 
id[expr_] := expr /. {G[{2, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{0, n2, n3, n4}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{1, n2, n3, n4}, {a1 - 1, a2}, {b1 + 1, b2}], 
      G[{n1_, 2, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{n1, 0, n3, n4}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{n1, 1, n3, n4}, {a1, a2 - 1}, {b1 + 1, b2}], 
      G[{n1_, n2_, 2, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{n1, n2, 0, n4}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{n1, n2, 1, n4}, {a1 - 1, a2}, {b1, b2 + 1}], 
      G[{n1_, n2_, n3_, 2}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{n1, n2, n3, 0}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{n1, n2, n3, 1}, {a1, a2 - 1}, {b1, b2 + 1}], 
      R1[{2, n4_}, {a_}, {b1_, b2_}] :> -R1[{0, n4}, {a}, {b1, b2}] - 
        (2*nu + 1)*R1[{1, n4}, {a - 1}, {b1, b2 + 1}], 
      R1[{n3_, 2}, {a_}, {b1_, b2_}] :> -R1[{n3, 0}, {a}, {b1, b2}] - 
        (2*nu + 1)*R1[{n3, 1}, {a - 1}, {b1, b2 + 1}]}
 
symmetry[expr_] := Module[{test}, 
     test = expr /. {R2[{n1_, n2_}, {a_}, {b1_, b2_}] :> R1[{n1, n2}, {a}, 
           {b2, b1}]}; test = 
       test /. G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
              If[a1 > a2, G[{n2, n1, n4, n3}, {a2, a1}, {b1, b2}], G[
                {n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
            G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
             If[b1 > b2, G[{n3, n4, n1, n2}, {a1, a2}, {b2, b1}], 
              G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
           G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
            If[a1 == a2 && n1 > n2, G[{n2, n1, n4, n3}, {a2, a1}, {b1, b2}], 
             G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
          G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
           If[a1 == a2 && n1 == n2 && n3 > n4, G[{n2, n1, n4, n3}, {a2, a1}, 
             {b1, b2}], G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
         G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
          If[b1 == b2 && n1 > n3, G[{n3, n4, n1, n2}, {a1, a2}, {b2, b1}], 
           G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
        G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
         If[b1 == b2 && n1 == n3 && n2 > n4, G[{n3, n4, n1, n2}, {a1, a2}, 
           {b2, b1}], G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]]; 
      test = test /. R1[{n3_, n4_}, {a_}, {b1_, b2_}] :> 
         If[n3 > n4, R1[{n4, n3}, {a}, {b1, b2}], R1[{n3, n4}, {a}, 
           {b1, b2}]]; Return[test]; ]
 
dk0[expr_] := D[expr, k0] + (Expand[expr] /. (a_.)*(r:G[__] | R1[__]) :> 
       a*dk0Term[r])
 
dk0Term[expr_] := expr /. {G[c1_, c2_, c3_] :> G[c1, c2 + {1, 0}, c3] + 
        G[c1, c2 + {0, 1}, c3], R1[c1_, c2_, c3_] :> listcal[R1[c1, c2, c3], 
        2, 1, 1]}
 
dks[expr_] := D[expr, ks] + (Expand[expr] /. (a_.)*(r:G[__] | R1[__]) :> 
       a*dksTerm[r])
 
dksTerm[expr_] := expr /. {g:G[c1_, c2_, c3_] :> 
       Module[{b2, term1, term2, term3}, b2 = b20 + g[[3,2]]; 
         term1 = (-b2/(2*ks))*(ks^2*listcal[g, 3, 2, 2] + g - 
            listcal[listcal[g, 3, 1, -2], 3, 2, 2]); 
         term2 = (1/(2*ks))*(ks^2*listcal[listcal[listcal[g, 1, 3, 1], 2, 1, 
               1], 3, 2, 1] + listcal[listcal[listcal[g, 1, 3, 1], 2, 1, 1], 
             3, 2, -1] - listcal[listcal[listcal[listcal[g, 1, 3, 1], 2, 1, 
               1], 3, 1, -2], 3, 2, 1]); term3 = (1/(2*ks))*
           (ks^2*listcal[listcal[listcal[g, 1, 4, 1], 2, 2, 1], 3, 2, 1] + 
            listcal[listcal[listcal[g, 1, 4, 1], 2, 2, 1], 3, 2, -1] - 
            listcal[listcal[listcal[listcal[g, 1, 4, 1], 2, 2, 1], 3, 1, -2], 
             3, 2, 1]); term1 + term2 + term3], r:R1[c1_, c2_, c3_] :> 
       Module[{b2, term1, term2, term3}, b2 = b20 + r[[3,2]]; 
         term1 = (-b2/(2*ks))*(ks^2*listcal[r, 3, 2, 2] + r - 
            listcal[listcal[r, 3, 1, -2], 3, 2, 2]); 
         term2 = (1/(2*ks))*(ks^2*listcal[listcal[listcal[r, 1, 1, 1], 2, 1, 
               1], 3, 2, 1] + listcal[listcal[listcal[r, 1, 1, 1], 2, 1, 1], 
             3, 2, -1] - listcal[listcal[listcal[listcal[r, 1, 1, 1], 2, 1, 
               1], 3, 1, -2], 3, 2, 1]); term3 = (1/(2*ks))*
           (ks^2*listcal[listcal[listcal[r, 1, 2, 1], 2, 1, 1], 3, 2, 1] + 
            listcal[listcal[listcal[r, 1, 2, 1], 2, 1, 1], 3, 2, -1] - 
            listcal[listcal[listcal[listcal[r, 1, 2, 1], 2, 1, 1], 3, 1, -2], 
             3, 2, 1]); term1 + term2 + term3]}
listcal[expr_, i_, j_, n_] := ReplacePart[expr, {i, j} -> expr[[i,j]] + n]
 
repvar = {P1 -> (-I)*k0, P2 -> (-I)*k0, P0R1 -> (-2*I)*k0, a10 -> a0, 
     a20 -> a0, b10 -> b0, b20 -> b0}
 
reppara2N = {a0 -> da + 2*nu, a0R -> 2*da + 2*nu, b0 -> -2*nu, d -> 3 - 2*ep, 
     ks -> 1}
 
repNumericTestKira = {nu -> 17/7, ep -> 1/13, k0 -> 5/23}
 
id[expr_] := expr /. {G[{2, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{0, n2, n3, n4}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{1, n2, n3, n4}, {a1 - 1, a2}, {b1 + 1, b2}], 
      G[{n1_, 2, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{n1, 0, n3, n4}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{n1, 1, n3, n4}, {a1, a2 - 1}, {b1 + 1, b2}], 
      G[{n1_, n2_, 2, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{n1, n2, 0, n4}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{n1, n2, 1, n4}, {a1 - 1, a2}, {b1, b2 + 1}], 
      G[{n1_, n2_, n3_, 2}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{n1, n2, n3, 0}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{n1, n2, n3, 1}, {a1, a2 - 1}, {b1, b2 + 1}], 
      R1[{2, n4_}, {a_}, {b1_, b2_}] :> -R1[{0, n4}, {a}, {b1, b2}] - 
        (2*nu + 1)*R1[{1, n4}, {a - 1}, {b1, b2 + 1}], 
      R1[{n3_, 2}, {a_}, {b1_, b2_}] :> -R1[{n3, 0}, {a}, {b1, b2}] - 
        (2*nu + 1)*R1[{n3, 1}, {a - 1}, {b1, b2 + 1}]}
 
symmetry[expr_] := Module[{test}, 
     test = expr /. {R2[{n1_, n2_}, {a_}, {b1_, b2_}] :> R1[{n1, n2}, {a}, 
           {b2, b1}]}; test = 
       test /. G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
              If[a1 > a2, G[{n2, n1, n4, n3}, {a2, a1}, {b1, b2}], G[
                {n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
            G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
             If[b1 > b2, G[{n3, n4, n1, n2}, {a1, a2}, {b2, b1}], 
              G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
           G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
            If[a1 == a2 && n1 > n2, G[{n2, n1, n4, n3}, {a2, a1}, {b1, b2}], 
             G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
          G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
           If[a1 == a2 && n1 == n2 && n3 > n4, G[{n2, n1, n4, n3}, {a2, a1}, 
             {b1, b2}], G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
         G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
          If[b1 == b2 && n1 > n3, G[{n3, n4, n1, n2}, {a1, a2}, {b2, b1}], 
           G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
        G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
         If[b1 == b2 && n1 == n3 && n2 > n4, G[{n3, n4, n1, n2}, {a1, a2}, 
           {b2, b1}], G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]]; 
      test = test /. R1[{n3_, n4_}, {a_}, {b1_, b2_}] :> 
         If[n3 > n4, R1[{n4, n3}, {a}, {b1, b2}], R1[{n3, n4}, {a}, 
           {b1, b2}]]; Return[test]; ]
 
dk0[expr_] := D[expr, k0] + (Expand[expr] /. (a_.)*(r:G[__] | R1[__]) :> 
       a*dk0Term[r])
 
dk0Term[expr_] := expr /. {G[c1_, c2_, c3_] :> G[c1, c2 + {1, 0}, c3] + 
        G[c1, c2 + {0, 1}, c3], R1[c1_, c2_, c3_] :> listcal[R1[c1, c2, c3], 
        2, 1, 1]}
 
dks[expr_] := D[expr, ks] + (Expand[expr] /. (a_.)*(r:G[__] | R1[__]) :> 
       a*dksTerm[r])
 
dksTerm[expr_] := expr /. {g:G[c1_, c2_, c3_] :> 
       Module[{b2, term1, term2, term3}, b2 = b20 + g[[3,2]]; 
         term1 = (-b2/(2*ks))*(ks^2*listcal[g, 3, 2, 2] + g - 
            listcal[listcal[g, 3, 1, -2], 3, 2, 2]); 
         term2 = (1/(2*ks))*(ks^2*listcal[listcal[listcal[g, 1, 3, 1], 2, 1, 
               1], 3, 2, 1] + listcal[listcal[listcal[g, 1, 3, 1], 2, 1, 1], 
             3, 2, -1] - listcal[listcal[listcal[listcal[g, 1, 3, 1], 2, 1, 
               1], 3, 1, -2], 3, 2, 1]); term3 = (1/(2*ks))*
           (ks^2*listcal[listcal[listcal[g, 1, 4, 1], 2, 2, 1], 3, 2, 1] + 
            listcal[listcal[listcal[g, 1, 4, 1], 2, 2, 1], 3, 2, -1] - 
            listcal[listcal[listcal[listcal[g, 1, 4, 1], 2, 2, 1], 3, 1, -2], 
             3, 2, 1]); term1 + term2 + term3], r:R1[c1_, c2_, c3_] :> 
       Module[{b2, term1, term2, term3}, b2 = b20 + r[[3,2]]; 
         term1 = (-b2/(2*ks))*(ks^2*listcal[r, 3, 2, 2] + r - 
            listcal[listcal[r, 3, 1, -2], 3, 2, 2]); 
         term2 = (1/(2*ks))*(ks^2*listcal[listcal[listcal[r, 1, 1, 1], 2, 1, 
               1], 3, 2, 1] + listcal[listcal[listcal[r, 1, 1, 1], 2, 1, 1], 
             3, 2, -1] - listcal[listcal[listcal[listcal[r, 1, 1, 1], 2, 1, 
               1], 3, 1, -2], 3, 2, 1]); term3 = (1/(2*ks))*
           (ks^2*listcal[listcal[listcal[r, 1, 2, 1], 2, 1, 1], 3, 2, 1] + 
            listcal[listcal[listcal[r, 1, 2, 1], 2, 1, 1], 3, 2, -1] - 
            listcal[listcal[listcal[listcal[r, 1, 2, 1], 2, 1, 1], 3, 1, -2], 
             3, 2, 1]); term1 + term2 + term3]}
listcal[expr_, i_, j_, n_] := ReplacePart[expr, {i, j} -> expr[[i,j]] + n]
 
repvar = {P1 -> (-I)*k0, P2 -> (-I)*k0, P0R1 -> (-2*I)*k0, a10 -> a0, 
     a20 -> a0, b10 -> b0, b20 -> b0}
 
reppara2N = {a0 -> da + 2*nu, a0R -> 2*da + 2*nu, b0 -> -2*nu, d -> 3 - 2*ep, 
     ks -> 1}
 
repNumericTestKira = {nu -> 17/7, ep -> 1/13, k0 -> 5/23}
 
id[expr_] := expr /. {G[{2, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{0, n2, n3, n4}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{1, n2, n3, n4}, {a1 - 1, a2}, {b1 + 1, b2}], 
      G[{n1_, 2, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{n1, 0, n3, n4}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{n1, 1, n3, n4}, {a1, a2 - 1}, {b1 + 1, b2}], 
      G[{n1_, n2_, 2, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{n1, n2, 0, n4}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{n1, n2, 1, n4}, {a1 - 1, a2}, {b1, b2 + 1}], 
      G[{n1_, n2_, n3_, 2}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{n1, n2, n3, 0}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{n1, n2, n3, 1}, {a1, a2 - 1}, {b1, b2 + 1}], 
      R1[{2, n4_}, {a_}, {b1_, b2_}] :> -R1[{0, n4}, {a}, {b1, b2}] - 
        (2*nu + 1)*R1[{1, n4}, {a - 1}, {b1, b2 + 1}], 
      R1[{n3_, 2}, {a_}, {b1_, b2_}] :> -R1[{n3, 0}, {a}, {b1, b2}] - 
        (2*nu + 1)*R1[{n3, 1}, {a - 1}, {b1, b2 + 1}]}
 
symmetry[expr_] := Module[{test}, 
     test = expr /. {R2[{n1_, n2_}, {a_}, {b1_, b2_}] :> R1[{n1, n2}, {a}, 
           {b2, b1}]}; test = 
       test /. G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
              If[a1 > a2, G[{n2, n1, n4, n3}, {a2, a1}, {b1, b2}], G[
                {n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
            G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
             If[b1 > b2, G[{n3, n4, n1, n2}, {a1, a2}, {b2, b1}], 
              G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
           G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
            If[a1 == a2 && n1 > n2, G[{n2, n1, n4, n3}, {a2, a1}, {b1, b2}], 
             G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
          G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
           If[a1 == a2 && n1 == n2 && n3 > n4, G[{n2, n1, n4, n3}, {a2, a1}, 
             {b1, b2}], G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
         G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
          If[b1 == b2 && n1 > n3, G[{n3, n4, n1, n2}, {a1, a2}, {b2, b1}], 
           G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
        G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
         If[b1 == b2 && n1 == n3 && n2 > n4, G[{n3, n4, n1, n2}, {a1, a2}, 
           {b2, b1}], G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]]; 
      test = test /. R1[{n3_, n4_}, {a_}, {b1_, b2_}] :> 
         If[n3 > n4, R1[{n4, n3}, {a}, {b1, b2}], R1[{n3, n4}, {a}, 
           {b1, b2}]]; Return[test]; ]
 
dk0[expr_] := D[expr, k0] + (Expand[expr] /. (a_.)*(r:G[__] | R1[__]) :> 
       a*dk0Term[r])
 
dk0Term[expr_] := expr /. {G[c1_, c2_, c3_] :> G[c1, c2 + {1, 0}, c3] + 
        G[c1, c2 + {0, 1}, c3], R1[c1_, c2_, c3_] :> listcal[R1[c1, c2, c3], 
        2, 1, 1]}
 
dks[expr_] := D[expr, ks] + (Expand[expr] /. (a_.)*(r:G[__] | R1[__]) :> 
       a*dksTerm[r])
 
dksTerm[expr_] := expr /. {g:G[c1_, c2_, c3_] :> 
       Module[{b2, term1, term2, term3}, b2 = b20 + g[[3,2]]; 
         term1 = (-b2/(2*ks))*(ks^2*listcal[g, 3, 2, 2] + g - 
            listcal[listcal[g, 3, 1, -2], 3, 2, 2]); 
         term2 = (1/(2*ks))*(ks^2*listcal[listcal[listcal[g, 1, 3, 1], 2, 1, 
               1], 3, 2, 1] + listcal[listcal[listcal[g, 1, 3, 1], 2, 1, 1], 
             3, 2, -1] - listcal[listcal[listcal[listcal[g, 1, 3, 1], 2, 1, 
               1], 3, 1, -2], 3, 2, 1]); term3 = (1/(2*ks))*
           (ks^2*listcal[listcal[listcal[g, 1, 4, 1], 2, 2, 1], 3, 2, 1] + 
            listcal[listcal[listcal[g, 1, 4, 1], 2, 2, 1], 3, 2, -1] - 
            listcal[listcal[listcal[listcal[g, 1, 4, 1], 2, 2, 1], 3, 1, -2], 
             3, 2, 1]); term1 + term2 + term3], r:R1[c1_, c2_, c3_] :> 
       Module[{b2, term1, term2, term3}, b2 = b20 + r[[3,2]]; 
         term1 = (-b2/(2*ks))*(ks^2*listcal[r, 3, 2, 2] + r - 
            listcal[listcal[r, 3, 1, -2], 3, 2, 2]); 
         term2 = (1/(2*ks))*(ks^2*listcal[listcal[listcal[r, 1, 1, 1], 2, 1, 
               1], 3, 2, 1] + listcal[listcal[listcal[r, 1, 1, 1], 2, 1, 1], 
             3, 2, -1] - listcal[listcal[listcal[listcal[r, 1, 1, 1], 2, 1, 
               1], 3, 1, -2], 3, 2, 1]); term3 = (1/(2*ks))*
           (ks^2*listcal[listcal[listcal[r, 1, 2, 1], 2, 1, 1], 3, 2, 1] + 
            listcal[listcal[listcal[r, 1, 2, 1], 2, 1, 1], 3, 2, -1] - 
            listcal[listcal[listcal[listcal[r, 1, 2, 1], 2, 1, 1], 3, 1, -2], 
             3, 2, 1]); term1 + term2 + term3]}
listcal[expr_, i_, j_, n_] := ReplacePart[expr, {i, j} -> expr[[i,j]] + n]
 
repvar = {P1 -> (-I)*k0, P2 -> (-I)*k0, P0R1 -> (-2*I)*k0, a10 -> a0, 
     a20 -> a0, b10 -> b0, b20 -> b0}
 
reppara2N = {a0 -> da + 2*nu, a0R -> 2*da + 2*nu, b0 -> -2*nu, d -> 3 - 2*ep, 
     ks -> 1}
 
repNumericTestKira = {nu -> 17/7, ep -> 1/13, k0 -> 5/23}
 
id[expr_] := expr /. {G[{2, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{0, n2, n3, n4}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{1, n2, n3, n4}, {a1 - 1, a2}, {b1 + 1, b2}], 
      G[{n1_, 2, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{n1, 0, n3, n4}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{n1, 1, n3, n4}, {a1, a2 - 1}, {b1 + 1, b2}], 
      G[{n1_, n2_, 2, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{n1, n2, 0, n4}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{n1, n2, 1, n4}, {a1 - 1, a2}, {b1, b2 + 1}], 
      G[{n1_, n2_, n3_, 2}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{n1, n2, n3, 0}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{n1, n2, n3, 1}, {a1, a2 - 1}, {b1, b2 + 1}], 
      R1[{2, n4_}, {a_}, {b1_, b2_}] :> -R1[{0, n4}, {a}, {b1, b2}] - 
        (2*nu + 1)*R1[{1, n4}, {a - 1}, {b1, b2 + 1}], 
      R1[{n3_, 2}, {a_}, {b1_, b2_}] :> -R1[{n3, 0}, {a}, {b1, b2}] - 
        (2*nu + 1)*R1[{n3, 1}, {a - 1}, {b1, b2 + 1}]}
 
symmetry[expr_] := Module[{test}, 
     test = expr /. {R2[{n1_, n2_}, {a_}, {b1_, b2_}] :> R1[{n1, n2}, {a}, 
           {b2, b1}]}; test = 
       test /. G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
              If[a1 > a2, G[{n2, n1, n4, n3}, {a2, a1}, {b1, b2}], G[
                {n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
            G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
             If[b1 > b2, G[{n3, n4, n1, n2}, {a1, a2}, {b2, b1}], 
              G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
           G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
            If[a1 == a2 && n1 > n2, G[{n2, n1, n4, n3}, {a2, a1}, {b1, b2}], 
             G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
          G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
           If[a1 == a2 && n1 == n2 && n3 > n4, G[{n2, n1, n4, n3}, {a2, a1}, 
             {b1, b2}], G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
         G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
          If[b1 == b2 && n1 > n3, G[{n3, n4, n1, n2}, {a1, a2}, {b2, b1}], 
           G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
        G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
         If[b1 == b2 && n1 == n3 && n2 > n4, G[{n3, n4, n1, n2}, {a1, a2}, 
           {b2, b1}], G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]]; 
      test = test /. R1[{n3_, n4_}, {a_}, {b1_, b2_}] :> 
         If[n3 > n4, R1[{n4, n3}, {a}, {b1, b2}], R1[{n3, n4}, {a}, 
           {b1, b2}]]; Return[test]; ]
 
dk0[expr_] := D[expr, k0] + (Expand[expr] /. (a_.)*(r:G[__] | R1[__]) :> 
       a*dk0Term[r])
 
dk0Term[expr_] := expr /. {G[c1_, c2_, c3_] :> G[c1, c2 + {1, 0}, c3] + 
        G[c1, c2 + {0, 1}, c3], R1[c1_, c2_, c3_] :> listcal[R1[c1, c2, c3], 
        2, 1, 1]}
 
dks[expr_] := D[expr, ks] + (Expand[expr] /. (a_.)*(r:G[__] | R1[__]) :> 
       a*dksTerm[r])
 
dksTerm[expr_] := expr /. {g:G[c1_, c2_, c3_] :> 
       Module[{b2, term1, term2, term3}, b2 = b20 + g[[3,2]]; 
         term1 = (-b2/(2*ks))*(ks^2*listcal[g, 3, 2, 2] + g - 
            listcal[listcal[g, 3, 1, -2], 3, 2, 2]); 
         term2 = (1/(2*ks))*(ks^2*listcal[listcal[listcal[g, 1, 3, 1], 2, 1, 
               1], 3, 2, 1] + listcal[listcal[listcal[g, 1, 3, 1], 2, 1, 1], 
             3, 2, -1] - listcal[listcal[listcal[listcal[g, 1, 3, 1], 2, 1, 
               1], 3, 1, -2], 3, 2, 1]); term3 = (1/(2*ks))*
           (ks^2*listcal[listcal[listcal[g, 1, 4, 1], 2, 2, 1], 3, 2, 1] + 
            listcal[listcal[listcal[g, 1, 4, 1], 2, 2, 1], 3, 2, -1] - 
            listcal[listcal[listcal[listcal[g, 1, 4, 1], 2, 2, 1], 3, 1, -2], 
             3, 2, 1]); term1 + term2 + term3], r:R1[c1_, c2_, c3_] :> 
       Module[{b2, term1, term2, term3}, b2 = b20 + r[[3,2]]; 
         term1 = (-b2/(2*ks))*(ks^2*listcal[r, 3, 2, 2] + r - 
            listcal[listcal[r, 3, 1, -2], 3, 2, 2]); 
         term2 = (1/(2*ks))*(ks^2*listcal[listcal[listcal[r, 1, 1, 1], 2, 1, 
               1], 3, 2, 1] + listcal[listcal[listcal[r, 1, 1, 1], 2, 1, 1], 
             3, 2, -1] - listcal[listcal[listcal[listcal[r, 1, 1, 1], 2, 1, 
               1], 3, 1, -2], 3, 2, 1]); term3 = (1/(2*ks))*
           (ks^2*listcal[listcal[listcal[r, 1, 2, 1], 2, 1, 1], 3, 2, 1] + 
            listcal[listcal[listcal[r, 1, 2, 1], 2, 1, 1], 3, 2, -1] - 
            listcal[listcal[listcal[listcal[r, 1, 2, 1], 2, 1, 1], 3, 1, -2], 
             3, 2, 1]); term1 + term2 + term3]}
listcal[expr_, i_, j_, n_] := ReplacePart[expr, {i, j} -> expr[[i,j]] + n]
 
repvar = {P1 -> (-I)*k0, P2 -> (-I)*k0, P0R1 -> (-2*I)*k0, a10 -> a0, 
     a20 -> a0, b10 -> b0, b20 -> b0}
 
reppara2N = {a0 -> da + 2*nu, a0R -> 2*da + 2*nu, b0 -> -2*nu, d -> 3 - 2*ep, 
     ks -> 1}
 
repNumericTestKira = {nu -> 17/7, ep -> 1/13, k0 -> 5/23}
 
id[expr_] := expr /. {G[{2, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{0, n2, n3, n4}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{1, n2, n3, n4}, {a1 - 1, a2}, {b1 + 1, b2}], 
      G[{n1_, 2, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{n1, 0, n3, n4}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{n1, 1, n3, n4}, {a1, a2 - 1}, {b1 + 1, b2}], 
      G[{n1_, n2_, 2, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{n1, n2, 0, n4}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{n1, n2, 1, n4}, {a1 - 1, a2}, {b1, b2 + 1}], 
      G[{n1_, n2_, n3_, 2}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{n1, n2, n3, 0}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{n1, n2, n3, 1}, {a1, a2 - 1}, {b1, b2 + 1}], 
      R1[{2, n4_}, {a_}, {b1_, b2_}] :> -R1[{0, n4}, {a}, {b1, b2}] - 
        (2*nu + 1)*R1[{1, n4}, {a - 1}, {b1, b2 + 1}], 
      R1[{n3_, 2}, {a_}, {b1_, b2_}] :> -R1[{n3, 0}, {a}, {b1, b2}] - 
        (2*nu + 1)*R1[{n3, 1}, {a - 1}, {b1, b2 + 1}]}
 
symmetry[expr_] := Module[{test}, 
     test = expr /. {R2[{n1_, n2_}, {a_}, {b1_, b2_}] :> R1[{n1, n2}, {a}, 
           {b2, b1}]}; test = 
       test /. G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
              If[a1 > a2, G[{n2, n1, n4, n3}, {a2, a1}, {b1, b2}], G[
                {n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
            G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
             If[b1 > b2, G[{n3, n4, n1, n2}, {a1, a2}, {b2, b1}], 
              G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
           G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
            If[a1 == a2 && n1 > n2, G[{n2, n1, n4, n3}, {a2, a1}, {b1, b2}], 
             G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
          G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
           If[a1 == a2 && n1 == n2 && n3 > n4, G[{n2, n1, n4, n3}, {a2, a1}, 
             {b1, b2}], G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
         G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
          If[b1 == b2 && n1 > n3, G[{n3, n4, n1, n2}, {a1, a2}, {b2, b1}], 
           G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
        G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
         If[b1 == b2 && n1 == n3 && n2 > n4, G[{n3, n4, n1, n2}, {a1, a2}, 
           {b2, b1}], G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]]; 
      test = test /. R1[{n3_, n4_}, {a_}, {b1_, b2_}] :> 
         If[n3 > n4, R1[{n4, n3}, {a}, {b1, b2}], R1[{n3, n4}, {a}, 
           {b1, b2}]]; Return[test]; ]
 
dk0[expr_] := D[expr, k0] + (Expand[expr] /. (a_.)*(r:G[__] | R1[__]) :> 
       a*dk0Term[r])
 
dk0Term[expr_] := expr /. {G[c1_, c2_, c3_] :> G[c1, c2 + {1, 0}, c3] + 
        G[c1, c2 + {0, 1}, c3], R1[c1_, c2_, c3_] :> listcal[R1[c1, c2, c3], 
        2, 1, 1]}
 
dks[expr_] := D[expr, ks] + (Expand[expr] /. (a_.)*(r:G[__] | R1[__]) :> 
       a*dksTerm[r])
 
dksTerm[expr_] := expr /. {g:G[c1_, c2_, c3_] :> 
       Module[{b2, term1, term2, term3}, b2 = b20 + g[[3,2]]; 
         term1 = (-b2/(2*ks))*(ks^2*listcal[g, 3, 2, 2] + g - 
            listcal[listcal[g, 3, 1, -2], 3, 2, 2]); 
         term2 = (1/(2*ks))*(ks^2*listcal[listcal[listcal[g, 1, 3, 1], 2, 1, 
               1], 3, 2, 1] + listcal[listcal[listcal[g, 1, 3, 1], 2, 1, 1], 
             3, 2, -1] - listcal[listcal[listcal[listcal[g, 1, 3, 1], 2, 1, 
               1], 3, 1, -2], 3, 2, 1]); term3 = (1/(2*ks))*
           (ks^2*listcal[listcal[listcal[g, 1, 4, 1], 2, 2, 1], 3, 2, 1] + 
            listcal[listcal[listcal[g, 1, 4, 1], 2, 2, 1], 3, 2, -1] - 
            listcal[listcal[listcal[listcal[g, 1, 4, 1], 2, 2, 1], 3, 1, -2], 
             3, 2, 1]); term1 + term2 + term3], r:R1[c1_, c2_, c3_] :> 
       Module[{b2, term1, term2, term3}, b2 = b20 + r[[3,2]]; 
         term1 = (-b2/(2*ks))*(ks^2*listcal[r, 3, 2, 2] + r - 
            listcal[listcal[r, 3, 1, -2], 3, 2, 2]); 
         term2 = (1/(2*ks))*(ks^2*listcal[listcal[listcal[r, 1, 1, 1], 2, 1, 
               1], 3, 2, 1] + listcal[listcal[listcal[r, 1, 1, 1], 2, 1, 1], 
             3, 2, -1] - listcal[listcal[listcal[listcal[r, 1, 1, 1], 2, 1, 
               1], 3, 1, -2], 3, 2, 1]); term3 = (1/(2*ks))*
           (ks^2*listcal[listcal[listcal[r, 1, 2, 1], 2, 1, 1], 3, 2, 1] + 
            listcal[listcal[listcal[r, 1, 2, 1], 2, 1, 1], 3, 2, -1] - 
            listcal[listcal[listcal[listcal[r, 1, 2, 1], 2, 1, 1], 3, 1, -2], 
             3, 2, 1]); term1 + term2 + term3]}
listcal[expr_, i_, j_, n_] := ReplacePart[expr, {i, j} -> expr[[i,j]] + n]
 
repvar = {P1 -> (-I)*k0, P2 -> (-I)*k0, P0R1 -> (-2*I)*k0, a10 -> a0, 
     a20 -> a0, b10 -> b0, b20 -> b0}
 
reppara2N = {a0 -> da + 2*nu, a0R -> 2*da + 2*nu, b0 -> -2*nu, d -> 3 - 2*ep, 
     ks -> 1}
 
repNumericTestKira = {nu -> 17/7, ep -> 1/13, k0 -> 5/23}
 
id[expr_] := expr /. {G[{2, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{0, n2, n3, n4}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{1, n2, n3, n4}, {a1 - 1, a2}, {b1 + 1, b2}], 
      G[{n1_, 2, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{n1, 0, n3, n4}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{n1, 1, n3, n4}, {a1, a2 - 1}, {b1 + 1, b2}], 
      G[{n1_, n2_, 2, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{n1, n2, 0, n4}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{n1, n2, 1, n4}, {a1 - 1, a2}, {b1, b2 + 1}], 
      G[{n1_, n2_, n3_, 2}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{n1, n2, n3, 0}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{n1, n2, n3, 1}, {a1, a2 - 1}, {b1, b2 + 1}], 
      R1[{2, n4_}, {a_}, {b1_, b2_}] :> -R1[{0, n4}, {a}, {b1, b2}] - 
        (2*nu + 1)*R1[{1, n4}, {a - 1}, {b1, b2 + 1}], 
      R1[{n3_, 2}, {a_}, {b1_, b2_}] :> -R1[{n3, 0}, {a}, {b1, b2}] - 
        (2*nu + 1)*R1[{n3, 1}, {a - 1}, {b1, b2 + 1}]}
 
symmetry[expr_] := Module[{test}, 
     test = expr /. {R2[{n1_, n2_}, {a_}, {b1_, b2_}] :> R1[{n1, n2}, {a}, 
           {b2, b1}]}; test = 
       test /. G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
              If[a1 > a2, G[{n2, n1, n4, n3}, {a2, a1}, {b1, b2}], G[
                {n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
            G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
             If[b1 > b2, G[{n3, n4, n1, n2}, {a1, a2}, {b2, b1}], 
              G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
           G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
            If[a1 == a2 && n1 > n2, G[{n2, n1, n4, n3}, {a2, a1}, {b1, b2}], 
             G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
          G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
           If[a1 == a2 && n1 == n2 && n3 > n4, G[{n2, n1, n4, n3}, {a2, a1}, 
             {b1, b2}], G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
         G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
          If[b1 == b2 && n1 > n3, G[{n3, n4, n1, n2}, {a1, a2}, {b2, b1}], 
           G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
        G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
         If[b1 == b2 && n1 == n3 && n2 > n4, G[{n3, n4, n1, n2}, {a1, a2}, 
           {b2, b1}], G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]]; 
      test = test /. R1[{n3_, n4_}, {a_}, {b1_, b2_}] :> 
         If[n3 > n4, R1[{n4, n3}, {a}, {b1, b2}], R1[{n3, n4}, {a}, 
           {b1, b2}]]; Return[test]; ]
 
dk0[expr_] := D[expr, k0] + (Expand[expr] /. (a_.)*(r:G[__] | R1[__]) :> 
       a*dk0Term[r])
 
dk0Term[expr_] := expr /. {G[c1_, c2_, c3_] :> G[c1, c2 + {1, 0}, c3] + 
        G[c1, c2 + {0, 1}, c3], R1[c1_, c2_, c3_] :> listcal[R1[c1, c2, c3], 
        2, 1, 1]}
 
dks[expr_] := D[expr, ks] + (Expand[expr] /. (a_.)*(r:G[__] | R1[__]) :> 
       a*dksTerm[r])
 
dksTerm[expr_] := expr /. {g:G[c1_, c2_, c3_] :> 
       Module[{b2, term1, term2, term3}, b2 = b20 + g[[3,2]]; 
         term1 = (-b2/(2*ks))*(ks^2*listcal[g, 3, 2, 2] + g - 
            listcal[listcal[g, 3, 1, -2], 3, 2, 2]); 
         term2 = (1/(2*ks))*(ks^2*listcal[listcal[listcal[g, 1, 3, 1], 2, 1, 
               1], 3, 2, 1] + listcal[listcal[listcal[g, 1, 3, 1], 2, 1, 1], 
             3, 2, -1] - listcal[listcal[listcal[listcal[g, 1, 3, 1], 2, 1, 
               1], 3, 1, -2], 3, 2, 1]); term3 = (1/(2*ks))*
           (ks^2*listcal[listcal[listcal[g, 1, 4, 1], 2, 2, 1], 3, 2, 1] + 
            listcal[listcal[listcal[g, 1, 4, 1], 2, 2, 1], 3, 2, -1] - 
            listcal[listcal[listcal[listcal[g, 1, 4, 1], 2, 2, 1], 3, 1, -2], 
             3, 2, 1]); term1 + term2 + term3], r:R1[c1_, c2_, c3_] :> 
       Module[{b2, term1, term2, term3}, b2 = b20 + r[[3,2]]; 
         term1 = (-b2/(2*ks))*(ks^2*listcal[r, 3, 2, 2] + r - 
            listcal[listcal[r, 3, 1, -2], 3, 2, 2]); 
         term2 = (1/(2*ks))*(ks^2*listcal[listcal[listcal[r, 1, 1, 1], 2, 1, 
               1], 3, 2, 1] + listcal[listcal[listcal[r, 1, 1, 1], 2, 1, 1], 
             3, 2, -1] - listcal[listcal[listcal[listcal[r, 1, 1, 1], 2, 1, 
               1], 3, 1, -2], 3, 2, 1]); term3 = (1/(2*ks))*
           (ks^2*listcal[listcal[listcal[r, 1, 2, 1], 2, 1, 1], 3, 2, 1] + 
            listcal[listcal[listcal[r, 1, 2, 1], 2, 1, 1], 3, 2, -1] - 
            listcal[listcal[listcal[listcal[r, 1, 2, 1], 2, 1, 1], 3, 1, -2], 
             3, 2, 1]); term1 + term2 + term3]}
listcal[expr_, i_, j_, n_] := ReplacePart[expr, {i, j} -> expr[[i,j]] + n]
 
repvar = {P1 -> (-I)*k0, P2 -> (-I)*k0, P0R1 -> (-2*I)*k0, a10 -> a0, 
     a20 -> a0, b10 -> b0, b20 -> b0}
 
reppara2N = {a0 -> da + 2*nu, a0R -> 2*da + 2*nu, b0 -> -2*nu, d -> 3 - 2*ep, 
     ks -> 1}
 
repNumericTestKira = {nu -> 17/7, ep -> 1/13, k0 -> 5/23}
 
id[expr_] := expr /. {G[{2, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{0, n2, n3, n4}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{1, n2, n3, n4}, {a1 - 1, a2}, {b1 + 1, b2}], 
      G[{n1_, 2, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{n1, 0, n3, n4}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{n1, 1, n3, n4}, {a1, a2 - 1}, {b1 + 1, b2}], 
      G[{n1_, n2_, 2, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{n1, n2, 0, n4}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{n1, n2, 1, n4}, {a1 - 1, a2}, {b1, b2 + 1}], 
      G[{n1_, n2_, n3_, 2}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{n1, n2, n3, 0}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{n1, n2, n3, 1}, {a1, a2 - 1}, {b1, b2 + 1}], 
      R1[{2, n4_}, {a_}, {b1_, b2_}] :> -R1[{0, n4}, {a}, {b1, b2}] - 
        (2*nu + 1)*R1[{1, n4}, {a - 1}, {b1, b2 + 1}], 
      R1[{n3_, 2}, {a_}, {b1_, b2_}] :> -R1[{n3, 0}, {a}, {b1, b2}] - 
        (2*nu + 1)*R1[{n3, 1}, {a - 1}, {b1, b2 + 1}]}
 
symmetry[expr_] := Module[{test}, 
     test = expr /. {R2[{n1_, n2_}, {a_}, {b1_, b2_}] :> R1[{n1, n2}, {a}, 
           {b2, b1}]}; test = 
       test /. G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
              If[a1 > a2, G[{n2, n1, n4, n3}, {a2, a1}, {b1, b2}], G[
                {n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
            G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
             If[b1 > b2, G[{n3, n4, n1, n2}, {a1, a2}, {b2, b1}], 
              G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
           G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
            If[a1 == a2 && n1 > n2, G[{n2, n1, n4, n3}, {a2, a1}, {b1, b2}], 
             G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
          G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
           If[a1 == a2 && n1 == n2 && n3 > n4, G[{n2, n1, n4, n3}, {a2, a1}, 
             {b1, b2}], G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
         G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
          If[b1 == b2 && n1 > n3, G[{n3, n4, n1, n2}, {a1, a2}, {b2, b1}], 
           G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
        G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
         If[b1 == b2 && n1 == n3 && n2 > n4, G[{n3, n4, n1, n2}, {a1, a2}, 
           {b2, b1}], G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]]; 
      test = test /. R1[{n3_, n4_}, {a_}, {b1_, b2_}] :> 
         If[n3 > n4, R1[{n4, n3}, {a}, {b1, b2}], R1[{n3, n4}, {a}, 
           {b1, b2}]]; Return[test]; ]
 
dk0[expr_] := D[expr, k0] + (Expand[expr] /. (a_.)*(r:G[__] | R1[__]) :> 
       a*dk0Term[r])
 
dk0Term[expr_] := expr /. {G[c1_, c2_, c3_] :> G[c1, c2 + {1, 0}, c3] + 
        G[c1, c2 + {0, 1}, c3], R1[c1_, c2_, c3_] :> listcal[R1[c1, c2, c3], 
        2, 1, 1]}
 
dks[expr_] := D[expr, ks] + (Expand[expr] /. (a_.)*(r:G[__] | R1[__]) :> 
       a*dksTerm[r])
 
dksTerm[expr_] := expr /. {g:G[c1_, c2_, c3_] :> 
       Module[{b2, term1, term2, term3}, b2 = b20 + g[[3,2]]; 
         term1 = (-b2/(2*ks))*(ks^2*listcal[g, 3, 2, 2] + g - 
            listcal[listcal[g, 3, 1, -2], 3, 2, 2]); 
         term2 = (1/(2*ks))*(ks^2*listcal[listcal[listcal[g, 1, 3, 1], 2, 1, 
               1], 3, 2, 1] + listcal[listcal[listcal[g, 1, 3, 1], 2, 1, 1], 
             3, 2, -1] - listcal[listcal[listcal[listcal[g, 1, 3, 1], 2, 1, 
               1], 3, 1, -2], 3, 2, 1]); term3 = (1/(2*ks))*
           (ks^2*listcal[listcal[listcal[g, 1, 4, 1], 2, 2, 1], 3, 2, 1] + 
            listcal[listcal[listcal[g, 1, 4, 1], 2, 2, 1], 3, 2, -1] - 
            listcal[listcal[listcal[listcal[g, 1, 4, 1], 2, 2, 1], 3, 1, -2], 
             3, 2, 1]); term1 + term2 + term3], r:R1[c1_, c2_, c3_] :> 
       Module[{b2, term1, term2, term3}, b2 = b20 + r[[3,2]]; 
         term1 = (-b2/(2*ks))*(ks^2*listcal[r, 3, 2, 2] + r - 
            listcal[listcal[r, 3, 1, -2], 3, 2, 2]); 
         term2 = (1/(2*ks))*(ks^2*listcal[listcal[listcal[r, 1, 1, 1], 2, 1, 
               1], 3, 2, 1] + listcal[listcal[listcal[r, 1, 1, 1], 2, 1, 1], 
             3, 2, -1] - listcal[listcal[listcal[listcal[r, 1, 1, 1], 2, 1, 
               1], 3, 1, -2], 3, 2, 1]); term3 = (1/(2*ks))*
           (ks^2*listcal[listcal[listcal[r, 1, 2, 1], 2, 1, 1], 3, 2, 1] + 
            listcal[listcal[listcal[r, 1, 2, 1], 2, 1, 1], 3, 2, -1] - 
            listcal[listcal[listcal[listcal[r, 1, 2, 1], 2, 1, 1], 3, 1, -2], 
             3, 2, 1]); term1 + term2 + term3]}
listcal[expr_, i_, j_, n_] := ReplacePart[expr, {i, j} -> expr[[i,j]] + n]
 
repvar = {P1 -> (-I)*k0, P2 -> (-I)*k0, P0R1 -> (-2*I)*k0, a10 -> a0, 
     a20 -> a0, b10 -> b0, b20 -> b0}
 
reppara2N = {a0 -> da + 2*nu, a0R -> 2*da + 2*nu, b0 -> -2*nu, d -> 3 - 2*ep, 
     ks -> 1}
 
repNumericTestKira = {nu -> 17/7, ep -> 1/13, k0 -> 5/23}
 
id[expr_] := expr /. {G[{2, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{0, n2, n3, n4}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{1, n2, n3, n4}, {a1 - 1, a2}, {b1 + 1, b2}], 
      G[{n1_, 2, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{n1, 0, n3, n4}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{n1, 1, n3, n4}, {a1, a2 - 1}, {b1 + 1, b2}], 
      G[{n1_, n2_, 2, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{n1, n2, 0, n4}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{n1, n2, 1, n4}, {a1 - 1, a2}, {b1, b2 + 1}], 
      G[{n1_, n2_, n3_, 2}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{n1, n2, n3, 0}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{n1, n2, n3, 1}, {a1, a2 - 1}, {b1, b2 + 1}], 
      R1[{2, n4_}, {a_}, {b1_, b2_}] :> -R1[{0, n4}, {a}, {b1, b2}] - 
        (2*nu + 1)*R1[{1, n4}, {a - 1}, {b1, b2 + 1}], 
      R1[{n3_, 2}, {a_}, {b1_, b2_}] :> -R1[{n3, 0}, {a}, {b1, b2}] - 
        (2*nu + 1)*R1[{n3, 1}, {a - 1}, {b1, b2 + 1}]}
 
symmetry[expr_] := Module[{test}, 
     test = expr /. {R2[{n1_, n2_}, {a_}, {b1_, b2_}] :> R1[{n1, n2}, {a}, 
           {b2, b1}]}; test = 
       test /. G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
              If[a1 > a2, G[{n2, n1, n4, n3}, {a2, a1}, {b1, b2}], G[
                {n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
            G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
             If[b1 > b2, G[{n3, n4, n1, n2}, {a1, a2}, {b2, b1}], 
              G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
           G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
            If[a1 == a2 && n1 > n2, G[{n2, n1, n4, n3}, {a2, a1}, {b1, b2}], 
             G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
          G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
           If[a1 == a2 && n1 == n2 && n3 > n4, G[{n2, n1, n4, n3}, {a2, a1}, 
             {b1, b2}], G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
         G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
          If[b1 == b2 && n1 > n3, G[{n3, n4, n1, n2}, {a1, a2}, {b2, b1}], 
           G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
        G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
         If[b1 == b2 && n1 == n3 && n2 > n4, G[{n3, n4, n1, n2}, {a1, a2}, 
           {b2, b1}], G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]]; 
      test = test /. R1[{n3_, n4_}, {a_}, {b1_, b2_}] :> 
         If[n3 > n4, R1[{n4, n3}, {a}, {b1, b2}], R1[{n3, n4}, {a}, 
           {b1, b2}]]; Return[test]; ]
 
dk0[expr_] := D[expr, k0] + (Expand[expr] /. (a_.)*(r:G[__] | R1[__]) :> 
       a*dk0Term[r])
 
dk0Term[expr_] := expr /. {G[c1_, c2_, c3_] :> G[c1, c2 + {1, 0}, c3] + 
        G[c1, c2 + {0, 1}, c3], R1[c1_, c2_, c3_] :> listcal[R1[c1, c2, c3], 
        2, 1, 1]}
 
dks[expr_] := D[expr, ks] + (Expand[expr] /. (a_.)*(r:G[__] | R1[__]) :> 
       a*dksTerm[r])
 
dksTerm[expr_] := expr /. {g:G[c1_, c2_, c3_] :> 
       Module[{b2, term1, term2, term3}, b2 = b20 + g[[3,2]]; 
         term1 = (-b2/(2*ks))*(ks^2*listcal[g, 3, 2, 2] + g - 
            listcal[listcal[g, 3, 1, -2], 3, 2, 2]); 
         term2 = (1/(2*ks))*(ks^2*listcal[listcal[listcal[g, 1, 3, 1], 2, 1, 
               1], 3, 2, 1] + listcal[listcal[listcal[g, 1, 3, 1], 2, 1, 1], 
             3, 2, -1] - listcal[listcal[listcal[listcal[g, 1, 3, 1], 2, 1, 
               1], 3, 1, -2], 3, 2, 1]); term3 = (1/(2*ks))*
           (ks^2*listcal[listcal[listcal[g, 1, 4, 1], 2, 2, 1], 3, 2, 1] + 
            listcal[listcal[listcal[g, 1, 4, 1], 2, 2, 1], 3, 2, -1] - 
            listcal[listcal[listcal[listcal[g, 1, 4, 1], 2, 2, 1], 3, 1, -2], 
             3, 2, 1]); term1 + term2 + term3], r:R1[c1_, c2_, c3_] :> 
       Module[{b2, term1, term2, term3}, b2 = b20 + r[[3,2]]; 
         term1 = (-b2/(2*ks))*(ks^2*listcal[r, 3, 2, 2] + r - 
            listcal[listcal[r, 3, 1, -2], 3, 2, 2]); 
         term2 = (1/(2*ks))*(ks^2*listcal[listcal[listcal[r, 1, 1, 1], 2, 1, 
               1], 3, 2, 1] + listcal[listcal[listcal[r, 1, 1, 1], 2, 1, 1], 
             3, 2, -1] - listcal[listcal[listcal[listcal[r, 1, 1, 1], 2, 1, 
               1], 3, 1, -2], 3, 2, 1]); term3 = (1/(2*ks))*
           (ks^2*listcal[listcal[listcal[r, 1, 2, 1], 2, 1, 1], 3, 2, 1] + 
            listcal[listcal[listcal[r, 1, 2, 1], 2, 1, 1], 3, 2, -1] - 
            listcal[listcal[listcal[listcal[r, 1, 2, 1], 2, 1, 1], 3, 1, -2], 
             3, 2, 1]); term1 + term2 + term3]}
listcal[expr_, i_, j_, n_] := ReplacePart[expr, {i, j} -> expr[[i,j]] + n]
 
repvar = {P1 -> (-I)*k0, P2 -> (-I)*k0, P0R1 -> (-2*I)*k0, a10 -> a0, 
     a20 -> a0, b10 -> b0, b20 -> b0}
 
reppara2N = {a0 -> da + 2*nu, a0R -> 2*da + 2*nu, b0 -> -2*nu, d -> 3 - 2*ep, 
     ks -> 1}
 
repNumericTestKira = {nu -> 17/7, ep -> 1/13, k0 -> 5/23}
 
id[expr_] := expr /. {G[{2, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{0, n2, n3, n4}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{1, n2, n3, n4}, {a1 - 1, a2}, {b1 + 1, b2}], 
      G[{n1_, 2, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{n1, 0, n3, n4}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{n1, 1, n3, n4}, {a1, a2 - 1}, {b1 + 1, b2}], 
      G[{n1_, n2_, 2, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{n1, n2, 0, n4}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{n1, n2, 1, n4}, {a1 - 1, a2}, {b1, b2 + 1}], 
      G[{n1_, n2_, n3_, 2}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{n1, n2, n3, 0}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{n1, n2, n3, 1}, {a1, a2 - 1}, {b1, b2 + 1}], 
      R1[{2, n4_}, {a_}, {b1_, b2_}] :> -R1[{0, n4}, {a}, {b1, b2}] - 
        (2*nu + 1)*R1[{1, n4}, {a - 1}, {b1, b2 + 1}], 
      R1[{n3_, 2}, {a_}, {b1_, b2_}] :> -R1[{n3, 0}, {a}, {b1, b2}] - 
        (2*nu + 1)*R1[{n3, 1}, {a - 1}, {b1, b2 + 1}]}
 
symmetry[expr_] := Module[{test}, 
     test = expr /. {R2[{n1_, n2_}, {a_}, {b1_, b2_}] :> R1[{n1, n2}, {a}, 
           {b2, b1}]}; test = 
       test /. G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
              If[a1 > a2, G[{n2, n1, n4, n3}, {a2, a1}, {b1, b2}], G[
                {n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
            G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
             If[b1 > b2, G[{n3, n4, n1, n2}, {a1, a2}, {b2, b1}], 
              G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
           G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
            If[a1 == a2 && n1 > n2, G[{n2, n1, n4, n3}, {a2, a1}, {b1, b2}], 
             G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
          G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
           If[a1 == a2 && n1 == n2 && n3 > n4, G[{n2, n1, n4, n3}, {a2, a1}, 
             {b1, b2}], G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
         G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
          If[b1 == b2 && n1 > n3, G[{n3, n4, n1, n2}, {a1, a2}, {b2, b1}], 
           G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
        G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
         If[b1 == b2 && n1 == n3 && n2 > n4, G[{n3, n4, n1, n2}, {a1, a2}, 
           {b2, b1}], G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]]; 
      test = test /. R1[{n3_, n4_}, {a_}, {b1_, b2_}] :> 
         If[n3 > n4, R1[{n4, n3}, {a}, {b1, b2}], R1[{n3, n4}, {a}, 
           {b1, b2}]]; Return[test]; ]
 
dk0[expr_] := D[expr, k0] + (Expand[expr] /. (a_.)*(r:G[__] | R1[__]) :> 
       a*dk0Term[r])
 
dk0Term[expr_] := expr /. {G[c1_, c2_, c3_] :> G[c1, c2 + {1, 0}, c3] + 
        G[c1, c2 + {0, 1}, c3], R1[c1_, c2_, c3_] :> listcal[R1[c1, c2, c3], 
        2, 1, 1]}
 
dks[expr_] := D[expr, ks] + (Expand[expr] /. (a_.)*(r:G[__] | R1[__]) :> 
       a*dksTerm[r])
 
dksTerm[expr_] := expr /. {g:G[c1_, c2_, c3_] :> 
       Module[{b2, term1, term2, term3}, b2 = b20 + g[[3,2]]; 
         term1 = (-b2/(2*ks))*(ks^2*listcal[g, 3, 2, 2] + g - 
            listcal[listcal[g, 3, 1, -2], 3, 2, 2]); 
         term2 = (1/(2*ks))*(ks^2*listcal[listcal[listcal[g, 1, 3, 1], 2, 1, 
               1], 3, 2, 1] + listcal[listcal[listcal[g, 1, 3, 1], 2, 1, 1], 
             3, 2, -1] - listcal[listcal[listcal[listcal[g, 1, 3, 1], 2, 1, 
               1], 3, 1, -2], 3, 2, 1]); term3 = (1/(2*ks))*
           (ks^2*listcal[listcal[listcal[g, 1, 4, 1], 2, 2, 1], 3, 2, 1] + 
            listcal[listcal[listcal[g, 1, 4, 1], 2, 2, 1], 3, 2, -1] - 
            listcal[listcal[listcal[listcal[g, 1, 4, 1], 2, 2, 1], 3, 1, -2], 
             3, 2, 1]); term1 + term2 + term3], r:R1[c1_, c2_, c3_] :> 
       Module[{b2, term1, term2, term3}, b2 = b20 + r[[3,2]]; 
         term1 = (-b2/(2*ks))*(ks^2*listcal[r, 3, 2, 2] + r - 
            listcal[listcal[r, 3, 1, -2], 3, 2, 2]); 
         term2 = (1/(2*ks))*(ks^2*listcal[listcal[listcal[r, 1, 1, 1], 2, 1, 
               1], 3, 2, 1] + listcal[listcal[listcal[r, 1, 1, 1], 2, 1, 1], 
             3, 2, -1] - listcal[listcal[listcal[listcal[r, 1, 1, 1], 2, 1, 
               1], 3, 1, -2], 3, 2, 1]); term3 = (1/(2*ks))*
           (ks^2*listcal[listcal[listcal[r, 1, 2, 1], 2, 1, 1], 3, 2, 1] + 
            listcal[listcal[listcal[r, 1, 2, 1], 2, 1, 1], 3, 2, -1] - 
            listcal[listcal[listcal[listcal[r, 1, 2, 1], 2, 1, 1], 3, 1, -2], 
             3, 2, 1]); term1 + term2 + term3]}
listcal[expr_, i_, j_, n_] := ReplacePart[expr, {i, j} -> expr[[i,j]] + n]
 
repvar = {P1 -> (-I)*k0, P2 -> (-I)*k0, P0R1 -> (-2*I)*k0, a10 -> a0, 
     a20 -> a0, b10 -> b0, b20 -> b0}
 
reppara2N = {a0 -> da + 2*nu, a0R -> 2*da + 2*nu, b0 -> -2*nu, d -> 3 - 2*ep, 
     ks -> 1}
 
repNumericTestKira = {nu -> 17/7, ep -> 1/13, k0 -> 5/23}
 
id[expr_] := expr /. {G[{2, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{0, n2, n3, n4}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{1, n2, n3, n4}, {a1 - 1, a2}, {b1 + 1, b2}], 
      G[{n1_, 2, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{n1, 0, n3, n4}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{n1, 1, n3, n4}, {a1, a2 - 1}, {b1 + 1, b2}], 
      G[{n1_, n2_, 2, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{n1, n2, 0, n4}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{n1, n2, 1, n4}, {a1 - 1, a2}, {b1, b2 + 1}], 
      G[{n1_, n2_, n3_, 2}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{n1, n2, n3, 0}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{n1, n2, n3, 1}, {a1, a2 - 1}, {b1, b2 + 1}], 
      R1[{2, n4_}, {a_}, {b1_, b2_}] :> -R1[{0, n4}, {a}, {b1, b2}] - 
        (2*nu + 1)*R1[{1, n4}, {a - 1}, {b1, b2 + 1}], 
      R1[{n3_, 2}, {a_}, {b1_, b2_}] :> -R1[{n3, 0}, {a}, {b1, b2}] - 
        (2*nu + 1)*R1[{n3, 1}, {a - 1}, {b1, b2 + 1}]}
 
symmetry[expr_] := Module[{test}, 
     test = expr /. {R2[{n1_, n2_}, {a_}, {b1_, b2_}] :> R1[{n1, n2}, {a}, 
           {b2, b1}]}; test = 
       test /. G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
              If[a1 > a2, G[{n2, n1, n4, n3}, {a2, a1}, {b1, b2}], G[
                {n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
            G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
             If[b1 > b2, G[{n3, n4, n1, n2}, {a1, a2}, {b2, b1}], 
              G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
           G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
            If[a1 == a2 && n1 > n2, G[{n2, n1, n4, n3}, {a2, a1}, {b1, b2}], 
             G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
          G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
           If[a1 == a2 && n1 == n2 && n3 > n4, G[{n2, n1, n4, n3}, {a2, a1}, 
             {b1, b2}], G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
         G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
          If[b1 == b2 && n1 > n3, G[{n3, n4, n1, n2}, {a1, a2}, {b2, b1}], 
           G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
        G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
         If[b1 == b2 && n1 == n3 && n2 > n4, G[{n3, n4, n1, n2}, {a1, a2}, 
           {b2, b1}], G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]]; 
      test = test /. R1[{n3_, n4_}, {a_}, {b1_, b2_}] :> 
         If[n3 > n4, R1[{n4, n3}, {a}, {b1, b2}], R1[{n3, n4}, {a}, 
           {b1, b2}]]; Return[test]; ]
 
dk0[expr_] := D[expr, k0] + (Expand[expr] /. (a_.)*(r:G[__] | R1[__]) :> 
       a*dk0Term[r])
 
dk0Term[expr_] := expr /. {G[c1_, c2_, c3_] :> G[c1, c2 + {1, 0}, c3] + 
        G[c1, c2 + {0, 1}, c3], R1[c1_, c2_, c3_] :> listcal[R1[c1, c2, c3], 
        2, 1, 1]}
 
dks[expr_] := D[expr, ks] + (Expand[expr] /. (a_.)*(r:G[__] | R1[__]) :> 
       a*dksTerm[r])
 
dksTerm[expr_] := expr /. {g:G[c1_, c2_, c3_] :> 
       Module[{b2, term1, term2, term3}, b2 = b20 + g[[3,2]]; 
         term1 = (-b2/(2*ks))*(ks^2*listcal[g, 3, 2, 2] + g - 
            listcal[listcal[g, 3, 1, -2], 3, 2, 2]); 
         term2 = (1/(2*ks))*(ks^2*listcal[listcal[listcal[g, 1, 3, 1], 2, 1, 
               1], 3, 2, 1] + listcal[listcal[listcal[g, 1, 3, 1], 2, 1, 1], 
             3, 2, -1] - listcal[listcal[listcal[listcal[g, 1, 3, 1], 2, 1, 
               1], 3, 1, -2], 3, 2, 1]); term3 = (1/(2*ks))*
           (ks^2*listcal[listcal[listcal[g, 1, 4, 1], 2, 2, 1], 3, 2, 1] + 
            listcal[listcal[listcal[g, 1, 4, 1], 2, 2, 1], 3, 2, -1] - 
            listcal[listcal[listcal[listcal[g, 1, 4, 1], 2, 2, 1], 3, 1, -2], 
             3, 2, 1]); term1 + term2 + term3], r:R1[c1_, c2_, c3_] :> 
       Module[{b2, term1, term2, term3}, b2 = b20 + r[[3,2]]; 
         term1 = (-b2/(2*ks))*(ks^2*listcal[r, 3, 2, 2] + r - 
            listcal[listcal[r, 3, 1, -2], 3, 2, 2]); 
         term2 = (1/(2*ks))*(ks^2*listcal[listcal[listcal[r, 1, 1, 1], 2, 1, 
               1], 3, 2, 1] + listcal[listcal[listcal[r, 1, 1, 1], 2, 1, 1], 
             3, 2, -1] - listcal[listcal[listcal[listcal[r, 1, 1, 1], 2, 1, 
               1], 3, 1, -2], 3, 2, 1]); term3 = (1/(2*ks))*
           (ks^2*listcal[listcal[listcal[r, 1, 2, 1], 2, 1, 1], 3, 2, 1] + 
            listcal[listcal[listcal[r, 1, 2, 1], 2, 1, 1], 3, 2, -1] - 
            listcal[listcal[listcal[listcal[r, 1, 2, 1], 2, 1, 1], 3, 1, -2], 
             3, 2, 1]); term1 + term2 + term3]}
listcal[expr_, i_, j_, n_] := ReplacePart[expr, {i, j} -> expr[[i,j]] + n]
 
repvar = {P1 -> (-I)*k0, P2 -> (-I)*k0, P0R1 -> (-2*I)*k0, a10 -> a0, 
     a20 -> a0, b10 -> b0, b20 -> b0}
 
reppara2N = {a0 -> da + 2*nu, a0R -> 2*da + 2*nu, b0 -> -2*nu, d -> 3 - 2*ep, 
     ks -> 1}
 
repNumericTestKira = {nu -> 17/7, ep -> 1/13, k0 -> 5/23}
 
id[expr_] := expr /. {G[{2, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{0, n2, n3, n4}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{1, n2, n3, n4}, {a1 - 1, a2}, {b1 + 1, b2}], 
      G[{n1_, 2, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{n1, 0, n3, n4}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{n1, 1, n3, n4}, {a1, a2 - 1}, {b1 + 1, b2}], 
      G[{n1_, n2_, 2, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{n1, n2, 0, n4}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{n1, n2, 1, n4}, {a1 - 1, a2}, {b1, b2 + 1}], 
      G[{n1_, n2_, n3_, 2}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{n1, n2, n3, 0}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{n1, n2, n3, 1}, {a1, a2 - 1}, {b1, b2 + 1}], 
      R1[{2, n4_}, {a_}, {b1_, b2_}] :> -R1[{0, n4}, {a}, {b1, b2}] - 
        (2*nu + 1)*R1[{1, n4}, {a - 1}, {b1, b2 + 1}], 
      R1[{n3_, 2}, {a_}, {b1_, b2_}] :> -R1[{n3, 0}, {a}, {b1, b2}] - 
        (2*nu + 1)*R1[{n3, 1}, {a - 1}, {b1, b2 + 1}]}
 
symmetry[expr_] := Module[{test}, 
     test = expr /. {R2[{n1_, n2_}, {a_}, {b1_, b2_}] :> R1[{n1, n2}, {a}, 
           {b2, b1}]}; test = 
       test /. G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
              If[a1 > a2, G[{n2, n1, n4, n3}, {a2, a1}, {b1, b2}], G[
                {n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
            G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
             If[b1 > b2, G[{n3, n4, n1, n2}, {a1, a2}, {b2, b1}], 
              G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
           G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
            If[a1 == a2 && n1 > n2, G[{n2, n1, n4, n3}, {a2, a1}, {b1, b2}], 
             G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
          G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
           If[a1 == a2 && n1 == n2 && n3 > n4, G[{n2, n1, n4, n3}, {a2, a1}, 
             {b1, b2}], G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
         G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
          If[b1 == b2 && n1 > n3, G[{n3, n4, n1, n2}, {a1, a2}, {b2, b1}], 
           G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
        G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
         If[b1 == b2 && n1 == n3 && n2 > n4, G[{n3, n4, n1, n2}, {a1, a2}, 
           {b2, b1}], G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]]; 
      test = test /. R1[{n3_, n4_}, {a_}, {b1_, b2_}] :> 
         If[n3 > n4, R1[{n4, n3}, {a}, {b1, b2}], R1[{n3, n4}, {a}, 
           {b1, b2}]]; Return[test]; ]
 
dk0[expr_] := D[expr, k0] + (Expand[expr] /. (a_.)*(r:G[__] | R1[__]) :> 
       a*dk0Term[r])
 
dk0Term[expr_] := expr /. {G[c1_, c2_, c3_] :> G[c1, c2 + {1, 0}, c3] + 
        G[c1, c2 + {0, 1}, c3], R1[c1_, c2_, c3_] :> listcal[R1[c1, c2, c3], 
        2, 1, 1]}
 
dks[expr_] := D[expr, ks] + (Expand[expr] /. (a_.)*(r:G[__] | R1[__]) :> 
       a*dksTerm[r])
 
dksTerm[expr_] := expr /. {g:G[c1_, c2_, c3_] :> 
       Module[{b2, term1, term2, term3}, b2 = b20 + g[[3,2]]; 
         term1 = (-b2/(2*ks))*(ks^2*listcal[g, 3, 2, 2] + g - 
            listcal[listcal[g, 3, 1, -2], 3, 2, 2]); 
         term2 = (1/(2*ks))*(ks^2*listcal[listcal[listcal[g, 1, 3, 1], 2, 1, 
               1], 3, 2, 1] + listcal[listcal[listcal[g, 1, 3, 1], 2, 1, 1], 
             3, 2, -1] - listcal[listcal[listcal[listcal[g, 1, 3, 1], 2, 1, 
               1], 3, 1, -2], 3, 2, 1]); term3 = (1/(2*ks))*
           (ks^2*listcal[listcal[listcal[g, 1, 4, 1], 2, 2, 1], 3, 2, 1] + 
            listcal[listcal[listcal[g, 1, 4, 1], 2, 2, 1], 3, 2, -1] - 
            listcal[listcal[listcal[listcal[g, 1, 4, 1], 2, 2, 1], 3, 1, -2], 
             3, 2, 1]); term1 + term2 + term3], r:R1[c1_, c2_, c3_] :> 
       Module[{b2, term1, term2, term3}, b2 = b20 + r[[3,2]]; 
         term1 = (-b2/(2*ks))*(ks^2*listcal[r, 3, 2, 2] + r - 
            listcal[listcal[r, 3, 1, -2], 3, 2, 2]); 
         term2 = (1/(2*ks))*(ks^2*listcal[listcal[listcal[r, 1, 1, 1], 2, 1, 
               1], 3, 2, 1] + listcal[listcal[listcal[r, 1, 1, 1], 2, 1, 1], 
             3, 2, -1] - listcal[listcal[listcal[listcal[r, 1, 1, 1], 2, 1, 
               1], 3, 1, -2], 3, 2, 1]); term3 = (1/(2*ks))*
           (ks^2*listcal[listcal[listcal[r, 1, 2, 1], 2, 1, 1], 3, 2, 1] + 
            listcal[listcal[listcal[r, 1, 2, 1], 2, 1, 1], 3, 2, -1] - 
            listcal[listcal[listcal[listcal[r, 1, 2, 1], 2, 1, 1], 3, 1, -2], 
             3, 2, 1]); term1 + term2 + term3]}
listcal[expr_, i_, j_, n_] := ReplacePart[expr, {i, j} -> expr[[i,j]] + n]
 
repvar = {P1 -> (-I)*k0, P2 -> (-I)*k0, P0R1 -> (-2*I)*k0, a10 -> a0, 
     a20 -> a0, b10 -> b0, b20 -> b0}
 
reppara2N = {a0 -> da + 2*nu, a0R -> 2*da + 2*nu, b0 -> -2*nu, d -> 3 - 2*ep, 
     ks -> 1}
 
repNumericTestKira = {nu -> 17/7, ep -> 1/13, k0 -> 5/23, da -> 0}
 
id[expr_] := expr /. {G[{2, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{0, n2, n3, n4}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{1, n2, n3, n4}, {a1 - 1, a2}, {b1 + 1, b2}], 
      G[{n1_, 2, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{n1, 0, n3, n4}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{n1, 1, n3, n4}, {a1, a2 - 1}, {b1 + 1, b2}], 
      G[{n1_, n2_, 2, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{n1, n2, 0, n4}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{n1, n2, 1, n4}, {a1 - 1, a2}, {b1, b2 + 1}], 
      G[{n1_, n2_, n3_, 2}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{n1, n2, n3, 0}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{n1, n2, n3, 1}, {a1, a2 - 1}, {b1, b2 + 1}], 
      R1[{2, n4_}, {a_}, {b1_, b2_}] :> -R1[{0, n4}, {a}, {b1, b2}] - 
        (2*nu + 1)*R1[{1, n4}, {a - 1}, {b1, b2 + 1}], 
      R1[{n3_, 2}, {a_}, {b1_, b2_}] :> -R1[{n3, 0}, {a}, {b1, b2}] - 
        (2*nu + 1)*R1[{n3, 1}, {a - 1}, {b1, b2 + 1}]}
 
symmetry[expr_] := Module[{test}, 
     test = expr /. {R2[{n1_, n2_}, {a_}, {b1_, b2_}] :> R1[{n1, n2}, {a}, 
           {b2, b1}]}; test = 
       test /. G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
              If[a1 > a2, G[{n2, n1, n4, n3}, {a2, a1}, {b1, b2}], G[
                {n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
            G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
             If[b1 > b2, G[{n3, n4, n1, n2}, {a1, a2}, {b2, b1}], 
              G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
           G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
            If[a1 == a2 && n1 > n2, G[{n2, n1, n4, n3}, {a2, a1}, {b1, b2}], 
             G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
          G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
           If[a1 == a2 && n1 == n2 && n3 > n4, G[{n2, n1, n4, n3}, {a2, a1}, 
             {b1, b2}], G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
         G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
          If[b1 == b2 && n1 > n3, G[{n3, n4, n1, n2}, {a1, a2}, {b2, b1}], 
           G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
        G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
         If[b1 == b2 && n1 == n3 && n2 > n4, G[{n3, n4, n1, n2}, {a1, a2}, 
           {b2, b1}], G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]]; 
      test = test /. R1[{n3_, n4_}, {a_}, {b1_, b2_}] :> 
         If[n3 > n4, R1[{n4, n3}, {a}, {b1, b2}], R1[{n3, n4}, {a}, 
           {b1, b2}]]; Return[test]; ]
 
dk0[expr_] := D[expr, k0] + (Expand[expr] /. (a_.)*(r:G[__] | R1[__]) :> 
       a*dk0Term[r])
 
dk0Term[expr_] := expr /. {G[c1_, c2_, c3_] :> G[c1, c2 + {1, 0}, c3] + 
        G[c1, c2 + {0, 1}, c3], R1[c1_, c2_, c3_] :> listcal[R1[c1, c2, c3], 
        2, 1, 1]}
 
dks[expr_] := D[expr, ks] + (Expand[expr] /. (a_.)*(r:G[__] | R1[__]) :> 
       a*dksTerm[r])
 
dksTerm[expr_] := expr /. {g:G[c1_, c2_, c3_] :> 
       Module[{b2, term1, term2, term3}, b2 = b20 + g[[3,2]]; 
         term1 = (-b2/(2*ks))*(ks^2*listcal[g, 3, 2, 2] + g - 
            listcal[listcal[g, 3, 1, -2], 3, 2, 2]); 
         term2 = (1/(2*ks))*(ks^2*listcal[listcal[listcal[g, 1, 3, 1], 2, 1, 
               1], 3, 2, 1] + listcal[listcal[listcal[g, 1, 3, 1], 2, 1, 1], 
             3, 2, -1] - listcal[listcal[listcal[listcal[g, 1, 3, 1], 2, 1, 
               1], 3, 1, -2], 3, 2, 1]); term3 = (1/(2*ks))*
           (ks^2*listcal[listcal[listcal[g, 1, 4, 1], 2, 2, 1], 3, 2, 1] + 
            listcal[listcal[listcal[g, 1, 4, 1], 2, 2, 1], 3, 2, -1] - 
            listcal[listcal[listcal[listcal[g, 1, 4, 1], 2, 2, 1], 3, 1, -2], 
             3, 2, 1]); term1 + term2 + term3], r:R1[c1_, c2_, c3_] :> 
       Module[{b2, term1, term2, term3}, b2 = b20 + r[[3,2]]; 
         term1 = (-b2/(2*ks))*(ks^2*listcal[r, 3, 2, 2] + r - 
            listcal[listcal[r, 3, 1, -2], 3, 2, 2]); 
         term2 = (1/(2*ks))*(ks^2*listcal[listcal[listcal[r, 1, 1, 1], 2, 1, 
               1], 3, 2, 1] + listcal[listcal[listcal[r, 1, 1, 1], 2, 1, 1], 
             3, 2, -1] - listcal[listcal[listcal[listcal[r, 1, 1, 1], 2, 1, 
               1], 3, 1, -2], 3, 2, 1]); term3 = (1/(2*ks))*
           (ks^2*listcal[listcal[listcal[r, 1, 2, 1], 2, 1, 1], 3, 2, 1] + 
            listcal[listcal[listcal[r, 1, 2, 1], 2, 1, 1], 3, 2, -1] - 
            listcal[listcal[listcal[listcal[r, 1, 2, 1], 2, 1, 1], 3, 1, -2], 
             3, 2, 1]); term1 + term2 + term3]}
listcal[expr_, i_, j_, n_] := ReplacePart[expr, {i, j} -> expr[[i,j]] + n]
 
repvar = {P1 -> (-I)*k0, P2 -> (-I)*k0, P0R1 -> (-2*I)*k0, a10 -> a0, 
     a20 -> a0, b10 -> b0, b20 -> b0}
 
reppara2N = {a0 -> da + 2*nu, a0R -> 2*da + 2*nu, b0 -> -2*nu, b20R -> 0, 
     d -> 3 - 2*ep, ks -> 1}
 
repNumericTestKira = {nu -> 17/7, ep -> 1/13, k0 -> 5/23, da -> 0}
 
id[expr_] := expr /. {G[{2, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{0, n2, n3, n4}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{1, n2, n3, n4}, {a1 - 1, a2}, {b1 + 1, b2}], 
      G[{n1_, 2, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{n1, 0, n3, n4}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{n1, 1, n3, n4}, {a1, a2 - 1}, {b1 + 1, b2}], 
      G[{n1_, n2_, 2, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{n1, n2, 0, n4}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{n1, n2, 1, n4}, {a1 - 1, a2}, {b1, b2 + 1}], 
      G[{n1_, n2_, n3_, 2}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{n1, n2, n3, 0}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{n1, n2, n3, 1}, {a1, a2 - 1}, {b1, b2 + 1}], 
      R1[{2, n4_}, {a_}, {b1_, b2_}] :> -R1[{0, n4}, {a}, {b1, b2}] - 
        (2*nu + 1)*R1[{1, n4}, {a - 1}, {b1, b2 + 1}], 
      R1[{n3_, 2}, {a_}, {b1_, b2_}] :> -R1[{n3, 0}, {a}, {b1, b2}] - 
        (2*nu + 1)*R1[{n3, 1}, {a - 1}, {b1, b2 + 1}]}
 
symmetry[expr_] := Module[{test}, 
     test = expr /. {R2[{n1_, n2_}, {a_}, {b1_, b2_}] :> R1[{n1, n2}, {a}, 
           {b2, b1}]}; test = 
       test /. G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
              If[a1 > a2, G[{n2, n1, n4, n3}, {a2, a1}, {b1, b2}], G[
                {n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
            G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
             If[b1 > b2, G[{n3, n4, n1, n2}, {a1, a2}, {b2, b1}], 
              G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
           G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
            If[a1 == a2 && n1 > n2, G[{n2, n1, n4, n3}, {a2, a1}, {b1, b2}], 
             G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
          G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
           If[a1 == a2 && n1 == n2 && n3 > n4, G[{n2, n1, n4, n3}, {a2, a1}, 
             {b1, b2}], G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
         G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
          If[b1 == b2 && n1 > n3, G[{n3, n4, n1, n2}, {a1, a2}, {b2, b1}], 
           G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
        G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
         If[b1 == b2 && n1 == n3 && n2 > n4, G[{n3, n4, n1, n2}, {a1, a2}, 
           {b2, b1}], G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]]; 
      test = test /. R1[{n3_, n4_}, {a_}, {b1_, b2_}] :> 
         If[n3 > n4, R1[{n4, n3}, {a}, {b1, b2}], R1[{n3, n4}, {a}, 
           {b1, b2}]]; Return[test]; ]
 
dk0[expr_] := D[expr, k0] + (Expand[expr] /. (a_.)*(r:G[__] | R1[__]) :> 
       a*dk0Term[r])
 
dk0Term[expr_] := expr /. {G[c1_, c2_, c3_] :> G[c1, c2 + {1, 0}, c3] + 
        G[c1, c2 + {0, 1}, c3], R1[c1_, c2_, c3_] :> listcal[R1[c1, c2, c3], 
        2, 1, 1]}
 
dks[expr_] := D[expr, ks] + (Expand[expr] /. (a_.)*(r:G[__] | R1[__]) :> 
       a*dksTerm[r])
 
dksTerm[expr_] := expr /. {g:G[c1_, c2_, c3_] :> 
       Module[{b2, term1, term2, term3}, b2 = b20 + g[[3,2]]; 
         term1 = (-b2/(2*ks))*(ks^2*listcal[g, 3, 2, 2] + g - 
            listcal[listcal[g, 3, 1, -2], 3, 2, 2]); 
         term2 = (1/(2*ks))*(ks^2*listcal[listcal[listcal[g, 1, 3, 1], 2, 1, 
               1], 3, 2, 1] + listcal[listcal[listcal[g, 1, 3, 1], 2, 1, 1], 
             3, 2, -1] - listcal[listcal[listcal[listcal[g, 1, 3, 1], 2, 1, 
               1], 3, 1, -2], 3, 2, 1]); term3 = (1/(2*ks))*
           (ks^2*listcal[listcal[listcal[g, 1, 4, 1], 2, 2, 1], 3, 2, 1] + 
            listcal[listcal[listcal[g, 1, 4, 1], 2, 2, 1], 3, 2, -1] - 
            listcal[listcal[listcal[listcal[g, 1, 4, 1], 2, 2, 1], 3, 1, -2], 
             3, 2, 1]); term1 + term2 + term3], r:R1[c1_, c2_, c3_] :> 
       Module[{b2, term1, term2, term3}, b2 = b20 + r[[3,2]]; 
         term1 = (-b2/(2*ks))*(ks^2*listcal[r, 3, 2, 2] + r - 
            listcal[listcal[r, 3, 1, -2], 3, 2, 2]); 
         term2 = (1/(2*ks))*(ks^2*listcal[listcal[listcal[r, 1, 1, 1], 2, 1, 
               1], 3, 2, 1] + listcal[listcal[listcal[r, 1, 1, 1], 2, 1, 1], 
             3, 2, -1] - listcal[listcal[listcal[listcal[r, 1, 1, 1], 2, 1, 
               1], 3, 1, -2], 3, 2, 1]); term3 = (1/(2*ks))*
           (ks^2*listcal[listcal[listcal[r, 1, 2, 1], 2, 1, 1], 3, 2, 1] + 
            listcal[listcal[listcal[r, 1, 2, 1], 2, 1, 1], 3, 2, -1] - 
            listcal[listcal[listcal[listcal[r, 1, 2, 1], 2, 1, 1], 3, 1, -2], 
             3, 2, 1]); term1 + term2 + term3]}
listcal[expr_, i_, j_, n_] := ReplacePart[expr, {i, j} -> expr[[i,j]] + n]
 
repvar = {P1 -> (-I)*k0, P2 -> (-I)*k0, P0R1 -> (-2*I)*k0, a10 -> a0, 
     a20 -> a0, b10 -> b0, b20 -> b0}
 
reppara2N = {a0 -> da + 2*nu, a0R -> 2*da + 2*nu, b0 -> -2*nu, b20R -> 0, 
     d -> 3 - 2*ep, ks -> 1}
 
repNumericTestKira = {nu -> 17/7, ep -> 1/13, k0 -> 5/23, da -> 0}
 
id[expr_] := expr /. {G[{2, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{0, n2, n3, n4}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{1, n2, n3, n4}, {a1 - 1, a2}, {b1 + 1, b2}], 
      G[{n1_, 2, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{n1, 0, n3, n4}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{n1, 1, n3, n4}, {a1, a2 - 1}, {b1 + 1, b2}], 
      G[{n1_, n2_, 2, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{n1, n2, 0, n4}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{n1, n2, 1, n4}, {a1 - 1, a2}, {b1, b2 + 1}], 
      G[{n1_, n2_, n3_, 2}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{n1, n2, n3, 0}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{n1, n2, n3, 1}, {a1, a2 - 1}, {b1, b2 + 1}], 
      R1[{2, n4_}, {a_}, {b1_, b2_}] :> -R1[{0, n4}, {a}, {b1, b2}] - 
        (2*nu + 1)*R1[{1, n4}, {a - 1}, {b1, b2 + 1}], 
      R1[{n3_, 2}, {a_}, {b1_, b2_}] :> -R1[{n3, 0}, {a}, {b1, b2}] - 
        (2*nu + 1)*R1[{n3, 1}, {a - 1}, {b1, b2 + 1}]}
 
symmetry[expr_] := Module[{test}, 
     test = expr /. {R2[{n1_, n2_}, {a_}, {b1_, b2_}] :> R1[{n1, n2}, {a}, 
           {b2, b1}]}; test = 
       test /. G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
              If[a1 > a2, G[{n2, n1, n4, n3}, {a2, a1}, {b1, b2}], G[
                {n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
            G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
             If[b1 > b2, G[{n3, n4, n1, n2}, {a1, a2}, {b2, b1}], 
              G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
           G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
            If[a1 == a2 && n1 > n2, G[{n2, n1, n4, n3}, {a2, a1}, {b1, b2}], 
             G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
          G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
           If[a1 == a2 && n1 == n2 && n3 > n4, G[{n2, n1, n4, n3}, {a2, a1}, 
             {b1, b2}], G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
         G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
          If[b1 == b2 && n1 > n3, G[{n3, n4, n1, n2}, {a1, a2}, {b2, b1}], 
           G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
        G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
         If[b1 == b2 && n1 == n3 && n2 > n4, G[{n3, n4, n1, n2}, {a1, a2}, 
           {b2, b1}], G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]]; 
      test = test /. R1[{n3_, n4_}, {a_}, {b1_, b2_}] :> 
         If[n3 > n4, R1[{n4, n3}, {a}, {b1, b2}], R1[{n3, n4}, {a}, 
           {b1, b2}]]; Return[test]; ]
 
dk0[expr_] := D[expr, k0] + (Expand[expr] /. (a_.)*(r:G[__] | R1[__]) :> 
       a*dk0Term[r])
 
dk0Term[expr_] := expr /. {G[c1_, c2_, c3_] :> G[c1, c2 + {1, 0}, c3] + 
        G[c1, c2 + {0, 1}, c3], R1[c1_, c2_, c3_] :> listcal[R1[c1, c2, c3], 
        2, 1, 1]}
 
dks[expr_] := D[expr, ks] + (Expand[expr] /. (a_.)*(r:G[__] | R1[__]) :> 
       a*dksTerm[r])
 
dksTerm[expr_] := expr /. {g:G[c1_, c2_, c3_] :> 
       Module[{b2, term1, term2, term3}, b2 = b20 + g[[3,2]]; 
         term1 = (-b2/(2*ks))*(ks^2*listcal[g, 3, 2, 2] + g - 
            listcal[listcal[g, 3, 1, -2], 3, 2, 2]); 
         term2 = (1/(2*ks))*(ks^2*listcal[listcal[listcal[g, 1, 3, 1], 2, 1, 
               1], 3, 2, 1] + listcal[listcal[listcal[g, 1, 3, 1], 2, 1, 1], 
             3, 2, -1] - listcal[listcal[listcal[listcal[g, 1, 3, 1], 2, 1, 
               1], 3, 1, -2], 3, 2, 1]); term3 = (1/(2*ks))*
           (ks^2*listcal[listcal[listcal[g, 1, 4, 1], 2, 2, 1], 3, 2, 1] + 
            listcal[listcal[listcal[g, 1, 4, 1], 2, 2, 1], 3, 2, -1] - 
            listcal[listcal[listcal[listcal[g, 1, 4, 1], 2, 2, 1], 3, 1, -2], 
             3, 2, 1]); term1 + term2 + term3], r:R1[c1_, c2_, c3_] :> 
       Module[{b2, term1, term2, term3}, b2 = b20 + r[[3,2]]; 
         term1 = (-b2/(2*ks))*(ks^2*listcal[r, 3, 2, 2] + r - 
            listcal[listcal[r, 3, 1, -2], 3, 2, 2]); 
         term2 = (1/(2*ks))*(ks^2*listcal[listcal[listcal[r, 1, 1, 1], 2, 1, 
               1], 3, 2, 1] + listcal[listcal[listcal[r, 1, 1, 1], 2, 1, 1], 
             3, 2, -1] - listcal[listcal[listcal[listcal[r, 1, 1, 1], 2, 1, 
               1], 3, 1, -2], 3, 2, 1]); term3 = (1/(2*ks))*
           (ks^2*listcal[listcal[listcal[r, 1, 2, 1], 2, 1, 1], 3, 2, 1] + 
            listcal[listcal[listcal[r, 1, 2, 1], 2, 1, 1], 3, 2, -1] - 
            listcal[listcal[listcal[listcal[r, 1, 2, 1], 2, 1, 1], 3, 1, -2], 
             3, 2, 1]); term1 + term2 + term3]}
listcal[expr_, i_, j_, n_] := ReplacePart[expr, {i, j} -> expr[[i,j]] + n]
 
repvar = {P1 -> (-I)*k0, P2 -> (-I)*k0, P0R1 -> (-2*I)*k0, a10 -> a0, 
     a20 -> a0, b10 -> b0, b20 -> b0, a0R -> 2*a0 - 2*nu, b10R -> b0 + 2*nu, 
     b20R -> b0}
 
reppara2N = {a0 -> da + 2*nu, b0 -> -2*nu, d -> 3 - 2*ep, ks -> 1}
 
repNumericTestKira = {nu -> 17/7, ep -> 1/13, k0 -> 5/23, da -> 0}
 
id[expr_] := expr /. {G[{2, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{0, n2, n3, n4}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{1, n2, n3, n4}, {a1 - 1, a2}, {b1 + 1, b2}], 
      G[{n1_, 2, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{n1, 0, n3, n4}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{n1, 1, n3, n4}, {a1, a2 - 1}, {b1 + 1, b2}], 
      G[{n1_, n2_, 2, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{n1, n2, 0, n4}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{n1, n2, 1, n4}, {a1 - 1, a2}, {b1, b2 + 1}], 
      G[{n1_, n2_, n3_, 2}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{n1, n2, n3, 0}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{n1, n2, n3, 1}, {a1, a2 - 1}, {b1, b2 + 1}], 
      R1[{2, n4_}, {a_}, {b1_, b2_}] :> -R1[{0, n4}, {a}, {b1, b2}] - 
        (2*nu + 1)*R1[{1, n4}, {a - 1}, {b1, b2 + 1}], 
      R1[{n3_, 2}, {a_}, {b1_, b2_}] :> -R1[{n3, 0}, {a}, {b1, b2}] - 
        (2*nu + 1)*R1[{n3, 1}, {a - 1}, {b1, b2 + 1}]}
 
symmetry[expr_] := Module[{test}, 
     test = expr /. {R2[{n1_, n2_}, {a_}, {b1_, b2_}] :> R1[{n1, n2}, {a}, 
           {b2, b1}]}; test = 
       test /. G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
              If[a1 > a2, G[{n2, n1, n4, n3}, {a2, a1}, {b1, b2}], G[
                {n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
            G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
             If[b1 > b2, G[{n3, n4, n1, n2}, {a1, a2}, {b2, b1}], 
              G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
           G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
            If[a1 == a2 && n1 > n2, G[{n2, n1, n4, n3}, {a2, a1}, {b1, b2}], 
             G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
          G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
           If[a1 == a2 && n1 == n2 && n3 > n4, G[{n2, n1, n4, n3}, {a2, a1}, 
             {b1, b2}], G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
         G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
          If[b1 == b2 && n1 > n3, G[{n3, n4, n1, n2}, {a1, a2}, {b2, b1}], 
           G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
        G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
         If[b1 == b2 && n1 == n3 && n2 > n4, G[{n3, n4, n1, n2}, {a1, a2}, 
           {b2, b1}], G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]]; 
      test = test /. R1[{n3_, n4_}, {a_}, {b1_, b2_}] :> 
         If[n3 > n4, R1[{n4, n3}, {a}, {b1, b2}], R1[{n3, n4}, {a}, 
           {b1, b2}]]; Return[test]; ]
 
dk0[expr_] := D[expr, k0] + (Expand[expr] /. (a_.)*(r:G[__] | R1[__]) :> 
       a*dk0Term[r])
 
dk0Term[expr_] := expr /. {G[c1_, c2_, c3_] :> G[c1, c2 + {1, 0}, c3] + 
        G[c1, c2 + {0, 1}, c3], R1[c1_, c2_, c3_] :> listcal[R1[c1, c2, c3], 
        2, 1, 1]}
 
dks[expr_] := D[expr, ks] + (Expand[expr] /. (a_.)*(r:G[__] | R1[__]) :> 
       a*dksTerm[r])
 
dksTerm[expr_] := expr /. {g:G[c1_, c2_, c3_] :> 
       Module[{b2, term1, term2, term3}, b2 = b20 + g[[3,2]]; 
         term1 = (-b2/(2*ks))*(ks^2*listcal[g, 3, 2, 2] + g - 
            listcal[listcal[g, 3, 1, -2], 3, 2, 2]); 
         term2 = (1/(2*ks))*(ks^2*listcal[listcal[listcal[g, 1, 3, 1], 2, 1, 
               1], 3, 2, 1] + listcal[listcal[listcal[g, 1, 3, 1], 2, 1, 1], 
             3, 2, -1] - listcal[listcal[listcal[listcal[g, 1, 3, 1], 2, 1, 
               1], 3, 1, -2], 3, 2, 1]); term3 = (1/(2*ks))*
           (ks^2*listcal[listcal[listcal[g, 1, 4, 1], 2, 2, 1], 3, 2, 1] + 
            listcal[listcal[listcal[g, 1, 4, 1], 2, 2, 1], 3, 2, -1] - 
            listcal[listcal[listcal[listcal[g, 1, 4, 1], 2, 2, 1], 3, 1, -2], 
             3, 2, 1]); term1 + term2 + term3], r:R1[c1_, c2_, c3_] :> 
       Module[{b2, term1, term2, term3}, b2 = b20 + r[[3,2]]; 
         term1 = (-b2/(2*ks))*(ks^2*listcal[r, 3, 2, 2] + r - 
            listcal[listcal[r, 3, 1, -2], 3, 2, 2]); 
         term2 = (1/(2*ks))*(ks^2*listcal[listcal[listcal[r, 1, 1, 1], 2, 1, 
               1], 3, 2, 1] + listcal[listcal[listcal[r, 1, 1, 1], 2, 1, 1], 
             3, 2, -1] - listcal[listcal[listcal[listcal[r, 1, 1, 1], 2, 1, 
               1], 3, 1, -2], 3, 2, 1]); term3 = (1/(2*ks))*
           (ks^2*listcal[listcal[listcal[r, 1, 2, 1], 2, 1, 1], 3, 2, 1] + 
            listcal[listcal[listcal[r, 1, 2, 1], 2, 1, 1], 3, 2, -1] - 
            listcal[listcal[listcal[listcal[r, 1, 2, 1], 2, 1, 1], 3, 1, -2], 
             3, 2, 1]); term1 + term2 + term3]}
listcal[expr_, i_, j_, n_] := ReplacePart[expr, {i, j} -> expr[[i,j]] + n]
 
repvar = {P1 -> (-I)*k0, P2 -> (-I)*k0, P0R1 -> (-2*I)*k0, a10 -> a0, 
     a20 -> a0, b10 -> b0, b20 -> b0, a0R -> 2*a0 - 2*nu, b10R -> b0 + 2*nu, 
     b20R -> b0}
 
reppara2N = {a0 -> da + 2*nu, b0 -> -2*nu, d -> 3 - 2*ep, ks -> 1}
 
repNumericTestKira = {nu -> 17/7, ep -> 1/13, k0 -> 5/23, da -> 0}
 
id[expr_] := expr /. {G[{2, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{0, n2, n3, n4}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{1, n2, n3, n4}, {a1 - 1, a2}, {b1 + 1, b2}], 
      G[{n1_, 2, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{n1, 0, n3, n4}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{n1, 1, n3, n4}, {a1, a2 - 1}, {b1 + 1, b2}], 
      G[{n1_, n2_, 2, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{n1, n2, 0, n4}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{n1, n2, 1, n4}, {a1 - 1, a2}, {b1, b2 + 1}], 
      G[{n1_, n2_, n3_, 2}, {a1_, a2_}, {b1_, b2_}] :> 
       -G[{n1, n2, n3, 0}, {a1, a2}, {b1, b2}] - (2*nu + 1)*
         G[{n1, n2, n3, 1}, {a1, a2 - 1}, {b1, b2 + 1}], 
      R1[{2, n4_}, {a_}, {b1_, b2_}] :> -R1[{0, n4}, {a}, {b1, b2}] - 
        (2*nu + 1)*R1[{1, n4}, {a - 1}, {b1, b2 + 1}], 
      R1[{n3_, 2}, {a_}, {b1_, b2_}] :> -R1[{n3, 0}, {a}, {b1, b2}] - 
        (2*nu + 1)*R1[{n3, 1}, {a - 1}, {b1, b2 + 1}]}
 
symmetry[expr_] := Module[{test}, 
     test = expr /. {R2[{n1_, n2_}, {a_}, {b1_, b2_}] :> R1[{n1, n2}, {a}, 
           {b2, b1}]}; test = 
       test /. G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
              If[a1 > a2, G[{n2, n1, n4, n3}, {a2, a1}, {b1, b2}], G[
                {n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
            G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
             If[b1 > b2, G[{n3, n4, n1, n2}, {a1, a2}, {b2, b1}], 
              G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
           G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
            If[a1 == a2 && n1 > n2, G[{n2, n1, n4, n3}, {a2, a1}, {b1, b2}], 
             G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
          G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
           If[a1 == a2 && n1 == n2 && n3 > n4, G[{n2, n1, n4, n3}, {a2, a1}, 
             {b1, b2}], G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
         G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
          If[b1 == b2 && n1 > n3, G[{n3, n4, n1, n2}, {a1, a2}, {b2, b1}], 
           G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]] /. 
        G[{n1_, n2_, n3_, n4_}, {a1_, a2_}, {b1_, b2_}] :> 
         If[b1 == b2 && n1 == n3 && n2 > n4, G[{n3, n4, n1, n2}, {a1, a2}, 
           {b2, b1}], G[{n1, n2, n3, n4}, {a1, a2}, {b1, b2}]]; 
      test = test /. R1[{n3_, n4_}, {a_}, {b1_, b2_}] :> 
         If[n3 > n4, R1[{n4, n3}, {a}, {b1, b2}], R1[{n3, n4}, {a}, 
           {b1, b2}]]; Return[test]; ]
 
dk0[expr_] := D[expr, k0] + (Expand[expr] /. (a_.)*(r:G[__] | R1[__]) :> 
       a*dk0Term[r])
 
dk0Term[expr_] := expr /. {G[c1_, c2_, c3_] :> G[c1, c2 + {1, 0}, c3] + 
        G[c1, c2 + {0, 1}, c3], R1[c1_, c2_, c3_] :> listcal[R1[c1, c2, c3], 
        2, 1, 1]}
 
dks[expr_] := D[expr, ks] + (Expand[expr] /. (a_.)*(r:G[__] | R1[__]) :> 
       a*dksTerm[r])
 
dksTerm[expr_] := expr /. {g:G[c1_, c2_, c3_] :> 
       Module[{b2, term1, term2, term3}, b2 = b20 + g[[3,2]]; 
         term1 = (-b2/(2*ks))*(ks^2*listcal[g, 3, 2, 2] + g - 
            listcal[listcal[g, 3, 1, -2], 3, 2, 2]); 
         term2 = (1/(2*ks))*(ks^2*listcal[listcal[listcal[g, 1, 3, 1], 2, 1, 
               1], 3, 2, 1] + listcal[listcal[listcal[g, 1, 3, 1], 2, 1, 1], 
             3, 2, -1] - listcal[listcal[listcal[listcal[g, 1, 3, 1], 2, 1, 
               1], 3, 1, -2], 3, 2, 1]); term3 = (1/(2*ks))*
           (ks^2*listcal[listcal[listcal[g, 1, 4, 1], 2, 2, 1], 3, 2, 1] + 
            listcal[listcal[listcal[g, 1, 4, 1], 2, 2, 1], 3, 2, -1] - 
            listcal[listcal[listcal[listcal[g, 1, 4, 1], 2, 2, 1], 3, 1, -2], 
             3, 2, 1]); term1 + term2 + term3], r:R1[c1_, c2_, c3_] :> 
       Module[{b2, term1, term2, term3}, b2 = b20 + r[[3,2]]; 
         term1 = (-b2/(2*ks))*(ks^2*listcal[r, 3, 2, 2] + r - 
            listcal[listcal[r, 3, 1, -2], 3, 2, 2]); 
         term2 = (1/(2*ks))*(ks^2*listcal[listcal[listcal[r, 1, 1, 1], 2, 1, 
               1], 3, 2, 1] + listcal[listcal[listcal[r, 1, 1, 1], 2, 1, 1], 
             3, 2, -1] - listcal[listcal[listcal[listcal[r, 1, 1, 1], 2, 1, 
               1], 3, 1, -2], 3, 2, 1]); term3 = (1/(2*ks))*
           (ks^2*listcal[listcal[listcal[r, 1, 2, 1], 2, 1, 1], 3, 2, 1] + 
            listcal[listcal[listcal[r, 1, 2, 1], 2, 1, 1], 3, 2, -1] - 
            listcal[listcal[listcal[listcal[r, 1, 2, 1], 2, 1, 1], 3, 1, -2], 
             3, 2, 1]); term1 + term2 + term3]}
