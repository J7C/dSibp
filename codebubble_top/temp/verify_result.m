SetDirectory["d:\\opencode projects\\dSibp\\参考code\\temp"];
coefletter = Get["temp_result_Cofletter0.m"];
Print["Dimensions: ", Dimensions[coefletter]];
probe = coefletter[[7, 3, 6]];
Print["Probe (InputForm): "];
Print[ToString[probe, InputForm]];
