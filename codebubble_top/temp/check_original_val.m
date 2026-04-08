sTest = {ep -> 1/13, nu -> 3/17};
(* Read ORIGINAL file from temp directory *)
cofOriginal = Get["Cofletter0.m"]; 
probeOrig = cofOriginal[[7, 3, 6]];
valOrig = N[probeOrig /. sTest];

Print["Original Value at test point: ", valOrig];
If[Re[valOrig] > 0 && Abs[Im[valOrig]] < 10^-8,
   Print["Original is Positive Real."],
   Print["Original is NOT Positive Real."]
];
