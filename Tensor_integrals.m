(* ::Package:: *)

(* ::Title:: *)
(*Tensor Integrals*)


(* ::Text:: *)
(*Automated code to apply EoMs and to convert all scalars to some linear combination of \!\(TraditionalForm\`*)
(*SubscriptBox[*)
(*StyleBox["P", "TI"], "1"]\)to \!\(TraditionalForm\`*)
(*SubscriptBox[*)
(*StyleBox["P", "TI"], "13"]\)*)


(* ::Section:: *)
(*Function Descriptions*)


(* ::Subsection:: *)
(*Amplitude creation*)


(* ::Text:: *)
(*Creates amplitude and applies EoM. Takes two arguments - numerator without external propagators and denominator (denominator can be in terms of momenta or \!\(TraditionalForm\`*)
(*SubscriptBox[*)
(*StyleBox["P", "TI"], *)
(*StyleBox["i", "TI"]]\))*)


(* ::Subsection:: *)
(*Propagator Replacements*)


(* ::Text:: *)
(*Five functions. One for each diagram; function applies rules to convert scalar propagators in amplitude in form of \!\(TraditionalForm\`*)
(*SubscriptBox[*)
(*StyleBox["P", "TI"], *)
(*StyleBox["i", "TI"]]\) (takes diagram type and amplitude to reduce as arguments)*)


(* ::Section:: *)
(*Functions*)


(* ::Subsection:: *)
(*Initialisation*)


Needs["X`"]


(* ::Subsection:: *)
(*Amplitudes*)


CreateAmplitude[num_,denom_]:=


(* ::Subsection:: *)
(*Replacements*)


PropagatorReplace["a",amp_]:=


PropagatorReplace["b",amp_]:=


PropagatorReplace["c",amp_]:=


PropagatorReplace["d",amp_]:=


PropagatorReplace["e",amp_]:=FullSimplify[amp /.{l . l->mc^2+P2,r . r->P4,l . r->1/2 (-P2+P3-P4),l . p->1/2 (P1-P2+2 P7-q . q),
p . r->1/2 (-P1+P12+2 P13+P2-P3),l . q->1/2 (P1-P2-q . q),q . r->1/2 (-P1+P12+P2-P3)}]


(* ::Section:: *)
(*Appendix*)


(* ::Subsection:: *)
(*Generate Replacement rules*)


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


Solve[P1==(l+q) . (l+q)-mc^2&&P2==l . l-mc^2&&P3==(l+r) . (l+r)-mc^2&&P4==r . r&&P7==l . (p-q)&&P13=={r . (p-q)}&&P12==(l+q+r) . (l+q+r)-mc^2,
{l . l,r . r,l . r,l . p,r . p,l . q,r . q}]


(* ::Subsection:: *)
(*Testing*)


a = l . l + r . q


PropagatorReplace["e",a]
