(* ::Package:: *)

Needs["X`"]


a1Op1={-CFa DiracMatrix[LTensor[\[Gamma],\[Nu]],\[Gamma] . (r+p-q),LTensor[\[Gamma],\[Alpha]],\[DoubleStruckCapitalP]L,\[Gamma] . (l+r)+mc \[DoubleStruckOne],LTensor[\[Gamma],\[Nu]],\[Gamma] . (l)+mc \[DoubleStruckOne],LTensor[\[Gamma],\[Alpha]],\[DoubleStruckCapitalP]L,\[Gamma] . (p-q)+mb \[DoubleStruckOne],
LTensor[\[Gamma],\[Mu]]],P2 P3 P4 P5 mb^2}
a2Op1={CFa DiracMatrix[LTensor[\[Gamma],\[Nu]],\[Gamma] . (r+p-q),LTensor[\[Gamma],\[Mu]],\[Gamma] . (r+p),LTensor[\[Gamma],\[Alpha]],\[DoubleStruckCapitalP]L,\[Gamma] . (l+r)+mc \[DoubleStruckOne],LTensor[\[Gamma],\[Nu]],\[Gamma] . (l)+mc \[DoubleStruckOne],
LTensor[\[Gamma],\[Alpha]],\[DoubleStruckCapitalP]L],P2 P3 P4 P5 P8}
a3Op1={CFa DiracMatrix[LTensor[\[Gamma],\[Mu]],\[Gamma] . p,LTensor[\[Gamma],\[Nu]],\[Gamma] . (r+p),LTensor[\[Gamma],\[Alpha]],\[DoubleStruckCapitalP]L,\[Gamma] . (l+r)+mc \[DoubleStruckOne],LTensor[\[Gamma],\[Nu]],\[Gamma] . (l)+mc \[DoubleStruckOne],LTensor[\[Gamma],\[Alpha]],
\[DoubleStruckCapitalP]L],P2 P3 P4 P8 mb^2}


a1Op2={-DiracMatrix[LTensor[\[Gamma],\[Nu]],\[Gamma] . (r+p-q),LTensor[\[Gamma],\[Alpha]],\[DoubleStruckCapitalP]L,\[Gamma] . (l+r)+mc \[DoubleStruckOne],LTensor[\[Gamma],\[Nu]],\[Gamma] . (l)+mc \[DoubleStruckOne],LTensor[\[Gamma],\[Alpha]],\[DoubleStruckCapitalP]L,\[Gamma] . (p-q)+mb \[DoubleStruckOne],
LTensor[\[Gamma],\[Mu]]],P2 P3 P4 P5 mb^2}
a2Op2={DiracMatrix[LTensor[\[Gamma],\[Nu]],\[Gamma] . (r+p-q),LTensor[\[Gamma],\[Mu]],\[Gamma] . (r+p),LTensor[\[Gamma],\[Alpha]],\[DoubleStruckCapitalP]L,\[Gamma] . (l+r)+mc \[DoubleStruckOne],LTensor[\[Gamma],\[Nu]],\[Gamma] . (l)+mc \[DoubleStruckOne],
LTensor[\[Gamma],\[Alpha]],\[DoubleStruckCapitalP]L],P2 P3 P4 P5 P8}
a3Op2={DiracMatrix[LTensor[\[Gamma],\[Mu]],\[Gamma] . p,LTensor[\[Gamma],\[Nu]],\[Gamma] . (r+p),LTensor[\[Gamma],\[Alpha]],\[DoubleStruckCapitalP]L,\[Gamma] . (l+r)+mc \[DoubleStruckOne],LTensor[\[Gamma],\[Nu]],\[Gamma] . (l)+mc \[DoubleStruckOne],LTensor[\[Gamma],\[Alpha]],
\[DoubleStruckCapitalP]L],P2 P3 P4 P8 mb^2}


b1Op1={-CFb DiracMatrix[LTensor[\[Gamma],\[Alpha]],\[DoubleStruckCapitalP]L,\[Gamma] . (l)+mc \[DoubleStruckOne],LTensor[\[Gamma],\[Nu]],\[Gamma] . (l+r)+mc \[DoubleStruckOne],LTensor[\[Gamma],\[Alpha]],\[DoubleStruckCapitalP]L,\[Gamma] . (r+p-q)+mb,LTensor[\[Gamma],\[Nu]],\[Gamma] . (p-q)+mb,
LTensor[\[Gamma],\[Mu]]],P2 P3 P4 P10 mb^2}
b2Op1={CFb DiracMatrix[LTensor[\[Gamma],\[Alpha]],\[DoubleStruckCapitalP]L,\[Gamma] . (l)+mc \[DoubleStruckOne],LTensor[\[Gamma],\[Nu]],\[Gamma] . (l+r)+mc \[DoubleStruckOne],LTensor[\[Gamma],\[Alpha]],\[DoubleStruckCapitalP]L,\[Gamma] . (r+p-q)+mb,LTensor[\[Gamma],\[Mu]],\[Gamma] . (p+r)+mb,
LTensor[\[Gamma],\[Nu]]],P2 P3 P4 P10 P11}
b3Op1={CFb DiracMatrix[LTensor[\[Gamma],\[Mu]],\[Gamma] . p,\[Gamma] . (l)+mc \[DoubleStruckOne],LTensor[\[Gamma],\[Nu]],\[Gamma] . (l+r)+mc \[DoubleStruckOne],LTensor[\[Gamma],\[Alpha]],\[DoubleStruckCapitalP]L,\[Gamma] . (p+r)+mb,
LTensor[\[Gamma],\[Nu]]],P2 P3 P4 P11 mb^2}


