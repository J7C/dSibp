(* ::Package:: *)

(* ::Chapter:: *)
(*Re-import Kira Results*)


(* ::Section:: *)
(*Paths*)


dir = If[StringQ[$InputFileName] && $InputFileName =!= "",
  DirectoryName[$InputFileName],
  If[TrueQ[$Notebooks],
    With[{nd = Quiet[Check[NotebookDirectory[], $Failed]]},
      If[StringQ[nd] && nd =!= $Failed, nd, Directory[]]
    ],
    Directory[]
  ]
];
SetDirectory[dir];

kiraworkspace = "kira_bubble";
resultDir  = FileNameJoin[{dir, kiraworkspace, "result"}];
reduceDir  = FileNameJoin[{dir, kiraworkspace, "results"}];


(* ::Section:: *)
(*Load Result Files*)


Get[FileNameJoin[{resultDir, "derivative_rules_bubble.m"}]];
(* Loads: listcal, repvar, reppara2N, repNumericTest, id, symmetry, dk0, dks,
          dk0Term, dksTerm, a0, b0 *)

MIdlogNote = Import[FileNameJoin[{resultDir, "MIdlogNote.m"}]];
repkira2R1 = Import[FileNameJoin[{resultDir, "repkira2R1.m"}]];
repR12num  = Import[FileNameJoin[{resultDir, "repR12num.m"}]];

repreduce  = Import[FileNameJoin[{reduceDir, "kira_list.m"}]];
(* repreduce: {Tuserweight[i] -> linear combination of master Tuserweight[j], ...} *)
(* Kira lowercases the dimension variable D -> d. Map back. *)
repreduce = repreduce /. d -> 3 - 2 ep;


(* ::Section:: *)
(*Choose Independent MIs & dlog Basis*)


(* Parse masters file: extract integer IDs of master integrals chosen by Kira *)
masterIds = ToExpression @ StringCases[
  Import[FileNameJoin[{reduceDir, "masters"}], "Text"],
  StartOfLine ~~ WhitespaceCharacter... ~~ id : NumberString ~~
    WhitespaceCharacter... ~~ "#" :> id
];
Print["Kira master integral IDs: ", masterIds];
Print["Number of masters: ", Length[masterIds]];

(* The dlog basis in Kira form (ks=1, repvar applied) — this is the DE basis *)
MIdlogKira = (MIdlogNote /. repvar /. reppara2N) // Simplify;
Print["dlog basis size: ", Length[MIdlogKira]];

(* Convert dlog basis to Tuserweight form for coefficient extraction.
   Apply paramsBubble + repNumericTest to match the numeric Kira results. *)
MIdlogTuw = (MIdlogNote /. repR12num /. paramsBubble /. repNumericTest) // Simplify;
Print["MIdlogTuw (first 3): ", MIdlogTuw[[1 ;; Min[3, Length[MIdlogTuw]]]]];

(* All Kira masters (for reference/export only) *)
MIsAll = Tuserweight /@ masterIds;
Export[FileNameJoin[{resultDir, "MIs.m"}], MIsAll];

(* Check: after reduction, non-dlog masters should NOT appear in dlog DEs *)
repMIs0 = Table[MIsAll[[i]] -> 0, {i, Length[MIsAll]}];


(* ::Section:: *)
(*Numeric Test Consistency*)

(*
   If bubble_ibp_sym.m was run with repNumericTest applied (nu -> 3/7, ep -> 1/13),
   the kira_list.m will have numeric coefficients.
   To be consistent, apply the SAME substitution to the dlog basis before
   computing dk0 / dks.  Comment out the next line for a symbolic Kira run.
*)
(* DO NOT apply repNumericTest here — derivatives must be taken on fully symbolic MIdlogNote.
   Numeric substitution is applied AFTER differentiation in the DE computation. *)


(* ::Chapter:: *)
(*DE*)


(* ::Section:: *)
(*Raw DE: Derivative of dlog basis, then reduce with Kira*)


