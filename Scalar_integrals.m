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
<<X`


(* ::Subsection:: *)
(*Reductions*)


ReduceToScalar["a",pAmp_]:=Collect[FermionLineExpand[(pAmp /.{Subscript[l, \[Mu]]->Subscript[p, \[Mu]]((P7)/(1/2 mb^2-1/2 q^2))+(Subscript[p, \[Mu]]-Subscript[q, \[Mu]]) 1/(1/2 mb^2-1/2 q^2) ((P7+P9)-mb^2 (P7)/(1/2 mb^2-1/2 q^2)),
Subscript[r, \[Mu]]->Subscript[p, \[Mu]]((1/2 (-P4+P5))/(1/2 mb^2-1/2 q^2))+(Subscript[p, \[Mu]]-Subscript[q, \[Mu]]) 1/(1/2 mb^2-1/2 q^2) ((1/2 (-mb^2-P4+P8))-mb^2 (1/2 (-P4+P5))/(1/2 mb^2-1/2 q^2))}
/.{Subscript[\[Sigma], \[Mu],{r}]->Subscript[\[Sigma], \[Mu],\[Nu]] Subscript[r, \[Nu]],Subscript[\[Sigma], \[Mu],{l}]->Subscript[\[Sigma], \[Mu],\[Nu]] Subscript[l, \[Nu]]}/.{Subscript[l, \[Nu]]->Subscript[p, \[Nu]]((P7)/(1/2 mb^2-1/2 q^2))+(Subscript[p, \[Nu]]-Subscript[q, \[Nu]]) 1/(1/2 mb^2-1/2 q^2) ((P7+P9)-mb^2 (P7)/(1/2 mb^2-1/2 q^2)),
Subscript[r, \[Nu]]->Subscript[p, \[Nu]]((1/2 (-P4+P5))/(1/2 mb^2-1/2 q^2))+(Subscript[p, \[Nu]]-Subscript[q, \[Nu]]) 1/(1/2 mb^2-1/2 q^2) ((1/2 (-mb^2-P4+P8))-mb^2 (1/2 (-P4+P5))/(1/2 mb^2-1/2 q^2))})
/.Subscript[q, \[Nu]]->Subscript[p, \[Nu]]-Subscript[k, \[Nu]]/.p-q->k//Contract,GordonIdentity->False]/.k->p-q,{Subscript[p, \[Mu]],Subscript[q, \[Mu]],Subscript[\[Gamma], \[Mu]]},FullSimplify]


ReduceToScalar["b",pAmp_]:=Collect[FermionLineExpand[(pAmp /.{Subscript[l, \[Mu]]->Subscript[p, \[Mu]]((P7)/(1/2 mb^2-1/2 q^2))+(Subscript[p, \[Mu]]-Subscript[q, \[Mu]]) 1/(1/2 mb^2-1/2 q^2) ((P7+P9)-mb^2 (P7)/(1/2 mb^2-1/2 q^2)),
Subscript[r, \[Mu]]->Subscript[p, \[Mu]]((1/2 (mb^2+P10-P4))/(1/2 mb^2-1/2 q^2))+(Subscript[p, \[Mu]]-Subscript[q, \[Mu]]) 1/(1/2 mb^2-1/2 q^2) (((P11-P4)/2)-mb^2 (1/2 (mb^2+P10-P4))/(1/2 mb^2-1/2 q^2))}
/.{Subscript[\[Sigma], \[Mu],{r}]->Subscript[\[Sigma], \[Mu],\[Nu]] Subscript[r, \[Nu]],Subscript[\[Sigma], \[Mu],{l}]->Subscript[\[Sigma], \[Mu],\[Nu]] Subscript[l, \[Nu]]}/.{Subscript[l, \[Nu]]->Subscript[p, \[Nu]]((P7)/(1/2 mb^2-1/2 q^2))+(Subscript[p, \[Nu]]-Subscript[q, \[Nu]]) 1/(1/2 mb^2-1/2 q^2) ((P7+P9)-mb^2 (P7)/(1/2 mb^2-1/2 q^2)),
Subscript[r, \[Nu]]->Subscript[p, \[Nu]]((1/2 (mb^2+P10-P4))/(1/2 mb^2-1/2 q^2))+(Subscript[p, \[Nu]]-Subscript[q, \[Nu]]) 1/(1/2 mb^2-1/2 q^2) (((P11-P4)/2)-mb^2 (1/2 (mb^2+P10-P4))/(1/2 mb^2-1/2 q^2))})
/.Subscript[q, \[Nu]]->Subscript[p, \[Nu]]-Subscript[k, \[Nu]]/.p-q->k//Contract,GordonIdentity->False]/.k->p-q,{Subscript[p, \[Mu]],Subscript[q, \[Mu]],Subscript[\[Gamma], \[Mu]]},FullSimplify]


ReduceToScalar["c",pAmp_]:=Collect[FermionLineExpand[(pAmp /.{Subscript[l, \[Mu]]->Subscript[p, \[Mu]]((P7)/(1/2 mb^2-1/2 q^2))+(Subscript[p, \[Mu]]-Subscript[q, \[Mu]]) 1/(1/2 mb^2-1/2 q^2) ((1/2 (P1-P2+2 P7-q . q))-mb^2 (P7)/(1/2 mb^2-1/2 q^2)),
Subscript[r, \[Mu]]->Subscript[p, \[Mu]]((1/2 (-P4+P5))/(1/2 mb^2-1/2 q^2))+(Subscript[p, \[Mu]]-Subscript[q, \[Mu]]) 1/(1/2 mb^2-1/2 q^2) ((1/2 (-P4+P5)+P6)-mb^2 (1/2 (-P4+P5))/(1/2 mb^2-1/2 q^2))}
/.{Subscript[\[Sigma], \[Mu],{r}]->Subscript[\[Sigma], \[Mu],\[Nu]] Subscript[r, \[Nu]],Subscript[\[Sigma], \[Mu],{l}]->Subscript[\[Sigma], \[Mu],\[Nu]] Subscript[l, \[Nu]]}/.{Subscript[l, \[Nu]]->Subscript[p, \[Nu]]((P7)/(1/2 mb^2-1/2 q^2))+(Subscript[p, \[Nu]]-Subscript[q, \[Nu]]) 1/(1/2 mb^2-1/2 q^2) ((1/2 (P1-P2+2 P7-q . q))-mb^2 (P7)/(1/2 mb^2-1/2 q^2)),
Subscript[r, \[Nu]]->Subscript[p, \[Nu]]((1/2 (-P4+P5))/(1/2 mb^2-1/2 q^2))+(Subscript[p, \[Nu]]-Subscript[q, \[Nu]]) 1/(1/2 mb^2-1/2 q^2) ((1/2 (-P4+P5)+P6)-mb^2 (1/2 (-P4+P5))/(1/2 mb^2-1/2 q^2))})
/.Subscript[q, \[Nu]]->Subscript[p, \[Nu]]-Subscript[k, \[Nu]]/.p-q->k//Contract,GordonIdentity->False]/.k->p-q,{Subscript[p, \[Mu]],Subscript[q, \[Mu]],Subscript[\[Gamma], \[Mu]]},FullSimplify]


{P7,1/2 (P1-P2+2 P7-q . q),1/2 (P11-P4-2 P6),(P11-P4)/2}


ReduceToScalar["d",pAmp_]:=Collect[FermionLineExpand[(pAmp /.{Subscript[l, \[Mu]]->Subscript[p, \[Mu]]((P7)/(1/2 mb^2-1/2 q^2))+(Subscript[p, \[Mu]]-Subscript[q, \[Mu]]) 1/(1/2 mb^2-1/2 q^2) ((1/2 (P1-P2+2 P7-q . q))-mb^2 (P7)/(1/2 mb^2-1/2 q^2)),
Subscript[r, \[Mu]]->Subscript[p, \[Mu]]((1/2 (P11-P4-2 P6))/(1/2 mb^2-1/2 q^2))+(Subscript[p, \[Mu]]-Subscript[q, \[Mu]]) 1/(1/2 mb^2-1/2 q^2) (((P11-P4)/2)-mb^2 (1/2 (P11-P4-2 P6))/(1/2 mb^2-1/2 q^2))}
/.{Subscript[\[Sigma], \[Mu],{r}]->Subscript[\[Sigma], \[Mu],\[Nu]] Subscript[r, \[Nu]],Subscript[\[Sigma], \[Mu],{l}]->Subscript[\[Sigma], \[Mu],\[Nu]] Subscript[l, \[Nu]]}/.{Subscript[l, \[Nu]]->Subscript[p, \[Nu]]((P7)/(1/2 mb^2-1/2 q^2))+(Subscript[p, \[Nu]]-Subscript[q, \[Nu]]) 1/(1/2 mb^2-1/2 q^2) ((1/2 (P1-P2+2 P7-q . q))-mb^2 (P7)/(1/2 mb^2-1/2 q^2)),
Subscript[r, \[Nu]]->Subscript[p, \[Nu]]((1/2 (P11-P4-2 P6))/(1/2 mb^2-1/2 q^2))+(Subscript[p, \[Nu]]-Subscript[q, \[Nu]]) 1/(1/2 mb^2-1/2 q^2) (((P11-P4)/2)-mb^2 (1/2 (P11-P4-2 P6))/(1/2 mb^2-1/2 q^2))})
/.Subscript[q, \[Nu]]->Subscript[p, \[Nu]]-Subscript[k, \[Nu]]/.p-q->k//Contract,GordonIdentity->False]/.k->p-q,{Subscript[p, \[Mu]],Subscript[q, \[Mu]],Subscript[\[Gamma], \[Mu]]},FullSimplify]


ReduceToScalar["e",pAmp_]:=Collect[FermionLineExpand[(pAmp /.{Subscript[l, \[Mu]]->Subscript[p, \[Mu]](P7/(1/2 mb^2-1/2 q^2))+(Subscript[p, \[Mu]]-Subscript[q, \[Mu]]) 1/(1/2 mb^2-1/2 q^2) (P7+1/2 (P1-P2-q^2)-mb^2 P7/(1/2 mb^2-1/2 q^2)),
Subscript[r, \[Mu]]->Subscript[p, \[Mu]](P13/(1/2 mb^2-1/2 q^2))+(Subscript[p, \[Mu]]-Subscript[q, \[Mu]]) 1/(1/2 mb^2-1/2 q^2) (P13+1/2 (P12-P3-P1+P2)-mb^2 P13/(1/2 mb^2-1/2 q^2))}
/.{Subscript[\[Sigma], \[Mu],{r}]->Subscript[\[Sigma], \[Mu],\[Nu]] Subscript[r, \[Nu]],Subscript[\[Sigma], \[Mu],{l}]->Subscript[\[Sigma], \[Mu],\[Nu]] Subscript[l, \[Nu]]}/.{Subscript[l, \[Nu]]->Subscript[p, \[Nu]](P7/(1/2 mb^2-1/2 q^2))+(Subscript[p, \[Nu]]-Subscript[q, \[Nu]]) 1/(1/2 mb^2-1/2 q^2) (P7+1/2 (P1-P2-q^2)-mb^2 P7/(1/2 mb^2-1/2 q^2)),
Subscript[r, \[Nu]]->Subscript[p, \[Nu]](P13/(1/2 mb^2-1/2 q^2))+(Subscript[p, \[Nu]]-Subscript[q, \[Nu]]) 1/(1/2 mb^2-1/2 q^2) (P13+1/2 (P12-P3-P1+P2)-mb^2 P13/(1/2 mb^2-1/2 q^2))})
/.Subscript[q, \[Nu]]->Subscript[p, \[Nu]]-Subscript[k, \[Nu]]/.p-q->k//Contract,GordonIdentity->False]/.k->p-q,{Subscript[p, \[Mu]],Subscript[q, \[Mu]],Subscript[\[Gamma], \[Mu]]},FullSimplify]


(* ::Section:: *)
(*Appendix*)


(* ::Subsection:: *)
(*Generate Tensor Reduction Rules*)


(* ::Text:: *)
(*Once evaluated, a general tensor integral (expressed in terms of \!\(TraditionalForm\`\**)
(*SuperscriptBox[*)
(*StyleBox["l", "TI"], "\[Mu]"], \**)
(*SuperscriptBox[*)
(*StyleBox["r", "TI"], "\[Mu]"]\), i.e. \!\(TraditionalForm\`\**)
(*SuperscriptBox[*)
(*StyleBox["I", "TI"], "\[Mu]"] == \**)
(*StyleBox["A", "TI"] \**)
(*SuperscriptBox[*)
(*StyleBox["l", "TI"], "\[Mu]"]\)or \!\(TraditionalForm\`\**)
(*SuperscriptBox[*)
(*StyleBox["I", "TI"], "\[Mu]"] == \**)
(*StyleBox["B", "TI"] \**)
(*SuperscriptBox[*)
(*StyleBox["r", "TI"], "\[Mu]"]\)) from one of the 5 types of diagrams can be expressed as*)
(*\!\(TraditionalForm\`\**)
(*SuperscriptBox[*)
(*StyleBox["I", "TI"], "\[Mu]"] == \**)
(*SuperscriptBox[*)
(*StyleBox["p", "TI"], "\[Mu]"] \**)
(*SubscriptBox[*)
(*StyleBox["I", "TI"], *)
(*StyleBox["p", "TI"]] + \**)
(*SuperscriptBox[*)
(*RowBox[{"(", *)
(*RowBox[{*)
(*StyleBox["p", "TI"], "-", *)
(*StyleBox["q", "TI"]}], ")"}], "\[Mu]"] \**)
(*SubscriptBox[*)
(*StyleBox["I", "TI"], *)
(*StyleBox[*)
(*RowBox[{"p", "q"}], "TI"]]\) *)
(*as these are a complete linearly independent set of external momenta. Below, we determine the value of*)
(*\!\(TraditionalForm\`\**)
(*SubscriptBox[*)
(*StyleBox["p", "TI"], "\[Mu]"] \**)
(*SuperscriptBox[*)
(*StyleBox["I", "TI"], "\[Mu]"]\) and*)
(*\!\(TraditionalForm\`\**)
(*SubscriptBox[*)
(*RowBox[{"(", *)
(*RowBox[{*)
(*StyleBox["p", "TI"], "-", *)
(*StyleBox["q", "TI"]}], ")"}], "\[Mu]"] \**)
(*SuperscriptBox[*)
(*StyleBox["I", "TI"], "\[Mu]"]\)*)


FullSimplify[Contract[Subscript[p, \[Mu]]((Subscript[p, \[Mu]]-Subscript[q, \[Mu]])Ipq+Subscript[p, \[Mu]]Ip)]/.{p . p->mb^2,(p-q) . (p-q)->ms^2,p . q->1/2 (mb^2-ms^2+q^2)}]/.ms^2->0


Simplify[Collect[FullSimplify[Contract[(Subscript[p, \[Mu]]-Subscript[q, \[Mu]])((Subscript[p, \[Mu]]-Subscript[q, \[Mu]])Ipq+Subscript[p, \[Mu]]Ip)]/.{p . p->mb^2,(p-q) . (p-q)->ms^2}]/.{p . q->1/2 (mb^2-ms^2+q . q)}/.{ms^2->0,q . q->q^2},{ILpq,ILp}]]


(* ::Text:: *)
(*This gives us that if \!\(TraditionalForm\`\**)
(*SuperscriptBox[*)
(*StyleBox["I", "TI"], "\[Mu]"] == \**)
(*StyleBox["A", "TI"] \**)
(*SuperscriptBox[*)
(*StyleBox["l", "TI"], "\[Mu]"]\):*)
(*\!\(TraditionalForm\`\**)
(*SubscriptBox[*)
(*StyleBox["I", "TI"], *)
(*StyleBox["p", "TI"]] == \**)
(*FractionBox[*)
(*RowBox[{"2", *)
(*StyleBox["A", "TI"]}], *)
(*RowBox[{"(", *)
(*RowBox[{*)
(*StyleBox["m", "TI"], *)
(*SuperscriptBox[*)
(*StyleBox["b", "TI"], "2"], "-", *)
(*SuperscriptBox[*)
(*StyleBox["q", "TI"], "2"]}], ")"}]] \((\**)
(*StyleBox["p", "TI"] - \**)
(*StyleBox["q", "TI"])\) . \**)
(*StyleBox["l", "TI"]\)  and \!\(TraditionalForm\`\(\**)
(*SubscriptBox[*)
(*StyleBox["I", "TI"], *)
(*StyleBox[*)
(*RowBox[{"p", "q"}], "TI"]]\(==\)\)\)\!\(TraditionalForm\`*)
(*FractionBox["2", *)
(*RowBox[{"(", *)
(*RowBox[{*)
(*StyleBox["m", "TI"], *)
(*SuperscriptBox[*)
(*StyleBox["b", "TI"], "2"], "-", *)
(*SuperscriptBox[*)
(*StyleBox["q", "TI"], "2"]}], ")"}]]\)\!\(TraditionalForm\`\((\**)
(*StyleBox["A", "TI"] \**)
(*StyleBox["p", "TI"] . \**)
(*StyleBox["l", "TI"] - \**)
(*StyleBox["m", "TI"] \**)
(*SuperscriptBox[*)
(*StyleBox["b", "TI"], "2"] \((\**)
(*FractionBox[*)
(*RowBox[{"2", *)
(*StyleBox["A", "TI"]}], *)
(*RowBox[{"(", *)
(*RowBox[{*)
(*StyleBox["m", "TI"], *)
(*SuperscriptBox[*)
(*StyleBox["b", "TI"], "2"], "-", *)
(*SuperscriptBox[*)
(*StyleBox["q", "TI"], "2"]}], ")"}]] \((\**)
(*StyleBox["p", "TI"] - \**)
(*StyleBox["q", "TI"])\) . \**)
(*StyleBox["l", "TI"])\))\)\)*)
(*and if \!\(TraditionalForm\`\**)
(*SuperscriptBox[*)
(*StyleBox["I", "TI"], "\[Mu]"] == \**)
(*StyleBox["B", "TI"] \**)
(*SuperscriptBox[*)
(*StyleBox["r", "TI"], "\[Mu]"]\) *)
(*\!\(TraditionalForm\`\**)
(*SubscriptBox[*)
(*StyleBox["I", "TI"], *)
(*StyleBox["p", "TI"]] == \**)
(*FractionBox[*)
(*RowBox[{"2", *)
(*StyleBox["A", "TI"]}], *)
(*RowBox[{"(", *)
(*RowBox[{*)
(*StyleBox["m", "TI"], *)
(*SuperscriptBox[*)
(*StyleBox["b", "TI"], "2"], "-", *)
(*SuperscriptBox[*)
(*StyleBox["q", "TI"], "2"]}], ")"}]] \((\**)
(*StyleBox["p", "TI"] - \**)
(*StyleBox["q", "TI"])\) . \**)
(*StyleBox["r", "TI"]\)  and \!\(TraditionalForm\`\(\**)
(*SubscriptBox[*)
(*StyleBox["I", "TI"], *)
(*StyleBox[*)
(*RowBox[{"p", "q"}], "TI"]]\(==\)\)\)\!\(TraditionalForm\`*)
(*FractionBox["2", *)
(*RowBox[{"(", *)
(*RowBox[{*)
(*StyleBox["m", "TI"], *)
(*SuperscriptBox[*)
(*StyleBox["b", "TI"], "2"], "-", *)
(*SuperscriptBox[*)
(*StyleBox["q", "TI"], "2"]}], ")"}]]\)\!\(TraditionalForm\`\((\**)
(*StyleBox["A", "TI"] \**)
(*StyleBox["p", "TI"] . \**)
(*StyleBox["r", "TI"] - \**)
(*StyleBox["m", "TI"] \**)
(*SuperscriptBox[*)
(*StyleBox["b", "TI"], "2"] \((\**)
(*FractionBox[*)
(*RowBox[{"2", *)
(*StyleBox["A", "TI"]}], *)
(*RowBox[{"(", *)
(*RowBox[{*)
(*StyleBox["m", "TI"], *)
(*SuperscriptBox[*)
(*StyleBox["b", "TI"], "2"], "-", *)
(*SuperscriptBox[*)
(*StyleBox["q", "TI"], "2"]}], ")"}]] \((\**)
(*StyleBox["p", "TI"] - \**)
(*StyleBox["q", "TI"])\) . \**)
(*StyleBox["r", "TI"])\))\)\)*)
(*All we have left to do, then, is to find the values of \!\(TraditionalForm\`\((\**)
(*StyleBox["p", "TI"] - \**)
(*StyleBox["q", "TI"])\) . \**)
(*StyleBox["l", "TI"], \**)
(*StyleBox["p", "TI"] . \**)
(*StyleBox["l", "TI"], \((\**)
(*StyleBox["p", "TI"] - \**)
(*StyleBox["q", "TI"])\) . \**)
(*StyleBox["r", "TI"]\) and \!\(TraditionalForm\`\**)
(*StyleBox["p", "TI"] . \**)
(*StyleBox["r", "TI"]\) in the correct basis of \!\(TraditionalForm\`*)
(*SubscriptBox[*)
(*StyleBox["P", "TI"], *)
(*StyleBox["i", "TI"]]\) for each type of diagram. Happily, we've already done most of the work for this in Tensor_Integrals.m*)


(* ::Subsubsection:: *)
(*Diagram a*)


FullSimplify[{(p-q) . l,p . l,(p-q) . r,p . r}/.{l . l->mc^2+P2,r . r->P4,l . r->1/2 (-P2+P3-P4),l . p->P7+P9,p . r->1/2 (-mb^2-P4+P8),l . q->P9,
q . r->1/2 (-mb^2-P5+P8),p . q->1/2 (mb^2+q . q),p . p->mb^2}]


(* ::Subsubsection:: *)
(*Diagram b*)


FullSimplify[{(p-q) . l,p . l,(p-q) . r,p . r}/.{l . l->mc^2+P2,r . r->P4,l . r->1/2 (-P2+P3-P4),l . p->P7+P9,p . r->(P11-P4)/2,l . q->P9,q . r->1/2 (-mb^2-P10+P11),
p . q->1/2 (mb^2+q . q),p . p->mb^2}]


(* ::Subsubsection:: *)
(*Diagram c*)


FullSimplify[{(p-q) . l,p . l,(p-q) . r,p . r}/.{l . l->mc^2+P2,r . r->P4,l . r->1/2 (-P2+P3-P4),l . p->1/2 (P1-P2+2 P7-q . q),
p . r->1/2 (-P4+P5+2 P6),l . q->1/2 (P1-P2-q . q),q . r->P6,p . q->1/2 (mb^2+q . q),p . p->mb^2}]


(* ::Subsubsection:: *)
(*Diagram d*)


FullSimplify[{(p-q) . l,p . l,(p-q) . r,p . r}/.{l . l->mc^2+P2,r . r->P4,l . r->1/2 (-P1+P12-P4-2 P6),l . p->1/2 (P1-P2+2 P7-q . q),
p . r->(P11-P4)/2,l . q->1/2 (P1-P2-q . q),q . r->P6,p . q->1/2 (mb^2+q . q),p . p->mb^2}]


(* ::Subsubsection:: *)
(*Diagram e*)


FullSimplify[{(p-q) . l,p . l,(p-q) . r,p . r}/.{l . l->mc^2+P2,r . r->P4,l . r->1/2 (-P2+P3-P4),l . p->1/2 (P1-P2+2 P7-q . q),
p . r->1/2 (-P1+P12+2 P13+P2-P3),l . q->1/2 (P1-P2-q . q),q . r->1/2 (-P1+P12+P2-P3)}]


(* ::Subsection:: *)
(*Testing*)


pAmpE0i=((-2+\[ScriptD]) (2 (-2+\[ScriptD]) P13 (P2+P3-P4)+2 (-2+\[ScriptD]) (P2-P4) P7-8 mc^2 (P13+P7)) \[LeftAngleBracket]\[ScriptU][p-q,0],Subscript[\[Gamma], \[Mu]],\[DoubleStruckCapitalP]L,\[ScriptU][p,mb]\[RightAngleBracket])/(mb^2 P2 P3^2 P4)+
1/(mb^2 P2 P3^2 P4) (-2+\[ScriptD]) (I (-2+\[ScriptD]) mb (P2-P4) \[LeftAngleBracket]\[ScriptU][p-q,0],Subscript[\[Sigma], \[Mu],{l}],\[DoubleStruckCapitalP]R,\[ScriptU][p,mb]\[RightAngleBracket]+I (-2+\[ScriptD]) mb (P2+P3-P4) \[LeftAngleBracket]\[ScriptU][p-q,0],Subscript[\[Sigma], \[Mu],{r}],\[DoubleStruckCapitalP]R,\[ScriptU][p,mb]\[RightAngleBracket]-
4 I mb mc^2 (\[LeftAngleBracket]\[ScriptU][p-q,0],Subscript[\[Sigma], \[Mu],{l}],\[DoubleStruckCapitalP]R,\[ScriptU][p,mb]\[RightAngleBracket]+\[LeftAngleBracket]\[ScriptU][p-q,0],Subscript[\[Sigma], \[Mu],{r}],\[DoubleStruckCapitalP]R,\[ScriptU][p,mb]\[RightAngleBracket]))+((-2+\[ScriptD]) (-4 mc^2+(-2+\[ScriptD]) (P2-P4)) \[LeftAngleBracket]\[ScriptU][p-q,0],\[DoubleStruckCapitalP]R,\[ScriptU][p,mb]\[RightAngleBracket] Subscript[l, \[Mu]])/(mb P2 P3^2 P4)+
((-2+\[ScriptD]) (-4 mc^2+(-2+\[ScriptD]) (P2+P3-P4)) \[LeftAngleBracket]\[ScriptU][p-q,0],\[DoubleStruckCapitalP]R,\[ScriptU][p,mb]\[RightAngleBracket] Subscript[r, \[Mu]])/(mb P2 P3^2 P4)


ReduceToScalar["e",pAmpE0i]
