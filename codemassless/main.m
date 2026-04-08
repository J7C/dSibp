(* ::Package:: *)

Quit[];


SetDirectory[NotebookDirectory[]];


(* ::Chapter:: *)
(*Notation  and  Definitions*)


(* 
Variables:
  x1 = q = |q|           (momentum magnitude of loop momentum)
  x2 = |q + k_s|         (momentum magnitude of shifted loop momentum)
  E1 = x1 + x2 - P1      (energy combination for \[Tau]1 integration)
  E2 = x1 + x2 + P2      (energy combination for \[Tau]2 integration)
  ks = |k_s|             (external momentum magnitude)
  P1, P2                 (external energy parameters)
  d = 3-2ep                 (spacetime dimension)
*)
(*
G[{a1, a2}, {b1, b2, b3, b4}] \[Congruent] 
  \[Integral]_{-\[Infinity]}^0 d\[Tau]\:2081 d\[Tau]\:2082 \[Integral] d\.b3q/(2\[Pi])\.b3 
    (-\[Tau]\:2081)^{a\:2081} (-\[Tau]\:2082)^{a\:2082} / (|q|^{b\:2081} |q+k_s|^{b\:2082}) 
    \[Times] e^{i(q+|q+k_s|-P\:2081)\[Tau]\:2081} / (q+|q+k_s|-P\:2081)^{b\:2083}
    \[Times] e^{-i(q+|q+k_s|+P\:2082)\[Tau]\:2082} / (q+|q+k_s|+P\:2082)^{b\:2084}*)


(* ::Chapter:: *)
(*Reduce  relations*)


(* listcal: function to shift indices in G (from reference code) *)
listcal[expr_, i_, j_, n_] := 
  ReplacePart[expr, {i, j} -> (expr[[i, j]] + n)];
(* \:5438\:6536xi tau_i\:8fdbG *) 
xt2G[expr_] := Module[{result = expr},
  (* First, handle \[Tau] factors (time variables) - these affect a indices *)
  result = result //. {
    \[Tau]1^m_. * G[args__] :> listcal[G[args], 1, 1, m],
    1/\[Tau]1^m_. * G[args__] :> listcal[G[args], 1, 1, -m],
    \[Tau]2^m_. * G[args__] :> listcal[G[args], 1, 2, m],
    1/\[Tau]2^m_. * G[args__] :> listcal[G[args], 1, 2, -m],
     x1^m_. * G[args__] :> listcal[G[args], 2, 1, -m],
    1/x1^m_. * G[args__] :> listcal[G[args], 2, 1, m],
    x2^m_. * G[args__] :> listcal[G[args], 2, 2, -m],
    1/x2^m_. * G[args__] :> listcal[G[args], 2, 2, m],
    E1^m_. * G[args__] :> listcal[G[args], 2, 3, -m],
    1/E1^m_. * G[args__] :> listcal[G[args], 2, 3, m],
    E2^m_. * G[args__] :> listcal[G[args], 2, 4, -m],
    1/E2^m_. * G[args__] :> listcal[G[args], 2, 4, m]
  };
  result = result //. {
    
  };
Return[result];
];

IBPt1=I * G[{a1, a2}, {b1, b2, b3-1, b4}] - a1 * G[{a1-1, a2}, {b1, b2, b3, b4}];
IBPt2=-I * G[{a1, a2}, {b1, b2, b3, b4-1}] - a2 * G[{a1, a2-1}, {b1, b2, b3, b4}];




(* Test the absorbXiToG function *)
coeff1 = b1/x1 + b3/E1 + b4/E2 - I*a1 + I*a2;
coeff2 = b2/x2 + b3/E1 + b4/E2 - I*a1 + I*a2;
  
  (* Actions of O\:2081 on x1 and x2 *)