b1Op2={-DiracMatrix[LTensor[\[Gamma],\[Alpha]],\[DoubleStruckCapitalP]L,\[Gamma] . (l)+mc \[DoubleStruckOne],LTensor[\[Gamma],\[Nu]],\[Gamma] . (l+r)+mc \[DoubleStruckOne],LTensor[\[Gamma],\[Alpha]],\[DoubleStruckCapitalP]L,\[Gamma] . (r+p-q)+mb,LTensor[\[Gamma],\[Nu]],\[Gamma] . (p-q)+mb,
LTensor[\[Gamma],\[Mu]]],P2 P3 P4 P10 mb^2}
b2Op2={DiracMatrix[LTensor[\[Gamma],\[Alpha]],\[DoubleStruckCapitalP]L,\[Gamma] . (l)+mc \[DoubleStruckOne],LTensor[\[Gamma],\[Nu]],\[Gamma] . (l+r)+mc \[DoubleStruckOne],LTensor[\[Gamma],\[Alpha]],\[DoubleStruckCapitalP]L,\[Gamma] . (r+p-q)+mb,LTensor[\[Gamma],\[Mu]],\[Gamma] . (p+r)+mb,
LTensor[\[Gamma],\[Nu]]],P2 P3 P4 P10 P11}
b3Op2={DiracMatrix[LTensor[\[Gamma],\[Mu]],\[Gamma] . p,\[Gamma] . (l)+mc \[DoubleStruckOne],LTensor[\[Gamma],\[Nu]],\[Gamma] . (l+r)+mc \[DoubleStruckOne],LTensor[\[Gamma],\[Alpha]],\[DoubleStruckCapitalP]L,\[Gamma] . (p+r)+mb,
LTensor[\[Gamma],\[Nu]]],P2 P3 P4 P11 mb^2}


c1Op1={CFc DiracMatrix[LTensor[\[Gamma],\[Nu]],\[Gamma] . (r+p-q),\[Gamma] . (l+r)+mc \[DoubleStruckOne],LTensor[\[Gamma],\[Nu]],\[Gamma] . (l)+mc \[DoubleStruckOne],LTensor[\[Gamma],\[Mu]],\[Gamma] . (l+q),LTensor[\[Gamma],\[Alpha]],\[DoubleStruckCapitalP]L],P1 P2 P3 P4 P5}
c2Op1={CFc DiracMatrix[LTensor[\[Gamma],\[Nu]],\[Gamma] . (r+p-q),-\[Gamma] . (l+q)+mc \[DoubleStruckOne],LTensor[\[Gamma],\[Mu]],-\[Gamma] . (l)+mc \[DoubleStruckOne],LTensor[\[Gamma],\[Nu]],-\[Gamma] . (l+r)+mc \[DoubleStruckOne]],P1 P2 P3 P4 P5}


c1Op2={DiracMatrix[LTensor[\[Gamma],\[Nu]],\[Gamma] . (r+p-q),\[Gamma] . (l+r)+mc \[DoubleStruckOne],LTensor[\[Gamma],\[Nu]],\[Gamma] . (l)+mc \[DoubleStruckOne],LTensor[\[Gamma],\[Mu]],\[Gamma] . (l+q),LTensor[\[Gamma],\[Alpha]],\[DoubleStruckCapitalP]L],P1 P2 P3 P4 P5}
c2Op2={DiracMatrix[LTensor[\[Gamma],\[Nu]],\[Gamma] . (r+p-q),-\[Gamma] . (l+q)+mc \[DoubleStruckOne],LTensor[\[Gamma],\[Mu]],-\[Gamma] . (l)+mc \[DoubleStruckOne],LTensor[\[Gamma],\[Nu]],-\[Gamma] . (l+r)+mc \[DoubleStruckOne]],P1 P2 P3 P4 P5}


