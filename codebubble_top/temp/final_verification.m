sTest = {ep -> 1/13, nu -> 3/17};
pathOriginal = "Cofletter0.m";
pathSimplified = "Cofletter1.m";

cofOrig = Get[pathOriginal];
cofSimp = Get[pathSimplified];

(* Extract the probe element *)
probeOrig = cofOrig[[7, 3, 6]];
probeSimp = cofSimp[[7, 3, 6]];

(* Extract the nested radical part from Original *)
(* We know it is Power[base, -1/2] *)
radOrig = Cases[probeOrig, Power[b_, -1/2] :> Power[b, -1/2], Infinity][[1]];
valRadOrig = N[radOrig /. sTest];

(* The Simplified version should NOT have Power[..., -1/2] with nested Sqrt *)
(* But it should numerically equal the original *)
(* Let's compare the whole probe element first *)
valProbeOrig = N[probeOrig /. sTest];
valProbeSimp = N[probeSimp /. sTest];

Print["=================================================="];
Print["VERIFICATION REPORT"];
Print["Test Point: ", sTest];
Print["--------------------------------------------------"];
Print["Original Probe Value:   ", valProbeOrig];
Print["Simplified Probe Value: ", valProbeSimp];
Print["Difference:             ", Abs[valProbeOrig - valProbeSimp]];
Print["--------------------------------------------------"];

(* Verify the radical part specifically *)
(* In simplified version, the radical is expanded. 
   We can check if the simplified expression contains Sqrt[C0] etc. *)
   
If[Abs[valProbeOrig - valProbeSimp] < 10^-8,
   Print["STATUS: SUCCESS - Numerical values match."],
   Print["STATUS: FAILURE - Numerical mismatch!"]
];

(* Check if nested radical is gone *)
hasNested = !FreeQ[probeSimp, Power[x_, -1/2] /; !FreeQ[x, Sqrt]];
If[!hasNested,
   Print["Structure Check: Nested radicals removed."],
   Print["Structure Check: WARNING - Nested radicals still present!"]
];
Print["=================================================="];
