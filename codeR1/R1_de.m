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

kiraworkspace = "kira_R1";
resultDir = FileNameJoin[{dir, kiraworkspace, "result"}];
reduceDir = FileNameJoin[{dir, kiraworkspace, "results"}];


(* ::Section:: *)
(*Load Result Files*)


Get[FileNameJoin[{resultDir, "derivative_rules_R1.m"}]];
Get[FileNameJoin[{resultDir, "params_R1.m"}]];
Get[FileNameJoin[{resultDir, "dlog_basis_R1.m"}]];
repreduce = Import[FileNameJoin[{reduceDir, "kira_list.m"}]];
repkira2G = Import[FileNameJoin[{resultDir, "repkira2R1.m"}]];
repG2num = Import[FileNameJoin[{resultDir, "repR12num.m"}]];
repvar = {P0 -> -I k0};


(* ::Section:: *)
(*Choose Independent MIs*)


masterIds = ToExpression @ StringCases[
    Import[FileNameJoin[{reduceDir, "masters"}], "Text"],
    StartOfLine ~~ WhitespaceCharacter ... ~~ id : NumberString ~~ WhitespaceCharacter ... ~~ "#" :> id
];
MIs = (Tuserweight /@ Take[masterIds, 5])
MIdlog = MIdlog[[;; Length[MIs]]]/.repvar;
%//MatrixForm
repMIs20 = Table[MIs[[i]] -> 0, {i, Length[MIs]}];

Export[FileNameJoin[{resultDir, "MIs.m"}], MIs];


MIdlog//MatrixForm
repvar


(* ::Chapter:: *)
(*DE*)


(* ::Section:: *)
(*DE With Respect To P0*)


DEk00 = ((((dk0[MIdlog] // id // symmetry) /. repG2num) /. repreduce) /. paramsR1) // Expand
DEk00check = Join[
    DEk00 // Cases[#, Tuserweight[___], Infinity] & // DeleteDuplicates,
    DEk00 // Cases[#, G[___], Infinity] & // DeleteDuplicates
] // DeleteDuplicates
DEk00check = DEk00check /. repMIs20

DEk0 = Table[
    Coefficient[DEk00, MIs[[i]]],
    {i, Length[MIs]}
] // Transpose // Simplify;

DEP0O = ((I*DEk0/.ks->1)/ks /. k0 -> I*P0/ks) // Simplify


(* ::Section:: *)
(*DE With Respect To ks*)


DEks0 = ((((dks[MIdlog] // id // symmetry) /. repG2num) /. repreduce) /. paramsR1) // Expand;
DEks0check = Join[
    DEks0 // Cases[#, Tuserweight[___], Infinity] & // DeleteDuplicates,
    DEks0 // Cases[#, G[___], Infinity] & // DeleteDuplicates
] // DeleteDuplicates
DEks0check = DEks0check /. repMIs20

DEks = Table[
    Coefficient[DEks0, MIs[[i]]],
    {i, Length[MIs]}
] // Transpose // Simplify;

DEksO = ((DEks/.ks->1)/ks /. k0 -> I*P0/ks) // Simplify;


(* ::Section:: *)
(*Scaling Check*)


DEscaleCheck = ((ks*DEksO + P0*DEP0O) /. paramsR1) //Simplify
%//MatrixForm


DEP0O//Integrate[#,P0]&//Simplify;
%//MatrixForm
DEksO//Integrate[#,ks]&//Simplify;
%//MatrixForm


(* ::Section:: *)
(*Export*)


Export[FileNameJoin[{resultDir, "DEP0.m"}], DEP0O];
Export[FileNameJoin[{resultDir, "DEks.m"}], DEksO];


(* ::Section:: *)
(*Print*)


Print["MIs = ", MIs];
Print["DEk00check = ", DEk00check];
Print["DEks0check = ", DEks0check];
Print["DEscaleCheck = ", DEscaleCheck];



