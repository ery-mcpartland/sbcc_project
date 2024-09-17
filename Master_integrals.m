(* ::Package:: *)

(* ::Title:: *)
(*Master Integrals*)


(* ::Text:: *)
(*Code to convert from an amplitude expressed in terms of scalar integrals (in \!\(TraditionalForm\`*)
(*SubscriptBox[*)
(*StyleBox["P", "TI"], *)
(*StyleBox["i", "TI"]]\) basis) to a minimal set of master integrals*)


(* ::Section:: *)
(*Function Descriptions*)


(* ::Subsection:: *)
(*j Integral conversion*)


(* ::Text:: *)
(*Converts the scalar integrals to the form of j integrals. Five functions, one for each class of diagram. Takes two arguments - type of diagram ("a" to "e") and scalar amplitude*)


(* ::Subsection:: *)
(*Master Integral Basis creation*)


(* ::Text:: *)
(*Generates the master integral basis and reduction rules for each type of diagram. Five functions, one for each class of diagram. Takes one argument - type of diagram ("a" to "e")*)


(* ::Subsection:: *)
(*Master Integral Reduction*)


(* ::Text:: *)
(*Reduces an amplitude in terms of j integrals into the minimum set of master integrals. Five functions, one for each class of diagram. Takes two arguments - type of diagram ("a" to "e") and amplitude in terms of j integrals*)


(* ::Section:: *)
(*Functions*)


(* ::Subsection:: *)
(*Initialisation*)


Needs["LiteRed`"]


(* ::Subsection:: *)
(*j integrals*)


jIntegralConvert["a",sAmp_]:=


jIntegralConvert["b",sAmp_]:=


jIntegralConvert["c",sAmp_]:=


jIntegralConvert["d",sAmp_]:=


jIntegralConvert["e",sAmp_]:=


(* ::Subsection:: *)
(*Master Integral basis*)


PrepareMasterInt["a"]:=


PrepareMasterInt["b"]:=


PrepareMasterInt["c"]:=


PrepareMasterInt["d"]:=


PrepareMasterInt["e"]:=


(* ::Subsection:: *)
(*Reduce to Master Integrals*)


MasterIntReduce["a",jAmp_]:=


MasterIntReduce["b",jAmp_]:=


MasterIntReduce["c",jAmp_]:=


MasterIntReduce["d",jAmp_]:=


MasterIntReduce["e",jAmp_]:=


(* ::Section:: *)
(*Appendix*)


(* ::Subsection:: *)
(*Testing*)