O1x1 = x1;  (* O\:2081 x\:2081 = x\:2081 *)
O1x2 = (1/2) * (1/x2) * (x1^2 + x2^2 - ks^2);  (* O\:2081 x\:2082 = (1/2) x\:2082^{-1} (x\:2081\.b2 + x\:2082\.b2 - k_s\.b2) *)
O2x1 = (1/2) * (1/x1) * (x1^2 + x2^2 - ks^2);  (* O\:2082 x\:2081 = (1/2) x\:2081^{-1} (x\:2081\.b2 + x\:2082\.b2 - k_s\.b2) *)
O2x2 = x2;  (* O\:2082 x\:2082 = x\:2082 *)

IBPp1=d * G[{a1, a2}, {b1, b2, b3, b4}] - 
           coeff1 * O1x1 * G[{a1, a2}, {b1, b2, b3, b4}] - 
           coeff2 * O1x2 * G[{a1, a2}, {b1, b2, b3, b4}]//Expand//xt2G//Simplify;
IBPp2=d * G[{a1, a2}, {b1, b2, b3, b4}] - 
           coeff1 * O2x1 * G[{a1, a2}, {b1, b2, b3, b4}] - 
           coeff2 * O2x2 * G[{a1, a2}, {b1, b2, b3, b4}]//Expand//xt2G//Simplify;



(* ::Chapter:: *)
(*Linear  Relations  Strategy*)


(* 
Linear relations among denominators (from notes Section 1.8):
1. E\:2082 - E\:2081 = P\:2081 + P\:2082  (constant)
2. E\:2081 - x\:2081 - x\:2082 = -P\:2081 (constant)
3. E\:2082 - x\:2081 - x\:2082 = P\:2082  (constant)

Strategy for reduction (from notes Section 1.9):
Phase 1: Convert numerator factors using linear relations
Phase 2: Reduce denominator powers iteratively
*)

(* Linear reduction rules - "\:7ea6\:5316\:7ebf\:6027\:4e0d\:72ec\:7acb\:5206\:5b50\:5206\:6bcd\:90e8\:5206\:7684\:7b56\:7565\:5199\:6210\:4e00\:4e2a\:66ff\:6362\:89c4\:5219" *)

(* Priority 1: Use E\:2082 - E\:2081 relation *)
repLR1=G[{a1_, a2_}, {b1_, b2_, b3_, b4_}] :> 1/( P1 + P2)(
    G[{a1, a2}, {b1, b2, b3, b4-1}] - G[{a1, a2}, {b1, b2, b3-1, b4}]),  
(* Priority 2: Use E\:2081 - x\:2081 - x\:2082 relation *)
repLR2=G[{a1_, a2_}, {b1_, b2_, b3_, b4_}] :> 
    (G[{a1, a2}, {b1-1, b2, b3, b4}] + G[{a1, a2}, {b1, b2-1, b3, b4}] - 
    G[{a1, a2}, {b1, b2, b3-1, b4}])/P1,
(* Priority 3: Use E\:2082 - x\:2081 - x\:2082 relation *)
repLR3=G[{a1_, a2_}, {b1_, b2_, b3_, b4_}] :> 
    (G[{a1, a2}, {b1-1, b2, b3, b4}] + G[{a1, a2}, {b1, b2-1, b3, b4}] - 
    G[{a1, a2}, {b1, b2, b3, b4-1}])/ P2 

(* Function to apply linear reduction with priority *)


symmetryRules = {
  (* Exchange x\:2081 \[LeftRightArrow] x\:2082 symmetry *)
  G[{a1_, a2_}, {b1_, b2_, b3_, b4_}] /;b1>b2 :> G[{a1, a2}, {b2, b1, b3, b4}]
};

symmetry[expr_] := expr //. symmetryRules;



(* =========================================== *)
(* Section 10: Notes for Next Steps *)
(* =========================================== *)

(* 
Next steps (as mentioned in the request):
1. This file contains the key IBP relations and helper functions
2. The next step would be to generate specific IBP relations by 
   substituting indices (like in 0000 ibp_1L2p_sym.m)
3. Then solve the IBP system to reduce integrals to master integrals
*)