(* Parameter substitution — applied AFTER symbolic differentiation, same as codeR1 *)
paramsBubble = {a0 -> 2 nu, a10 -> a0, a20 -> a0, b0 -> -2 nu, b10 -> 0, b20 -> -2 nu, D -> 3 - 2 ep};

(* k0 direction:
   1. Symbolic derivative of MIdlogNote (fully analytic, no numeric substitution)
   2. id/symmetry
   3. repR12num (symbolic patterns -> Tuserweight)
   4. paramsBubble (a0->2nu etc.)
   5. repNumericTest (nu->3/7, ep->1/13, k0->5/3 — makes coefficients numeric)
   6. repreduce (numeric Kira rules, with d as dimension)
   7. d -> 3-2*ep value *)
DEk00raw = dk0[MIdlogNote] // id // symmetry;
DEk00 = DEk00raw /. repR12num /. paramsBubble /. repNumericTest /. repreduce /. d -> (3 - 2 ep /. repNumericTest) // Expand;

DEk00check = Join[
  DEk00 // Cases[#, Tuserweight[___], Infinity] & // DeleteDuplicates,
  DEk00 // Cases[#, G[___] | R1[___], Infinity] & // DeleteDuplicates
] // DeleteDuplicates;
Print["Unreduced integrals after dk0 reduction (should be empty): ", DEk00check /. repMIs0];

(* ks direction — same flow as dk0 *)
DEks0raw = dks[MIdlogNote] // id // symmetry;
DEks0 = DEks0raw /. repR12num /. paramsBubble /. repNumericTest /. repreduce /. d -> (3 - 2 ep /. repNumericTest) // Expand;

DEks0check = Join[
  DEks0 // Cases[#, Tuserweight[___], Infinity] & // DeleteDuplicates,
  DEks0 // Cases[#, G[___] | R1[___], Infinity] & // DeleteDuplicates
] // DeleteDuplicates;
Print["Unreduced integrals after dks reduction (should be empty): ", DEks0check /. repMIs0];


(* ::Section:: *)
(*Extract DE Coefficient Matrices*)


(* === Verify all derivative integrals are reducible ===
   Check that DEk00/DEks0 contain ONLY master Tuserweight[n] (no unreduced G/R1 or unknown Tuserweight).
   If any unreduced integrals remain, the list range for Kira must be expanded. *)
DEk00allTuw = Cases[DEk00, Tuserweight[_], Infinity] // DeleteDuplicates // Sort;
DEks0allTuw = Cases[DEks0, Tuserweight[_], Infinity] // DeleteDuplicates // Sort;
DEk00unreducedGR1 = Cases[DEk00, G[__] | R1[__], Infinity] // DeleteDuplicates;
DEks0unreducedGR1 = Cases[DEks0, G[__] | R1[__], Infinity] // DeleteDuplicates;
Print["dk0: Tuserweight symbols: ", Length[DEk00allTuw], "  Unreduced G/R1: ", Length[DEk00unreducedGR1]];
Print["dks: Tuserweight symbols: ", Length[DEks0allTuw], "  Unreduced G/R1: ", Length[DEks0unreducedGR1]];
If[Length[DEk00unreducedGR1] > 0, Print["WARNING: dk0 has unreduced G/R1: ", DEk00unreducedGR1]];
If[Length[DEks0unreducedGR1] > 0, Print["WARNING: dks has unreduced G/R1: ", DEks0unreducedGR1]];

(* === Extract DE matrices via linear algebra ===
   MIdlogTuw may contain linear combinations of Tuserweight, so Coefficient won't work directly.
   Instead: express both MIdlogTuw and DEk00/DEks0 in the common Tuserweight basis, then solve. *)