d1Op1={CFd DiracMatrix[LTensor[\[Gamma],\[Alpha]],\[DoubleStruckCapitalP]L,\[Gamma] . (l)+mc \[DoubleStruckOne],LTensor[\[Gamma],\[Mu]],\[Gamma] . (l+q)+mc \[DoubleStruckOne],LTensor[\[Gamma],\[Nu]],\[Gamma] . (l+q+r)+mc \[DoubleStruckOne],LTensor[\[Gamma],\[Alpha]],\[DoubleStruckCapitalP]L,\[Gamma] . (p+r)+mb,
LTensor[\[Gamma],\[Nu]]],P1 P2 P12 P4 P11}
d2Op1={CFd DiracMatrix[LTensor[\[Gamma],\[Alpha]],\[DoubleStruckCapitalP]L,-\[Gamma] . (l+q+r)+mc \[DoubleStruckOne],LTensor[\[Gamma],\[Nu]],-\[Gamma] . (l+q)+mc \[DoubleStruckOne],LTensor[\[Gamma],\[Mu]],-\[Gamma] . (l)+mc \[DoubleStruckOne],LTensor[\[Gamma],\[Alpha]],\[DoubleStruckCapitalP]L,
\[Gamma] . (p+r)+mb,LTensor[\[Gamma],\[Nu]]],P1 P2 P12 P4 P11}


d1Op2={DiracMatrix[LTensor[\[Gamma],\[Alpha]],\[DoubleStruckCapitalP]L,\[Gamma] . (l)+mc \[DoubleStruckOne],LTensor[\[Gamma],\[Mu]],\[Gamma] . (l+q)+mc \[DoubleStruckOne],LTensor[\[Gamma],\[Nu]],\[Gamma] . (l+q+r)+mc \[DoubleStruckOne],LTensor[\[Gamma],\[Alpha]],\[DoubleStruckCapitalP]L,\[Gamma] . (p+r)+mb,
LTensor[\[Gamma],\[Nu]]],P1 P2 P12 P4 P11}
d2Op2={DiracMatrix[LTensor[\[Gamma],\[Alpha]],\[DoubleStruckCapitalP]L,-\[Gamma] . (l+q+r)+mc \[DoubleStruckOne],LTensor[\[Gamma],\[Nu]],-\[Gamma] . (l+q)+mc \[DoubleStruckOne],LTensor[\[Gamma],\[Mu]],-\[Gamma] . (l)+mc \[DoubleStruckOne],LTensor[\[Gamma],\[Alpha]],\[DoubleStruckCapitalP]L,
\[Gamma] . (p+r)+mb,LTensor[\[Gamma],\[Nu]]],P1 P2 P12 P4 P11}


e0iOp1={-CFe DiracMatrix[LTensor[\[Gamma],\[Alpha]],\[DoubleStruckCapitalP]L,\[Gamma] . (l+r)+mc \[DoubleStruckOne],LTensor[\[Gamma],\[Nu]],(\[Gamma] . l+mc \[DoubleStruckOne]),LTensor[\[Gamma],\[Nu]],\[Gamma] . (l+r)+mc \[DoubleStruckOne],LTensor[\[Gamma],\[Alpha]],\[DoubleStruckCapitalP]L,\[Gamma] . (p-q)+mb \[DoubleStruckOne],
LTensor[\[Gamma],\[Mu]]],P2 P3^2 P4 mb^2}
e0iiOp1={CFe DiracMatrix[LTensor[\[Gamma],\[Mu]],\[Gamma] . p ,LTensor[\[Gamma],\[Alpha]],\[DoubleStruckCapitalP]L,\[Gamma] . (l+r)+mc \[DoubleStruckOne],LTensor[\[Gamma],\[Nu]],(\[Gamma] . l+mc \[DoubleStruckOne]),LTensor[\[Gamma],\[Nu]],\[Gamma] . (l+r)+mc \[DoubleStruckOne],
LTensor[\[Gamma],\[Alpha]],\[DoubleStruckCapitalP]L],P2 P3^2 P4 mb^2}
e1Op1={CFe DiracMatrix[LTensor[\[Gamma],\[Alpha]],\[DoubleStruckCapitalP]L,\[Gamma] . (l+q+r)+mc \[DoubleStruckOne],LTensor[\[Gamma],\[Nu]],\[Gamma] . (l+q)+mc \[DoubleStruckOne],LTensor[\[Gamma],\[Mu]],\[Gamma] . (l)+mc \[DoubleStruckOne],LTensor[\[Gamma],\[Nu]],\[Gamma] . (l+r)+mc \[DoubleStruckOne],
LTensor[\[Gamma],\[Alpha]],\[DoubleStruckCapitalP]L],P1 P2 P3 P4 P12}
e2Op1={CFe DiracMatrix[LTensor[\[Gamma],\[Alpha]],\[DoubleStruckCapitalP]L,-\[Gamma] . (l+q)+mc \[DoubleStruckOne],LTensor[\[Gamma],\[Nu]],-\[Gamma] . (l+q+r)+mc \[DoubleStruckOne],LTensor[\[Gamma],\[Nu]],-\[Gamma] . (l+q)+mc \[DoubleStruckOne],LTensor[\[Gamma],\[Mu]],(-\[Gamma] . l+mc \[DoubleStruckOne]),
LTensor[\[Gamma],\[Alpha]],\[DoubleStruckCapitalP]L],P1^2 P2 P4 P12}
e3Op1={CFe DiracMatrix[LTensor[\[Gamma],\[Alpha]],\[DoubleStruckCapitalP]L,\[DoubleStruckOne] mc-\[Gamma] . l,LTensor[\[Gamma],\[Mu]],\[DoubleStruckOne] mc-\[Gamma] . l-\[Gamma] . q,LTensor[\[Gamma],\[Nu]],\[DoubleStruckOne] mc-\[Gamma] . l-\[Gamma] . q-\[Gamma] . r,LTensor[\[Gamma],\[Nu]],\[DoubleStruckOne] mc-\[Gamma] . l-\[Gamma] . q,
LTensor[\[Gamma],\[Alpha]],\[DoubleStruckCapitalP]L],P1^2 P2 P4 P12}


