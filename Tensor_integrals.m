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


CreateAmplitude[num_,denom_]:=FullSimplify[(\[LeftAngleBracket]\[ScriptU][p-q,0], num ,\[ScriptU][p,mb]\[RightAngleBracket]//FermionLineExpand)/denom]


(* ::Subsection:: *)
(*Replacements*)


PropagatorReplace["a",amp_]:=FullSimplify[amp /. {l . l->mc^2+P2,r . r->P4,l . r->1/2 (-P2+P3-P4),l . p->P7+P9,p . r->1/2 (-mb^2-P4+P8),
l . q->P9,q . r->1/2 (-mb^2-P5+P8),p . q->1/2 (mb^2+q . q),p . p->mb^2}]


PropagatorReplace["b",amp_]:=FullSimplify[amp /. {l . l->mc^2+P2,r . r->P4,l . r->1/2 (-P2+P3-P4),l . p->P7+P9,p . r->(P11-P4)/2,l . q->P9,
q . r->1/2 (-mb^2-P10+P11),p . q->1/2 (mb^2+q . q),p . p->mb^2}]


PropagatorReplace["c",amp_]:=FullSimplify[amp /. {l . l->mc^2+P2,r . r->P4,l . r->1/2 (-P2+P3-P4),l . p->1/2 (P1-P2+2 P7-q . q),
p . r->1/2 (-P4+P5+2 P6),l . q->1/2 (P1-P2-q . q),q . r->P6,p . q->1/2 (mb^2+q . q),p . p->mb^2}]


PropagatorReplace["d",amp_]:=FullSimplify[amp /. {l . l->mc^2+P2,r . r->P4,l . r->1/2 (-P1+P12-P4-2 P6),l . p->1/2 (P1-P2+2 P7-q . q),
p . r->(P11-P4)/2,l . q->1/2 (P1-P2-q . q),q . r->P6,p . q->1/2 (mb^2+q . q),p . p->mb^2}]


PropagatorReplace["e",amp_]:=FullSimplify[amp /.{l . l->mc^2+P2,r . r->P4,l . r->1/2 (-P2+P3-P4),l . p->1/2 (P1-P2+2 P7-q . q),
p . r->1/2 (-P1+P12+2 P13+P2-P3),l . q->1/2 (P1-P2-q . q),q . r->1/2 (-P1+P12+P2-P3)}]


(* ::Section:: *)
(*Appendix*)


(* ::Subsection:: *)
(*Generate Replacement rules*)


(* ::Subsubsection:: *)
(*Diagram a*)


Solve[P2==l . l-mc^2&&P3==(l+r) . (l+r)-mc^2&&P4==r . r&&P5==(r+p-q) . (r+p-q)&&P8==(r+p) . (r+p)&&P7==l . (p-q)&&
P9==l . q&&(p-q) . (p-q)==0&&(p . p)==mb^2,{l . l,r . r,l . r,l . p,r . p,l . q,r . q,p . q,p . p}]


(* ::Subsubsection:: *)
(*Diagram b*)


Solve[P2==l . l-mc^2&&P3==(l+r) . (l+r)-mc^2&&P4==r . r&&P10==(r+p-q) . (r+p-q)-mb^2&&P11==(r+p) . (r+p)-mb^2&&
P7==l . (p-q)&&P9==l . q&&(p-q) . (p-q)==0&&(p . p)==mb^2,{l . l,r . r,l . r,l . p,r . p,l . q,r . q,p . q,p . p}]


(* ::Subsubsection:: *)
(*Diagram c*)


Solve[P1==(l+q) . (l+q)-mc^2&&P2==l . l-mc^2&&P3==(l+r) . (l+r)-mc^2&&P4==r . r&&P5==(r+p-q) . (r+p-q)&&P6==r . q&&
P7==l . (p-q)&&(p-q) . (p-q)==0&&(p . p)==mb^2,{l . l,r . r,l . r,l . p,r . p,l . q,r . q,p . q,p . p}]


(* ::Subsubsection:: *)
(*Diagram d*)


Solve[P1==(l+q) . (l+q)-mc^2&&P2==l . l-mc^2&&P12==(l+r+q) . (l+r+q)-mc^2&&P4==r . r&&P11==(r+p) . (r+p)-mb^2&&
P6==r . q&&P7==l . (p-q)&&(p-q) . (p-q)==0&&(p . p)==mb^2,{l . l,r . r,l . r,l . p,r . p,l . q,r . q,p . q,p . p}]


(* ::Subsubsection:: *)
(*Diagram e*)


Solve[P1==(l+q) . (l+q)-mc^2&&P2==l . l-mc^2&&P3==(l+r) . (l+r)-mc^2&&P4==r . r&&P7==l . (p-q)&&P13==r . (p-q)&&
P12==(l+q+r) . (l+q+r)-mc^2,{l . l,r . r,l . r,l . p,r . p,l . q,r . q}]


(* ::Subsection:: *)
(*Testing*)


numeratorE0I = FullSimplify[DiracMatrix[Subscript[\[Gamma], \[Alpha]],\[DoubleStruckCapitalP]L,\[Gamma] . (l+r)+mc \[DoubleStruckOne],Subscript[\[Gamma], \[Nu]],(\[Gamma] . l+mc \[DoubleStruckOne]),Subscript[\[Gamma], \[Nu]],\[Gamma] . (l+r)+mc \[DoubleStruckOne],Subscript[\[Gamma], \[Alpha]],\[DoubleStruckCapitalP]L,\[Gamma] . (p-q)+mb \[DoubleStruckOne],Subscript[\[Gamma], \[Mu]]]]


CreateAmplitude[numeratorE0I,P2 (P3)^2 P4 mb^2]


a = l . l + r . q


PropagatorReplace["e",CreateAmplitude[numeratorE0I,P2 (P3)^2 P4 mb^2]]
