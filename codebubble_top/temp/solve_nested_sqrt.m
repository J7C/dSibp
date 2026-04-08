(* Use relative paths to avoid encoding issues with Chinese characters *)
SetDirectory[Directory[]]; (* Use current working directory *)
inputPath = "Cofletter0.m";
(* User requested change: output to temp/Cofletter1.m *)
outputPath = "Cofletter1.m";

If[!FileExistsQ[inputPath], 
  Print["Error: Input file not found at " <> inputPath];
  Exit[];
];

coefletter = Get[inputPath];


(* 1. Verify Observations *)
basesPos = Cases[coefletter, Power[b_, 1/2] :> b, Infinity] // DeleteDuplicates;
basesNeg = Cases[coefletter, Power[b_, -1/2] :> b, Infinity] // DeleteDuplicates;

hasNested[expr_] := !FreeQ[expr, Power[_, 1/2] | Sqrt[_]];

nestedPos = Select[basesPos, hasNested];
nestedNeg = Select[basesNeg, hasNested];

Print["=================================================="];
Print["Observation Verification:"];
Print["Nested bases in Power[_, 1/2]: ", nestedPos];
Print["Nested bases in Power[_, -1/2]: ", nestedNeg];
Print["=================================================="];

If[Length[nestedPos] > 0, 
  Print["Warning: Found nested radicals in numerator (Power 1/2)!"];
];

If[Length[nestedNeg] == 0,
  Print["No nested radicals found in denominator to process."];
  Exit[];
];

(* 2. Define Constants and Test Points *)
sTest = {ep -> 1/13, nu -> 3/17};

(* 3. De-nesting Logic *)
(* Target: Sqrt[A + B * Sqrt[C0]] *)
(* We need to pattern match the Sqrt[C0] part *)

denestSqrt[expr_] := Module[{terms, sqrtTerm, A, B, C0expr, disc, sqrtDisc, sqrtDiscSimp, term1, term2, sgn, valB, valDisc, valSqrtDisc, valOrig, valNew, valNew2, res, candidates, bestCand, minErr},
  
  radicals = Cases[expr, Power[z_, 1/2] :> z, Infinity] // DeleteDuplicates;
  If[Length[radicals] == 0, Return[$Failed]];
  C0expr = radicals[[1]]; (* Pick the first one *)
  
  sqrtC0 = Sqrt[C0expr];
  
  (* Decompose expr = A + B * sqrtC0 *)
  A = expr /. sqrtC0 -> 0 // Simplify;
  B = (expr - A) / sqrtC0 // Simplify;
  
  If[Simplify[expr - (A + B*sqrtC0)] =!= 0,
     Print["Failed to decompose: ", expr];
     Return[$Failed]
  ];
  
  (* Calculate Discriminant: Delta = A^2 - B^2 * C0 *)
  disc = Factor[A^2 - B^2 * C0expr];
  
  (* Check if disc is perfect square *)
  sqrtDisc = Power[disc, 1/2];
  sqrtDiscSimp = Simplify[sqrtDisc, Assumptions -> {ep>0, nu>0}]; 
  
  (* Ensure sqrtDiscSimp is positive at test point *)
  valSqrtDisc = N[sqrtDiscSimp /. sTest];
  If[Re[valSqrtDisc] < 0, sqrtDiscSimp = -sqrtDiscSimp];

  (* Construct basic terms *)
  (* term1 = Sqrt[(A + sqrtDiscSimp)/2] *)
  (* term2 = Sqrt[(A - sqrtDiscSimp)/2] *)
  
  term1 = Sqrt[Factor[(A + sqrtDiscSimp)/2]];
  term2 = Sqrt[Factor[(A - sqrtDiscSimp)/2]];
  
  (* Try all 4 sign combinations to match original value *)
  (* We want Sqrt[A + B*Sqrt[C0]] *)
  valOrig = N[Sqrt[expr] /. sTest];
  
  (* Note: Mathematica's Sqrt[x] usually returns principal root (positive real part) *)
  (* User requested "positive branch" which implies the result should be positive *)
  
  candidates = {
    term1 + term2,
    term1 - term2,
    -term1 + term2,
    -term1 - term2
  };
  
  bestCand = candidates[[1]];
  minErr = Abs[N[bestCand /. sTest] - valOrig];
  
  Do[
    err = Abs[N[cand /. sTest] - valOrig];
    If[err < minErr,
       minErr = err;
       bestCand = cand;
    ],
    {cand, Rest[candidates]}
  ];
  
  If[minErr > 10^-8,
    Print["Mismatch! Orig: ", valOrig, " BestCand: ", N[bestCand /. sTest], " Err: ", minErr];
    $Failed,
    bestCand
  ]
];

rationalizeInv[sumExpr_] := Module[{terms, t1, t2, num, den, final},
  terms = List @@ sumExpr;
  If[Length[terms] != 2, Return[1/sumExpr]];
  t1 = terms[[1]];
  t2 = terms[[2]];
  
  num = t1 - t2;
  den = Factor[t1^2 - t2^2];
  
  (* Force Sqrt to numerator *)
  (* If result has 1/Sqrt[X], make it Sqrt[X]/X *)
  final = num / den;
  final /. Power[x_, -1/2] :> Power[x, 1/2]/x
];

(* 5. Execute *)
Print["Processing ", Length[nestedNeg], " nested terms..."];

replRules = Table[
  denested = denestSqrt[base];
  If[denested === $Failed,
     base -> Power[base, -1/2], (* No change if failed *)
     (* Verify the user claim: "Power[-1/2] is in denominator... rationalize" *)
     rationalized = rationalizeInv[denested];
     Power[base, -1/2] -> rationalized
  ],
  {base, nestedNeg}
];

(* Apply rules *)
coefletterSimplified = coefletter /. replRules;

(* 6. Final Check *)
(* Check if any nested radicals remain in the result *)
(* User wants result where "Power[..., -1/2] in denominator" is gone/handled *)
(* We check for Power[..., -1/2] where base has Sqrt *)

basesNegNew = Cases[coefletterSimplified, Power[b_, -1/2] :> b, Infinity] // DeleteDuplicates;
nestedNegNew = Select[basesNegNew, hasNested];

Print["=================================================="];
Print["Post-processing Check:"];
Print["Remaining nested bases in Power[_, -1/2]: ", nestedNegNew];
Print["=================================================="];

(* 7. Save *)
Export[outputPath, coefletterSimplified];
Print["Saved to " <> outputPath];
Print["Absolute path: " <> ExpandFileName[outputPath]];
