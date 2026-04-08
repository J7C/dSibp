sTest = {ep -> 1/13, nu -> 3/17};
cof = Get["Cofletter0.m"];

(* Find the nested radical base in the probe element *)
probe = cof[[7, 3, 6]];
bases = Cases[probe, Power[b_, -1/2] :> b, Infinity] // DeleteDuplicates;

Print["Found ", Length[bases], " bases in probe."];
Do[
  valBase = N[base /. sTest];
  valSqrt = N[Power[base, -1/2] /. sTest];
  Print["Base val: ", valBase];
  Print["Sqrt val: ", valSqrt];
  If[Re[valSqrt] > 0 && Abs[Im[valSqrt]] < 10^-8,
     Print["-> Sqrt is Positive Real (OK)"],
     Print["-> Sqrt is NOT Positive Real (CHECK NEEDED)"]
  ],
  {base, bases}
];