e0iOp2={-DiracMatrix[LTensor[\[Gamma],\[Alpha]],\[DoubleStruckCapitalP]L,\[Gamma] . (l+r)+mc \[DoubleStruckOne],LTensor[\[Gamma],\[Nu]],(\[Gamma] . l+mc \[DoubleStruckOne]),LTensor[\[Gamma],\[Nu]],\[Gamma] . (l+r)+mc \[DoubleStruckOne],LTensor[\[Gamma],\[Alpha]],\[DoubleStruckCapitalP]L,\[Gamma] . (p-q)+mb \[DoubleStruckOne],
LTensor[\[Gamma],\[Mu]]],P2 P3^2 P4 mb^2}
e0iiOp2={DiracMatrix[LTensor[\[Gamma],\[Mu]],\[Gamma] . p ,LTensor[\[Gamma],\[Alpha]],\[DoubleStruckCapitalP]L,\[Gamma] . (l+r)+mc \[DoubleStruckOne],LTensor[\[Gamma],\[Nu]],(\[Gamma] . l+mc \[DoubleStruckOne]),LTensor[\[Gamma],\[Nu]],\[Gamma] . (l+r)+mc \[DoubleStruckOne],
LTensor[\[Gamma],\[Alpha]],\[DoubleStruckCapitalP]L],P2 P3^2 P4 mb^2}
e1Op2={DiracMatrix[LTensor[\[Gamma],\[Alpha]],\[DoubleStruckCapitalP]L,\[Gamma] . (l+q+r)+mc \[DoubleStruckOne],LTensor[\[Gamma],\[Nu]],\[Gamma] . (l+q)+mc \[DoubleStruckOne],LTensor[\[Gamma],\[Mu]],\[Gamma] . (l)+mc \[DoubleStruckOne],LTensor[\[Gamma],\[Nu]],\[Gamma] . (l+r)+mc \[DoubleStruckOne],
LTensor[\[Gamma],\[Alpha]],\[DoubleStruckCapitalP]L],P1 P2 P3 P4 P12}
e2Op2={DiracMatrix[LTensor[\[Gamma],\[Alpha]],\[DoubleStruckCapitalP]L,-\[Gamma] . (l+q)+mc \[DoubleStruckOne],LTensor[\[Gamma],\[Nu]],-\[Gamma] . (l+q+r)+mc \[DoubleStruckOne],LTensor[\[Gamma],\[Nu]],-\[Gamma] . (l+q)+mc \[DoubleStruckOne],LTensor[\[Gamma],\[Mu]],(-\[Gamma] . l+mc \[DoubleStruckOne]),
LTensor[\[Gamma],\[Alpha]],\[DoubleStruckCapitalP]L],P1^2 P2 P4 P12}
e3Op2={DiracMatrix[LTensor[\[Gamma],\[Alpha]],\[DoubleStruckCapitalP]L,\[DoubleStruckOne] mc-\[Gamma] . l,LTensor[\[Gamma],\[Mu]],\[DoubleStruckOne] mc-\[Gamma] . l-\[Gamma] . q,LTensor[\[Gamma],\[Nu]],\[DoubleStruckOne] mc-\[Gamma] . l-\[Gamma] . q-\[Gamma] . r,LTensor[\[Gamma],\[Nu]],\[DoubleStruckOne] mc-\[Gamma] . l-\[Gamma] . q,
LTensor[\[Gamma],\[Alpha]],\[DoubleStruckCapitalP]L],P1^2 P2 P4 P12}
