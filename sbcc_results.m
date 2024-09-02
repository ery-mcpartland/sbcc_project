(* Created with the Wolfram Language : www.wolfram.com *)
{{"Gamma1", "Gamma2", "1 loop result", "1 loop result in CForm", 
  "1 over epsilon pole", "1 over epsilon pole in CForm"}, 
 {DiracMatrix[LTensor[DiracG, \[Nu]], DiracPL], 
  DiracMatrix[LTensor[DiracG, \[Nu]], DiracPL], 
  (E^(Eps*EulerGamma)*DiracMatrix[sbar, LTensor[DiracG, \[Nu]], DiracPL, b]*
    (24*mc^2 + 6*DiscB[LDot[q, q], mc, mc]*(2*mc^2 + LDot[q, q]) + 
     LDot[q, q]*(4 + 6/Eps + 6*Log[Mu^2/mc^2]))*
    (LTensor[q, \[Mu]]*LTensor[q, \[Nu]] - 
     q^2*LTensor[MetricG, \[Mu], \[Nu]]))/(9*(4*Pi)^Eps*LDot[q, q]), 
  (Power(E,Eps*EulerGamma)*DiracMatrix(sbar,LTensor(DiracG,\[Nu]),DiracPL,
       b)*(24*Power(mc,2) + 6*DiscB(LDot(q,q),mc,mc)*
         (2*Power(mc,2) + LDot(q,q)) + 
        LDot(q,q)*(4 + 6/Eps + 6*Log(Power(Mu,2)/Power(mc,2))))*
      (LTensor(q,\[Mu])*LTensor(q,\[Nu]) - 
        Power(q,2)*LTensor(MetricG,\[Mu],\[Nu])))/
    (9.*Power(4*Pi,Eps)*LDot(q,q)), 2/3, 0.6666666666666666}, 
 {DiracMatrix[LTensor[DiracG, \[Nu]], DiracPL], LTensor[DiracG, \[Nu]], 
  -1/9*(4^(1 - Eps)*E^(Eps*EulerGamma)*DiracMatrix[sbar, 
      LTensor[DiracG, \[Nu]], DiracPL, b]*
     (12*mc^2 + 3*DiscB[LDot[q, q], mc, mc]*(2*mc^2 + LDot[q, q]) + 
      LDot[q, q]*(5 + 3/Eps + 3*Log[Mu^2/mc^2]))*
     (LTensor[q, \[Mu]]*LTensor[q, \[Nu]] - 
      q^2*LTensor[MetricG, \[Mu], \[Nu]]))/(Pi^Eps*LDot[q, q]), 
  -0.1111111111111111*(Power(4,1 - Eps)*Power(E,Eps*EulerGamma)*
       DiracMatrix(sbar,LTensor(DiracG,\[Nu]),DiracPL,b)*
       (12*Power(mc,2) + 3*DiscB(LDot(q,q),mc,mc)*
          (2*Power(mc,2) + LDot(q,q)) + 
         LDot(q,q)*(5 + 3/Eps + 3*Log(Power(Mu,2)/Power(mc,2))))*
       (LTensor(q,\[Mu])*LTensor(q,\[Nu]) - 
         Power(q,2)*LTensor(MetricG,\[Mu],\[Nu])))/(Power(Pi,Eps)*LDot(q,q)), 
  -4/3, -1.3333333333333333}}