allBasisTuw = Union[DEk00allTuw, DEks0allTuw, Cases[MIdlogTuw, Tuserweight[_], Infinity] // DeleteDuplicates] // Sort;
Print["Common Tuserweight basis size: ", Length[allBasisTuw]];

(* MIdlogTuw = Tmat . allBasisTuw  (21 x N matrix) *)
Tmat = Table[Coefficient[MIdlogTuw[[i]], allBasisTuw[[j]]], {i, Length[MIdlogTuw]}, {j, Length[allBasisTuw]}];
(* DEk00 = DEk0coeff . allBasisTuw  (21 x N matrix) *)
DEk0coeff = Table[Coefficient[DEk00[[j]], allBasisTuw[[i]]], {j, Length[MIdlogTuw]}, {i, Length[allBasisTuw]}];
DEkscoeff = Table[Coefficient[DEks0[[j]], allBasisTuw[[i]]], {j, Length[MIdlogTuw]}, {i, Length[allBasisTuw]}];

(* Solve: DEk0coeff = DEk0 . Tmat  =>  DEk0 = DEk0coeff . PseudoInverse[Tmat] *)
TmatT = Transpose[Tmat];
DEk0 = Simplify[DEk0coeff . PseudoInverse[Tmat]];
DEks = Simplify[DEkscoeff . PseudoInverse[Tmat]];

(* Verify closure: residual should be zero *)
DEk0residual = (DEk0coeff - DEk0 . Tmat) // Simplify;
DEksresidual = (DEkscoeff - DEks . Tmat) // Simplify;
Print["DEk0 closure (should be True): ", DEk0residual === ConstantArray[0, Dimensions[DEk0coeff]]];
Print["DEks closure (should be True): ", DEksresidual === ConstantArray[0, Dimensions[DEkscoeff]]];
Print["DEk0 dimensions: ", Dimensions[DEk0]];
Print["DEks dimensions: ", Dimensions[DEks]];


(* ::Section:: *)
(*Restore Physical Variables (P0, ks)*)

(*
   Restoration logic (follows codeR1/R1_de.m):

   1. DEk0 is d(f)/d(k0) at ks=1 (since reppara2N set ks->1 during IBP generation).

   2. Physical momentum: from repvar, P1 = -I*k0, so k0 = I*P1 = I*P0.
      Chain rule: d/dP0 = d/dk0 * dk0/dP0 = d/dk0 * I
      => DEP0_raw = I * DEk0

   3. Restore ks dependence via homogeneity (the integrals scale under k0->k0/ks):
      DEP0O(P0,ks) = (I/ks) * DEk0(k0=I*P0/ks)
      DEksO(P0,ks) = (1/ks) * DEks(k0=I*P0/ks)
      Implemented as: (X /. ks->1) / ks /. k0 -> I*P0/ks

   4. Scaling (Euler identity) check:
      ks * DEksO + P0 * DEP0O  =  diag(scaling dimensions)
      This equals a CONSTANT matrix (independent of P0, ks) if the dlog basis
      is correctly normalised.
*)

DEP0O = ((I * DEk0 /. ks -> 1) / ks /. k0 -> I * P0 / ks) // Simplify;
DEksO = ((    DEks /. ks -> 1) / ks /. k0 -> I * P0 / ks) // Simplify;


(* ::Section:: *)
(*Scaling Check*)


DEscaleCheck = (ks * DEksO + P0 * DEP0O) // Simplify;
Print["Scaling check (should be a constant matrix, no P0/ks):"];
DEscaleCheck // MatrixForm

(* Verify: no P0 or ks dependence *)
scaleP0dep  = D[DEscaleCheck, P0] // Simplify;
scaleKsdep  = D[DEscaleCheck, ks] // Simplify;
Print["d(scaleCheck)/dP0 (should be zero): ", scaleP0dep === ConstantArray[0, Dimensions[DEscaleCheck]]];
Print["d(scaleCheck)/dks (should be zero): ", scaleKsdep === ConstantArray[0, Dimensions[DEscaleCheck]]];


(* ::Section:: *)
(*Export*)


Export[FileNameJoin[{resultDir, "DEP0.m"}], DEP0O];
Export[FileNameJoin[{resultDir, "DEks.m"}], DEksO];
Export[FileNameJoin[{resultDir, "DEscaleCheck.m"}], DEscaleCheck];

Print["MIs = ", MIs];
Print["DEP0 dimensions: ", Dimensions[DEP0O]];
Print["DEks dimensions: ", Dimensions[DEksO]];
Print["DEscaleCheck = "];
DEscaleCheck // MatrixForm
