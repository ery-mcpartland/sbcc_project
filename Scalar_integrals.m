(* ::Package:: *)

(* ::Title:: *)
(*Scalar Integrals*)


(* ::Text:: *)
(*Code to convert from tensor integrals to scalar integral (via tensor reduction). After application of this function scalar integrals are written only in terms of \!\(TraditionalForm\`*)
(*SubscriptBox[*)
(*StyleBox["P", "TI"], *)
(*StyleBox["i", "TI"]]\)*)


(* ::Section:: *)
(*Defining Functions*)


(* ::Subsection:: *)
(*Tensor Reductions*)


(* ::Text:: *)
(*Five functions, one for each class of diagram. Takes a tensor integrand with all scalars written in terms of \!\(TraditionalForm\`*)
(*SubscriptBox[*)
(*StyleBox["P", "TI"], *)
(*StyleBox["i", "TI"]]\) and converts to a scalar integrand using Passarino-Veltman. Takes two arguments , type of diagram ("a" to "e") and tensor integral to reduce. *)


(* ::Section:: *)
(*Functions*)


(* ::Subsection:: *)
(*Initialisation*)


Needs["X`"]


(* ::Subsection:: *)
(*Reductions*)


ReduceToTensor["a",pAmp_]:=


ReduceToTensor["b",pAmp_]:=


ReduceToTensor["c",pAmp_]:=


ReduceToTensor["d",pAmp_]:=


ReduceToTensor["e",pAmp_]:=


(* ::Section:: *)
(*Appendix*)


(* ::Subsection:: *)
(*Generate Tensor Reduction Rules*)


(* ::Subsubsection:: *)
(*Diagram a*)


(* ::Subsubsection:: *)
(*Diagram b*)


(* ::Subsubsection:: *)
(*Diagram c*)


(* ::Subsubsection:: *)
(*Diagram d*)


(* ::Subsubsection:: *)
(*Diagram e*)


(* ::Subsection:: *)
(*Testing*)
