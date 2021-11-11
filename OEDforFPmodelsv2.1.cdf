(* Content-type: application/vnd.wolfram.cdf.text *)

(*** Wolfram CDF File ***)
(* http://www.wolfram.com/cdf *)

(* CreatedBy='Mathematica 12.3' *)

(***************************************************************************)
(*                                                                         *)
(*                                                                         *)
(*  Under the Wolfram FreeCDF terms of use, this file and its content are  *)
(*  bound by the Creative Commons BY-SA Attribution-ShareAlike license.    *)
(*                                                                         *)
(*        For additional information concerning CDF licensing, see:        *)
(*                                                                         *)
(*         www.wolfram.com/cdf/adopting-cdf/licensing-options.html         *)
(*                                                                         *)
(*                                                                         *)
(***************************************************************************)

(*CacheID: 234*)
(* Internal cache information:
NotebookFileLineBreakTest
NotebookFileLineBreakTest
NotebookDataPosition[      1088,         20]
NotebookDataLength[    249906,       4467]
NotebookOptionsPosition[    249827,       4454]
NotebookOutlinePosition[    250370,       4475]
CellTagsIndexPosition[    250327,       4472]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{

Cell[CellGroupData[{
Cell[TextData[{
 "D and I-optimal designs for FP models \n",
 StyleBox["(Casero-Alonso, L\[OAcute]pez-Fidalgo and Wong)",
  FontSize->24]
}], "Title",ExpressionUUID->"23ba7f77-71fb-419c-b149-2c0195681a2c"],

Cell[TextData[{
 StyleBox["The box below displays D and I-optimal designs for the FP models \
up to order 3 for a known design space [\[Epsilon], a] and the corresponding \
sensitivy plot.\nThese are the options:\na) D or I-optimality criteria.\nb) \
Order of the FP model, from 1 up to 3.\nc) \[OpenCurlyDoubleQuote]Powers\
\[CloseCurlyDoubleQuote] of the model, p for FP1; p and q for FP2; p,q and r \
for FP3. From the list of values ",
  FontSize->16],
 StyleBox["{\[Minus]2,\[Minus]1,\[Minus]0.5, 0, 0.5, 1, 2, 3} (see Royston \
and Altman, 1994)", "DisplayFormula",
  FontSize->16],
 StyleBox[".\nd) For D-optimality, the upper extreme of the design space, a \
\[Element] [1,10]. Designs for other values of a can be obtained easily.",
  FontSize->16]
}], "Text",
 FontSize->18,ExpressionUUID->"b12bb09b-dbd7-4916-9eaf-362a4109e7a6"],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`Criteria$$ = "D-opt", $CellContext`FP$$ = 1,
     Typeset`show$$ = True, Typeset`bookmarkList$$ = {}, 
    Typeset`bookmarkMode$$ = "Menu", Typeset`animator$$, Typeset`animvar$$ = 
    1, Typeset`name$$ = "\"untitled\"", Typeset`specs$$ = {{
      Hold[$CellContext`Criteria$$], {"D-opt", "I-opt"}}, {{
       Hold[$CellContext`FP$$], 1}, {1, 2, 3}}}, Typeset`size$$ = {
    413., {212., 217.}}, Typeset`update$$ = 0, Typeset`initDone$$, 
    Typeset`skipInitDone$$ = True, $CellContext`Criteria$5078$$ = 
    False, $CellContext`FP$5079$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, 
      "Variables" :> {$CellContext`Criteria$$ = "D-opt", $CellContext`FP$$ = 
        1}, "ControllerVariables" :> {
        Hold[$CellContext`Criteria$$, $CellContext`Criteria$5078$$, False], 
        Hold[$CellContext`FP$$, $CellContext`FP$5079$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, 
      "Body" :> ($CellContext`\[Epsilon] = 0.0001; Which[
         And[$CellContext`Criteria$$ == "D-opt", $CellContext`FP$$ == 1], 
         Manipulate[
         Which[$CellContext`p != 
            0, $CellContext`f = {
             1, $CellContext`x^$CellContext`p}, $CellContext`p == 
            0, $CellContext`f = {1, 
              Log[$CellContext`x]}]; $CellContext`m = 
           Outer[Times, $CellContext`f, $CellContext`f]; $CellContext`iinfo = 
           Inverse[(
              ReplaceAll[$CellContext`m, $CellContext`x -> $CellContext`\
\[Epsilon]] + ReplaceAll[$CellContext`m, $CellContext`x -> $CellContext`a])/
             2]; $CellContext`cs = 
           Dot[$CellContext`f, $CellContext`iinfo, $CellContext`f] - 2; 
          Plot[$CellContext`cs, {$CellContext`x, $CellContext`\[Epsilon]/
             2, $CellContext`a}, PlotRange -> {All, 0}, 
            Frame -> {{None, None}, {None, True}}, FrameTicks -> All, 
            FrameLabel -> {{None, None}, {None, 
               Style["\!\(\*SubscriptBox[\(\[Xi]\), \(D\)]\):" MatrixForm[{{
                    N[
                    
                    Round[$CellContext`\[Epsilon], 
                    10^(-4)]], $CellContext`a}, {0.5, 0.5}}], FontSize -> 
                20]}}], {$CellContext`p, {
           3, 2, 1, 0.5, 0, -0.5, -1, -2}}, {$CellContext`a, 1, 10}], 
         And[$CellContext`Criteria$$ == "D-opt", $CellContext`FP$$ == 2], 
         Manipulate[
         If[$CellContext`p == $CellContext`q == 0, $CellContext`f = {1, 
               Log[$CellContext`x], Log[$CellContext`x]^2}; $CellContext`s = 
             Sqrt[$CellContext`\[Epsilon] $CellContext`a]]; If[
            
            Inequality[$CellContext`p, Equal, $CellContext`q, Unequal, 
             0], $CellContext`f = {
              1, $CellContext`x^$CellContext`p, $CellContext`x^$CellContext`p 
               Log[$CellContext`x]}; $CellContext`s = $CellContext`\[Epsilon] 
              Exp[($CellContext`a^$CellContext`p (Log[$CellContext`a] - 
                   Log[$CellContext`\[Epsilon]]))/($CellContext`a^$\
CellContext`p - $CellContext`\[Epsilon]^$CellContext`p) - 1/$CellContext`p]]; 
          If[$CellContext`p != $CellContext`q, $CellContext`f = {
              1, $CellContext`x^$CellContext`p, \
$CellContext`x^$CellContext`q}; $CellContext`s = \
(($CellContext`a^$CellContext`q - $CellContext`\[Epsilon]^$CellContext`q) \
($CellContext`p/(($CellContext`a^$CellContext`p - \
$CellContext`\[Epsilon]^$CellContext`p) $CellContext`q)))^(
               1/($CellContext`q - $CellContext`p))]; If[
            
            And[$CellContext`p == 
             0, $CellContext`p != $CellContext`q], $CellContext`f = {1, 
               
               Log[$CellContext`x], $CellContext`x^$CellContext`q}; \
$CellContext`s = (($CellContext`a^$CellContext`q - \
$CellContext`\[Epsilon]^$CellContext`q)/($CellContext`q (Log[$CellContext`a] - 
                Log[$CellContext`\[Epsilon]])))^(1/$CellContext`q)]; If[
            
            And[$CellContext`p != $CellContext`q, $CellContext`q == 
             0], $CellContext`f = {1, $CellContext`x^$CellContext`p, 
               
               Log[$CellContext`x]}; $CellContext`s = \
(($CellContext`a^$CellContext`p - \
$CellContext`\[Epsilon]^$CellContext`p)/($CellContext`p (Log[$CellContext`a] - 
                Log[$CellContext`\[Epsilon]])))^(
               1/$CellContext`p)]; $CellContext`m = 
           Outer[Times, $CellContext`f, $CellContext`f]; $CellContext`iinfo = 
           Inverse[(
              ReplaceAll[$CellContext`m, $CellContext`x -> $CellContext`\
\[Epsilon]] + ReplaceAll[$CellContext`m, $CellContext`x -> $CellContext`s] + 
              ReplaceAll[$CellContext`m, $CellContext`x -> $CellContext`a])/
             3]; $CellContext`cs = 
           Dot[$CellContext`f, $CellContext`iinfo, $CellContext`f] - 3; 
          Plot[$CellContext`cs, {$CellContext`x, $CellContext`\[Epsilon], \
$CellContext`a}, PlotRange -> {All, 0}, Frame -> {{None, None}, {None, True}},
             FrameTicks -> All, FrameLabel -> {{None, None}, {None, 
               Style["\!\(\*SubscriptBox[\(\[Xi]\), \(D\)]\):" MatrixForm[{{
                    N[
                    Round[$CellContext`\[Epsilon], 10^(-4)]], 
                    N[
                    Round[$CellContext`s, 10^(-4)]], $CellContext`a}, {0.3333,
                    0.3333, 0.3333}}], FontSize -> 20]}}], {{$CellContext`p, 
            0}, {3, 2, 1, 0.5, 0, -0.5, -1, -2}}, {$CellContext`q, {
           3, 2, 1, 0.5, 0, -0.5, -1, -2}}, {$CellContext`a, 1, 10}], 
         And[$CellContext`Criteria$$ == "D-opt", $CellContext`FP$$ == 3], 
         Manipulate[$CellContext`s1i = 0.05; $CellContext`s2i = 
           0.6; $CellContext`powers = 
           Sort[{$CellContext`p, $CellContext`q, $CellContext`r}]; \
$CellContext`pp = Part[$CellContext`powers, 1]; $CellContext`qq = 
           Part[$CellContext`powers, 2]; $CellContext`rr = 
           Part[$CellContext`powers, 3]; If[
            
            And[$CellContext`pp != $CellContext`qq != $CellContext`rr, \
$CellContext`pp != 0, $CellContext`qq != 0, $CellContext`rr != 
             0], $CellContext`f = {
              1, $CellContext`x^$CellContext`pp, \
$CellContext`x^$CellContext`qq, $CellContext`x^$CellContext`rr}; \
$CellContext`caso = "distintos"; 
            Which[$CellContext`rr <= 
              0.5, $CellContext`s1i = 0.0002; $CellContext`s2i = 
               0.002, $CellContext`qq >= 
              1, $CellContext`s1i = 0.05; $CellContext`s2i = 
               0.6, $CellContext`qq == 
              0.5, $CellContext`s1i = 0.001; $CellContext`s2i = 
               0.6, $CellContext`qq <= -0.5, $CellContext`s1i = 
               0.0002; $CellContext`s2i = 0.4]]; If[
            
            And[$CellContext`pp != $CellContext`qq, $CellContext`pp != \
$CellContext`rr, $CellContext`rr != $CellContext`qq, $CellContext`pp == 
             0], $CellContext`f = {1, 
               
               Log[$CellContext`x], $CellContext`x^$CellContext`qq, \
$CellContext`x^$CellContext`rr}; $CellContext`caso = "pp==0"; 
            Which[$CellContext`qq <= 
              0, $CellContext`s1i = 0.001; $CellContext`s2i = 0.6]]; If[
            
            And[$CellContext`pp != $CellContext`qq, $CellContext`pp != \
$CellContext`rr, $CellContext`rr != $CellContext`qq, $CellContext`qq == 
             0], $CellContext`f = {1, $CellContext`x^$CellContext`pp, 
               
               Log[$CellContext`x], $CellContext`x^$CellContext`rr}; \
$CellContext`caso = "qq==0"; 
            Which[$CellContext`pp > -2, $CellContext`s1i = 
               0.001; $CellContext`s2i = 
               0.6, $CellContext`pp <= -2, $CellContext`s1i = 
               0.0002; $CellContext`s2i = 0.04]]; If[
            
            And[$CellContext`pp != $CellContext`qq, $CellContext`pp != \
$CellContext`rr, $CellContext`rr != $CellContext`qq, $CellContext`rr == 
             0], $CellContext`f = {
              1, $CellContext`x^$CellContext`pp, \
$CellContext`x^$CellContext`qq, 
               Log[$CellContext`x]}; $CellContext`caso = "rr==0"; 
            Which[$CellContext`qq <= 
              0, $CellContext`s1i = 0.0002; $CellContext`s2i = 0.001]]; If[
            And[
             
             And[$CellContext`pp == $CellContext`qq, $CellContext`pp != \
$CellContext`rr], $CellContext`pp != 0, $CellContext`qq != 0, $CellContext`rr != 
             0], $CellContext`f = {
              1, $CellContext`x^$CellContext`pp, \
$CellContext`x^$CellContext`pp 
               Log[$CellContext`x], $CellContext`x^$CellContext`rr}; \
$CellContext`caso = "pp==qq"; 
            Which[$CellContext`pp <= -0.5, $CellContext`s1i = 
               0.0002; $CellContext`s2i = 0.00018]]; If[
            And[
             
             And[$CellContext`pp == $CellContext`rr, $CellContext`pp != \
$CellContext`qq], $CellContext`pp != 0, $CellContext`qq != 0, $CellContext`rr != 
             0], $CellContext`f = {
              1, $CellContext`x^$CellContext`pp, \
$CellContext`x^$CellContext`qq, $CellContext`x^$CellContext`pp 
               Log[$CellContext`x]}; $CellContext`caso = "pp==rr"; 
            Which[$CellContext`pp <= -0.5, $CellContext`s1i = 
               0.001; $CellContext`s2i = 0.2]]; If[
            And[
             
             And[$CellContext`qq == $CellContext`rr, $CellContext`qq != \
$CellContext`pp], $CellContext`pp != 0, $CellContext`qq != 0, $CellContext`rr != 
             0], $CellContext`f = {
              1, $CellContext`x^$CellContext`pp, \
$CellContext`x^$CellContext`qq, $CellContext`x^$CellContext`qq 
               Log[$CellContext`x]}; $CellContext`caso = "qq==rr"; 
            Which[$CellContext`pp <= -0.5, $CellContext`s1i = 
               0.0002; $CellContext`s2i = 0.001]]; If[
            
            And[$CellContext`pp == $CellContext`qq, $CellContext`rr == 
             0, $CellContext`pp != 
             0], $CellContext`f = {
              1, $CellContext`x^$CellContext`pp, \
$CellContext`x^$CellContext`pp Log[$CellContext`x], 
               Log[$CellContext`x]}; $CellContext`caso = "rr==0"; 
            Which[$CellContext`qq <= 
              0.5, $CellContext`s1i = 0.0002; $CellContext`s2i = 0.002]]; If[
            
            And[$CellContext`pp == $CellContext`rr, $CellContext`qq == 
             0, $CellContext`pp != 
             0], $CellContext`f = {1, $CellContext`x^$CellContext`pp, 
               Log[$CellContext`x], $CellContext`x^$CellContext`pp 
               Log[$CellContext`x]}; $CellContext`caso = "qq==0"; 
            Which[$CellContext`qq <= 
              0.5, $CellContext`s1i = 0.0002; $CellContext`s2i = 0.02]]; If[
            
            And[$CellContext`qq == $CellContext`rr, $CellContext`pp == 
             0, $CellContext`qq != 0], $CellContext`f = {1, 
               
               Log[$CellContext`x], $CellContext`x^$CellContext`qq, \
$CellContext`x^$CellContext`qq Log[$CellContext`x]}; $CellContext`caso = 
             "pp==0"; Which[$CellContext`qq <= 
              0.5, $CellContext`s1i = 0.0002; $CellContext`s2i = 0.02]]; If[
            
            And[$CellContext`pp == $CellContext`qq, $CellContext`pp == 
             0, $CellContext`rr != 0], $CellContext`f = {1, 
               Log[$CellContext`x], 
               Log[$CellContext`x]^2, $CellContext`x^$CellContext`rr}; \
$CellContext`caso = "pp==qq==0"; 
            Which[$CellContext`pp <= 
              3, $CellContext`s1i = 0.0002; $CellContext`s2i = 0.02]]; If[
            
            And[$CellContext`pp == $CellContext`rr, $CellContext`pp == 
             0, $CellContext`qq != 0], $CellContext`f = {1, 
               Log[$CellContext`x], $CellContext`x^$CellContext`qq, 
               Log[$CellContext`x]^2}; $CellContext`caso = "pp==rr==0"; 
            Which[$CellContext`pp <= 
              3, $CellContext`s1i = 0.0002; $CellContext`s2i = 0.02]]; If[
            
            And[$CellContext`qq == $CellContext`rr, $CellContext`qq == 
             0, $CellContext`pp != 
             0], $CellContext`f = {1, $CellContext`x^$CellContext`pp, 
               Log[$CellContext`x], Log[$CellContext`x]^2}; $CellContext`caso = 
             "qq==rr==0"; 
            Which[$CellContext`pp <= 
              3, $CellContext`s1i = 0.0002; $CellContext`s2i = 0.02]]; If[
            
            And[$CellContext`pp == $CellContext`qq == $CellContext`rr, \
$CellContext`pp != 
             0], $CellContext`f = {
              1, $CellContext`x^$CellContext`pp, \
$CellContext`x^$CellContext`pp 
               Log[$CellContext`x], $CellContext`x^$CellContext`pp 
               Log[$CellContext`x]^2}; 
            Which[$CellContext`pp == -2, $CellContext`s1i = 
               0.00012; $CellContext`s2i = 
               0.0002, $CellContext`pp <= -0.5, $CellContext`s1i = 
               0.0002; $CellContext`s2i = 0.002]; $CellContext`caso = 
             "pp=qq=rr"]; If[
            
            And[$CellContext`pp == 0, $CellContext`qq == 0, $CellContext`rr == 
             0], $CellContext`f = {1, 
               Log[$CellContext`x], Log[$CellContext`x]^2, 
               Log[$CellContext`x]^3}; 
            Which[$CellContext`pp <= 
              0, $CellContext`s1i = 0.0002; $CellContext`s2i = 
               0.002]; $CellContext`caso = "pp=qq=rr==0"]; $CellContext`m = 
           Outer[Times, $CellContext`f, $CellContext`f]; $CellContext`iinfo = 
           Inverse[(
              ReplaceAll[$CellContext`m, $CellContext`x -> $CellContext`\
\[Epsilon]] + ReplaceAll[$CellContext`m, $CellContext`x -> $CellContext`s1] + 
              ReplaceAll[$CellContext`m, $CellContext`x -> $CellContext`s2] + 
              ReplaceAll[$CellContext`m, $CellContext`x -> 1])/
             4]; $CellContext`cs = 
           Dot[$CellContext`f, $CellContext`iinfo, $CellContext`f] - 
            4; $CellContext`Dc1 = ReplaceAll[
             
             D[$CellContext`cs, $CellContext`x], $CellContext`x -> \
$CellContext`s1]; $CellContext`Dc2 = ReplaceAll[
             
             D[$CellContext`cs, $CellContext`x], $CellContext`x -> \
$CellContext`s2]; $CellContext`Sol = FindRoot[{
              
              And[$CellContext`Dc1 == 0, $CellContext`Dc2 == 
               0]}, {{$CellContext`s1, $CellContext`s1i, $CellContext`\
\[Epsilon], 1}, {$CellContext`s2, $CellContext`s2i, $CellContext`\[Epsilon], 
               1}}, WorkingPrecision -> MachinePrecision]; $CellContext`csS = 
           ReplaceAll[$CellContext`cs, $CellContext`Sol]; $CellContext`iinfoa = 
           ReplaceAll[
             
             Inverse[(
               ReplaceAll[$CellContext`m, $CellContext`x -> $CellContext`\
\[Epsilon] $CellContext`a] + 
               ReplaceAll[$CellContext`m, $CellContext`x -> $CellContext`s1 \
$CellContext`a] + 
               ReplaceAll[$CellContext`m, $CellContext`x -> $CellContext`s2 \
$CellContext`a] + 
               ReplaceAll[$CellContext`m, $CellContext`x -> 
                 1 $CellContext`a])/4], $CellContext`Sol]; $CellContext`csSa = 
           Dot[$CellContext`f, $CellContext`iinfoa, $CellContext`f] - 4; 
          Plot[$CellContext`csSa, {$CellContext`x, $CellContext`\[Epsilon] \
$CellContext`a, 1 $CellContext`a}, PlotRange -> {All, 0}, 
            Frame -> {{None, None}, {None, True}}, FrameTicks -> All, 
            FrameLabel -> {{None, None}, {None, 
               Style["\!\(\*SubscriptBox[\(\[Xi]\), \(D\)]\):" MatrixForm[{{
                    N[
                    Round[$CellContext`\[Epsilon] $CellContext`a, 10^(-4)]], 
                    N[
                    Round[
                    Min[
                    
                    ReplaceAll[$CellContext`a $CellContext`s1, \
$CellContext`Sol], 
                    
                    ReplaceAll[$CellContext`a $CellContext`s2, \
$CellContext`Sol]], 10^(-4)]], 
                    N[
                    Round[
                    Max[
                    
                    ReplaceAll[$CellContext`a $CellContext`s1, \
$CellContext`Sol], 
                    
                    ReplaceAll[$CellContext`a $CellContext`s2, \
$CellContext`Sol]], 10^(-4)]], $CellContext`a}, {0.25, 0.25, 0.25, 0.25}}], 
                FontSize -> 20]}}], {{$CellContext`p, 2}, {
           3, 2, 1, 0.5, 0, -0.5, -1, -2}}, {{$CellContext`q, 0}, {
           3, 2, 1, 0.5, 0, -0.5, -1, -2}}, {$CellContext`r, {
           3, 2, 1, 0.5, 0, -0.5, -1, -2}}, {$CellContext`a, 1, 10}], 
         And[$CellContext`Criteria$$ == "I-opt", $CellContext`FP$$ == 1], 
         Manipulate[
         Which[$CellContext`p != 
            0, $CellContext`f = {
             1, $CellContext`x^$CellContext`p}, $CellContext`p == 
            0, $CellContext`f = {1, 
              Log[$CellContext`x]}]; $CellContext`m = 
           Outer[Times, $CellContext`f, $CellContext`f]; $CellContext`iinfo = 
           Inverse[ReplaceAll[$CellContext`m, $CellContext`x -> $CellContext`\
\[Epsilon]] $CellContext`w + 
             ReplaceAll[$CellContext`m, $CellContext`x -> 1] (
               1 - $CellContext`w)]; 
          Which[$CellContext`\[Mu] == "U[\[Epsilon],1]", $CellContext`A = 
            Integrate[Dot[
                Transpose[{$CellContext`f}], {$CellContext`f}] 
              0.1, {$CellContext`x, $CellContext`\[Epsilon], 1}, Assumptions -> {
                Element[{$CellContext`x, $CellContext`\[Epsilon]}, Reals], 
                0 < $CellContext`\[Epsilon] < 1}], $CellContext`\[Mu] == 
            "U[1,1.2]", $CellContext`A = Integrate[Dot[
                Transpose[{$CellContext`f}], {$CellContext`f}] 
              0.1, {$CellContext`x, 1, 1.2}, Assumptions -> {
                Element[{$CellContext`x, $CellContext`\[Epsilon]}, Reals], 
                0 < $CellContext`\[Epsilon] < 1}], $CellContext`\[Mu] == 
            "incr[1,1.2]", $CellContext`A = Integrate[Dot[
                
                Transpose[{$CellContext`f}], {$CellContext`f}] \
($CellContext`x - 1), {$CellContext`x, 1, 1.2}, Assumptions -> {
                Element[{$CellContext`x, $CellContext`\[Epsilon]}, Reals], 
                0 < $CellContext`\[Epsilon] < 1}], $CellContext`\[Mu] == 
            "decr[1,1.2]", $CellContext`A = Integrate[Dot[
                Transpose[{$CellContext`f}], {$CellContext`f}] (
               1.2 - $CellContext`x), {$CellContext`x, 1, 1.2}, Assumptions -> {
                Element[{$CellContext`x, $CellContext`\[Epsilon]}, Reals], 
                0 < $CellContext`\[Epsilon] < 1}]]; $CellContext`II = 
           Dot[$CellContext`f, $CellContext`iinfo, $CellContext`A, \
$CellContext`iinfo, $CellContext`f]; $CellContext`II\[Xi] = Tr[
             Dot[$CellContext`A, $CellContext`iinfo]]; $CellContext`c = 
           Simplify[$CellContext`II - $CellContext`II\[Xi]]; \
$CellContext`Sols = ($CellContext`SolsMatrix1 = {{
              "U[\[Epsilon],1]", -2, {$CellContext`w -> 
                0.005741121615111369}}, {
              "U[\[Epsilon],1]", -1, {$CellContext`w -> 
                0.009900990099009813}}, {
              "U[\[Epsilon],1]", -0.5, {$CellContext`w -> 
                0.024865726253000313`}}, {
              "U[\[Epsilon],1]", 0, {$CellContext`w -> 0.145689084344619}}, {
              "U[\[Epsilon],1]", 
               0.5, {$CellContext`w -> 0.36907418099999545`}}, {
              "U[\[Epsilon],1]", 1, {$CellContext`w -> 0.499999999999998}}, {
              "U[\[Epsilon],1]", 2, {$CellContext`w -> 0.6201820215896087}}, {
              "U[\[Epsilon],1]", 3, {$CellContext`w -> 0.67960582243331}}, {
              "U[1,1.2]", -2, {$CellContext`w -> 1.96865000723899*^-11}}, {
              "U[1,1.2]", -1, {$CellContext`w -> 0.000010059526199726073`}}, {
              "U[1,1.2]", -0.5, {$CellContext`w -> 0.0005248793379999486}}, {
              "U[1,1.2]", 0, {$CellContext`w -> 0.011437295425347204`}}, {
              "U[1,1.2]", 0.5, {$CellContext`w -> 0.0509155867913333}}, {
              "U[1,1.2]", 1, {$CellContext`w -> 0.09488991990886823}}, {
              "U[1,1.2]", 2, {$CellContext`w -> 0.169111413305735}}, {
              "U[1,1.2]", 3, {$CellContext`w -> 0.22810381900484575`}}, {
              "incr[1,1.2]", -2, {$CellContext`w -> 
                2.742300207522594*^-11}}, {
              "incr[1,1.2]", -1, {$CellContext`w -> 
                0.000012207561745669319`}}, {
              "incr[1,1.2]", -0.5, {$CellContext`w -> 
                0.0006382588365821759}}, {
              "incr[1,1.2]", 0, {$CellContext`w -> 0.013864112810737638`}}, {
              "incr[1,1.2]", 0.5, {$CellContext`w -> 0.06065597982020489}}, {
              "incr[1,1.2]", 1, {$CellContext`w -> 0.110863518615105}}, {
              "incr[1,1.2]", 2, {$CellContext`w -> 0.19135931403779724`}}, {
              "incr[1,1.2]", 3, {$CellContext`w -> 0.2518383523155288}}, {
              "decr[1,1.2]", -2, {$CellContext`w -> 
                1.1950073055491665`*^-11}}, {
              "decr[1,1.2]", -1, {$CellContext`w -> 7.30497712465546*^-6}}, {
              "decr[1,1.2]", -0.5, {$CellContext`w -> 
                0.000378806725251808}}, {
              "decr[1,1.2]", 0, {$CellContext`w -> 0.008251092860384923}}, {
              "decr[1,1.2]", 0.5, {$CellContext`w -> 0.03734377708812875}}, {
              "decr[1,1.2]", 1, {$CellContext`w -> 0.0710455684221126}}, {
              "decr[1,1.2]", 2, {$CellContext`w -> 0.13138968737588927`}}, {
              "decr[1,1.2]", 3, {$CellContext`w -> 0.18294949902705487`}}}); 
          Do[
            If[
             And[
             Part[$CellContext`SolsMatrix1, $CellContext`i, 
                1] == $CellContext`\[Mu], 
              Part[$CellContext`SolsMatrix1, $CellContext`i, 
                2] == $CellContext`p], $CellContext`Sols = 
             Part[$CellContext`SolsMatrix1, $CellContext`i, 
               3]], {$CellContext`i, 1, 32}]; $CellContext`c12opt = 
           ReplaceAll[$CellContext`c, $CellContext`Sols]; Chop[{
             
             ReplaceAll[$CellContext`c12opt, $CellContext`x -> $CellContext`\
\[Epsilon]], 
             
             ReplaceAll[$CellContext`c12opt, $CellContext`x -> 
              1]}]; $CellContext`SolRound = N[
             Round[{
               ReplaceAll[$CellContext`w, $CellContext`Sols], 1 - 
               ReplaceAll[$CellContext`w, $CellContext`Sols]}, 10^(-4)]]; 
          Plot[$CellContext`c12opt, {$CellContext`x, $CellContext`\[Epsilon], 
             1}, PlotRange -> {All, 0}, Frame -> {{None, None}, {None, True}},
             FrameTicks -> All, FrameLabel -> {{None, None}, {None, 
               Style["\!\(\*SubscriptBox[\(\[Xi]\), \(I\)]\):" MatrixForm[{{
                    N[
                    Round[$CellContext`\[Epsilon], 10^(-4)]], 1}, {
                    Part[$CellContext`SolRound, 1], 
                    Part[$CellContext`SolRound, 2]}}], FontSize -> 
                20]}}], {$CellContext`p, {
           3, 2, 1, 0.5, 0, -0.5, -1, -2}}, {$CellContext`\[Mu], {
           "U[\[Epsilon],1]", "U[1,1.2]", "incr[1,1.2]", "decr[1,1.2]"}}], 
         And[$CellContext`Criteria$$ == "I-opt", $CellContext`FP$$ == 2], 
         Manipulate[If[
            
            And[$CellContext`p != $CellContext`q, $CellContext`p != 
             0, $CellContext`q != 
             0], $CellContext`f = {
              1, $CellContext`x^$CellContext`p, \
$CellContext`x^$CellContext`q}; $CellContext`caso = "distintos"]; If[
            
            And[$CellContext`p != $CellContext`q, $CellContext`p == 
             0], $CellContext`f = {1, 
               
               Log[$CellContext`x], $CellContext`x^$CellContext`q}; \
$CellContext`caso = "p==0"]; If[
            
            And[$CellContext`p != $CellContext`q, $CellContext`q == 
             0], $CellContext`f = {1, $CellContext`x^$CellContext`p, 
               Log[$CellContext`x]}; $CellContext`caso = "p==0"]; If[
            
            And[$CellContext`p == $CellContext`q, $CellContext`p != 
             0], $CellContext`f = {
              1, $CellContext`x^$CellContext`p, $CellContext`x^$CellContext`p 
               Log[$CellContext`x]}; $CellContext`caso = "iguales"]; If[
            
            And[$CellContext`p == $CellContext`q, $CellContext`p == 
             0], $CellContext`f = {1, 
               Log[$CellContext`x], Log[$CellContext`x]^2}; $CellContext`caso = 
             "iguales a 0"]; $CellContext`m = 
           Outer[Times, $CellContext`f, $CellContext`f]; $CellContext`iinfo = 
           Inverse[ReplaceAll[$CellContext`m, $CellContext`x -> $CellContext`\
\[Epsilon]] $CellContext`w1 + 
             ReplaceAll[$CellContext`m, $CellContext`x -> $CellContext`s] \
$CellContext`w2 + 
             ReplaceAll[$CellContext`m, $CellContext`x -> 1] (
               1 - ($CellContext`w1 + $CellContext`w2))]; 
          Which[$CellContext`\[Mu] == "U[\[Epsilon],1]", $CellContext`A = 
            Integrate[Dot[
                Transpose[{$CellContext`f}], {$CellContext`f}] (1/(
               1 - $CellContext`\[Epsilon])), {$CellContext`x, $CellContext`\
\[Epsilon], 1}, Assumptions -> {
                Element[{$CellContext`x, $CellContext`\[Epsilon]}, Reals], 
                0 < $CellContext`\[Epsilon] < 1}], $CellContext`\[Mu] == 
            "U[1,1.2]", $CellContext`A = Integrate[Dot[
                Transpose[{$CellContext`f}], {$CellContext`f}] (1/
               0.2), {$CellContext`x, 1, 1.2}, Assumptions -> {
                Element[{$CellContext`x, $CellContext`\[Epsilon]}, Reals], 
                0 < $CellContext`\[Epsilon] < 1}], $CellContext`\[Mu] == 
            "incr[1,1.2]", $CellContext`A = Integrate[Dot[
                
                Transpose[{$CellContext`f}], {$CellContext`f}] \
($CellContext`x - 1), {$CellContext`x, 1, 1.2}, Assumptions -> {
                Element[{$CellContext`x, $CellContext`\[Epsilon]}, Reals], 
                0 < $CellContext`\[Epsilon] < 1}], $CellContext`\[Mu] == 
            "decr[1,1.2]", $CellContext`A = Integrate[Dot[
                Transpose[{$CellContext`f}], {$CellContext`f}] (
               1.2 - $CellContext`x), {$CellContext`x, 1, 1.2}, Assumptions -> {
                Element[{$CellContext`x, $CellContext`\[Epsilon]}, Reals], 
                0 < $CellContext`\[Epsilon] < 1}]]; $CellContext`II = Simplify[
             
             Dot[$CellContext`f, $CellContext`iinfo, $CellContext`A, \
$CellContext`iinfo, $CellContext`f], Assumptions -> {
               
               Element[{$CellContext`x, $CellContext`p, $CellContext`q, \
$CellContext`\[Epsilon], $CellContext`s, $CellContext`w1, $CellContext`w2}, 
                Reals], 0 < $CellContext`\[Epsilon] < 
               1, $CellContext`\[Epsilon] < $CellContext`x < 1, 
               0 <= $CellContext`w1 <= 1, 0 <= $CellContext`w2 <= 
               1}]; $CellContext`II\[Xi] = Simplify[
             Tr[
              Dot[$CellContext`A, $CellContext`iinfo]], Assumptions -> {
               
               Element[{$CellContext`x, $CellContext`p, $CellContext`\
\[Epsilon], $CellContext`w}, Reals], 0 < $CellContext`\[Epsilon] < 
               1, $CellContext`\[Epsilon] < $CellContext`x < 1, 
               0 <= $CellContext`w <= 
               1}]; $CellContext`c = $CellContext`II - $CellContext`II\[Xi]; \
$CellContext`SolsMatrix2 = 
           Transpose[{{
              "U[\[Epsilon],1]", "U[\[Epsilon],1]", "U[\[Epsilon],1]", 
               "U[\[Epsilon],1]", "U[\[Epsilon],1]", "U[\[Epsilon],1]", 
               "U[\[Epsilon],1]", "U[\[Epsilon],1]", "U[\[Epsilon],1]", 
               "U[\[Epsilon],1]", "U[\[Epsilon],1]", "U[\[Epsilon],1]", 
               "U[\[Epsilon],1]", "U[\[Epsilon],1]", "U[\[Epsilon],1]", 
               "U[\[Epsilon],1]", "U[\[Epsilon],1]", "U[\[Epsilon],1]", 
               "U[\[Epsilon],1]", "U[\[Epsilon],1]", "U[\[Epsilon],1]", 
               "U[\[Epsilon],1]", "U[\[Epsilon],1]", "U[\[Epsilon],1]", 
               "U[\[Epsilon],1]", "U[\[Epsilon],1]", "U[\[Epsilon],1]", 
               "U[\[Epsilon],1]", "U[\[Epsilon],1]", "U[\[Epsilon],1]", 
               "U[\[Epsilon],1]", "U[\[Epsilon],1]", "U[\[Epsilon],1]", 
               "U[\[Epsilon],1]", "U[\[Epsilon],1]", "U[\[Epsilon],1]", 
               "U[\[Epsilon],1]", "U[\[Epsilon],1]", "U[\[Epsilon],1]", 
               "U[\[Epsilon],1]", "U[\[Epsilon],1]", "U[\[Epsilon],1]", 
               "U[\[Epsilon],1]", "U[\[Epsilon],1]", "U[\[Epsilon],1]", 
               "U[\[Epsilon],1]", "U[\[Epsilon],1]", "U[\[Epsilon],1]", 
               "U[\[Epsilon],1]", "U[\[Epsilon],1]", "U[\[Epsilon],1]", 
               "U[\[Epsilon],1]", "U[\[Epsilon],1]", "U[\[Epsilon],1]", 
               "U[\[Epsilon],1]", "U[\[Epsilon],1]", "U[1,1.2]", "U[1,1.2]", 
               "U[1,1.2]", "U[1,1.2]", "U[1,1.2]", "U[1,1.2]", "U[1,1.2]", 
               "U[1,1.2]", "U[1,1.2]", "U[1,1.2]", "U[1,1.2]", "U[1,1.2]", 
               "U[1,1.2]", "U[1,1.2]", "U[1,1.2]", "U[1,1.2]", "U[1,1.2]", 
               "U[1,1.2]", "U[1,1.2]", "U[1,1.2]", "U[1,1.2]", "U[1,1.2]", 
               "U[1,1.2]", "U[1,1.2]", "U[1,1.2]", "U[1,1.2]", "U[1,1.2]", 
               "U[1,1.2]", "U[1,1.2]", "U[1,1.2]", "U[1,1.2]", "U[1,1.2]", 
               "U[1,1.2]", "U[1,1.2]", "U[1,1.2]", "U[1,1.2]", "U[1,1.2]", 
               "U[1,1.2]", "U[1,1.2]", "U[1,1.2]", "U[1,1.2]", "U[1,1.2]", 
               "U[1,1.2]", "U[1,1.2]", "U[1,1.2]", "U[1,1.2]", "U[1,1.2]", 
               "U[1,1.2]", "U[1,1.2]", "U[1,1.2]", "U[1,1.2]", "U[1,1.2]", 
               "U[1,1.2]", "U[1,1.2]", "U[1,1.2]", "U[1,1.2]", "decr[1,1.2]", 
               "decr[1,1.2]", "decr[1,1.2]", "decr[1,1.2]", "decr[1,1.2]", 
               "decr[1,1.2]", "decr[1,1.2]", "decr[1,1.2]", "decr[1,1.2]", 
               "decr[1,1.2]", "decr[1,1.2]", "decr[1,1.2]", "decr[1,1.2]", 
               "decr[1,1.2]", "decr[1,1.2]", "decr[1,1.2]", "decr[1,1.2]", 
               "decr[1,1.2]", "decr[1,1.2]", "decr[1,1.2]", "decr[1,1.2]", 
               "decr[1,1.2]", "decr[1,1.2]", "decr[1,1.2]", "decr[1,1.2]", 
               "decr[1,1.2]", "decr[1,1.2]", "decr[1,1.2]", "decr[1,1.2]", 
               "decr[1,1.2]", "decr[1,1.2]", "decr[1,1.2]", "decr[1,1.2]", 
               "decr[1,1.2]", "decr[1,1.2]", "decr[1,1.2]", "decr[1,1.2]", 
               "decr[1,1.2]", "decr[1,1.2]", "decr[1,1.2]", "decr[1,1.2]", 
               "decr[1,1.2]", "decr[1,1.2]", "decr[1,1.2]", "decr[1,1.2]", 
               "decr[1,1.2]", "decr[1,1.2]", "decr[1,1.2]", "decr[1,1.2]", 
               "decr[1,1.2]", "decr[1,1.2]", "decr[1,1.2]", "decr[1,1.2]", 
               "decr[1,1.2]", "decr[1,1.2]", "decr[1,1.2]", "incr[1,1.2]", 
               "incr[1,1.2]", "incr[1,1.2]", "incr[1,1.2]", "incr[1,1.2]", 
               "incr[1,1.2]", "incr[1,1.2]", "incr[1,1.2]", "incr[1,1.2]", 
               "incr[1,1.2]", "incr[1,1.2]", "incr[1,1.2]", "incr[1,1.2]", 
               "incr[1,1.2]", "incr[1,1.2]", "incr[1,1.2]", "incr[1,1.2]", 
               "incr[1,1.2]", "incr[1,1.2]", "incr[1,1.2]", "incr[1,1.2]", 
               "incr[1,1.2]", "incr[1,1.2]", "incr[1,1.2]", "incr[1,1.2]", 
               "incr[1,1.2]", "incr[1,1.2]", "incr[1,1.2]", "incr[1,1.2]", 
               "incr[1,1.2]", "incr[1,1.2]", "incr[1,1.2]", "incr[1,1.2]", 
               "incr[1,1.2]", "incr[1,1.2]", "incr[1,1.2]", "incr[1,1.2]", 
               "incr[1,1.2]", "incr[1,1.2]", "incr[1,1.2]", "incr[1,1.2]", 
               "incr[1,1.2]", "incr[1,1.2]", "incr[1,1.2]", "incr[1,1.2]", 
               "incr[1,1.2]", "incr[1,1.2]", "incr[1,1.2]", "incr[1,1.2]", 
               "incr[1,1.2]", "incr[1,1.2]", "incr[1,1.2]", "incr[1,1.2]", 
               "incr[1,1.2]", "incr[1,1.2]", "incr[1,1.2]", "U[\[Epsilon],1]",
                "U[\[Epsilon],1]", "U[\[Epsilon],1]", "U[\[Epsilon],1]", 
               "U[\[Epsilon],1]", "U[\[Epsilon],1]", "U[\[Epsilon],1]", 
               "U[\[Epsilon],1]", "U[1,1.2]", "U[1,1.2]", "U[1,1.2]", 
               "U[1,1.2]", "U[1,1.2]", "U[1,1.2]", "U[1,1.2]", "U[1,1.2]", 
               "incr[1,1.2]", "incr[1,1.2]", "incr[1,1.2]", "incr[1,1.2]", 
               "incr[1,1.2]", "incr[1,1.2]", "incr[1,1.2]", "incr[1,1.2]", 
               "decr[1,1.2]", "decr[1,1.2]", "decr[1,1.2]", "decr[1,1.2]", 
               "decr[1,1.2]", "decr[1,1.2]", "decr[1,1.2]", 
               "decr[1,1.2]"}, {-2, -2, -2, -2, -2, -2, -2, -2, -1, -1, -1, \
-1, -1, -1, -1, -1, -0.5, -0.5, -0.5, -0.5, -0.5, -0.5, -0.5, -0.5, 0, 0, 0, 
               0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 
               3, 3, 3, 3, 3, 3, 3, 
               3, -2, -2, -2, -2, -2, -2, -2, -2, -1, -1, -1, -1, -1, -1, -1, \
-1, -0.5, -0.5, -0.5, -0.5, -0.5, -0.5, -0.5, -0.5, 0, 0, 0, 0, 0, 0, 0, 0, 1,
                1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 3, 3, 3, 3, 3, 3,
                3, 3, -2, -2, -2, -2, -2, -2, -2, -2, -1, -1, -1, -1, -1, -1, \
-1, -1, -0.5, -0.5, -0.5, -0.5, -0.5, -0.5, -0.5, -0.5, 0, 0, 0, 0, 0, 0, 0, 
               0, 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 3, 3, 3, 3, 
               3, 3, 3, 
               3, -2, -2, -2, -2, -2, -2, -2, -2, -1, -1, -1, -1, -1, -1, -1, \
-1, -0.5, -0.5, -0.5, -0.5, -0.5, -0.5, -0.5, -0.5, 0, 0, 0, 0, 0, 0, 0, 0, 1,
                1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 3, 3, 3, 3, 3, 3,
                3, 3, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 
               0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 
               0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5}, {-2, -1, -0.5, 0,
                0.5, 1, 2, 3, -2, -1, -0.5, 0, 0.5, 1, 2, 3, -2, -1, -0.5, 0, 
               0.5, 1, 2, 3, -2, -1, -0.5, 0, 0.5, 1, 2, 3, -2, -1, -0.5, 0, 
               0.5, 1, 2, 3, -2, -1, -0.5, 0, 0.5, 1, 2, 3, -2, -1, -0.5, 0, 
               0.5, 1, 2, 3, -2, -1, -0.5, 0, 0.5, 1, 2, 3, -2, -1, -0.5, 0, 
               0.5, 1, 2, 3, -2, -1, -0.5, 0, 0.5, 1, 2, 3, -2, -1, -0.5, 0, 
               0.5, 1, 2, 3, -2, -1, -0.5, 0, 0.5, 1, 2, 3, -2, -1, -0.5, 0, 
               0.5, 1, 2, 3, -2, -1, -0.5, 0, 0.5, 1, 2, 3, -2, -1, -0.5, 0, 
               0.5, 1, 2, 3, -2, -1, -0.5, 0, 0.5, 1, 2, 3, -2, -1, -0.5, 0, 
               0.5, 1, 2, 3, -2, -1, -0.5, 0, 0.5, 1, 2, 3, -2, -1, -0.5, 0, 
               0.5, 1, 2, 3, -2, -1, -0.5, 0, 0.5, 1, 2, 3, -2, -1, -0.5, 0, 
               0.5, 1, 2, 3, -2, -1, -0.5, 0, 0.5, 1, 2, 3, -2, -1, -0.5, 0, 
               0.5, 1, 2, 3, -2, -1, -0.5, 0, 0.5, 1, 2, 3, -2, -1, -0.5, 0, 
               0.5, 1, 2, 3, -2, -1, -0.5, 0, 0.5, 1, 2, 3, -2, -1, -0.5, 0, 
               0.5, 1, 2, 3, -2, -1, -0.5, 0, 0.5, 1, 2, 3, -2, -1, -0.5, 0, 
               0.5, 1, 2, 3, -2, -1, -0.5, 0, 0.5, 1, 2, 3, -2, -1, -0.5, 0, 
               0.5, 1, 2, 3, -2, -1, -0.5, 0, 0.5, 1, 2, 
               3}, {{$CellContext`s -> 0.0001720259123598053, $CellContext`w1 -> 
                0.0041113430594381965`, $CellContext`w2 -> 
                0.014575342504289412`}, {$CellContext`s -> 
                0.00022234039063829866`, $CellContext`w1 -> 
                0.005180093519600377, $CellContext`w2 -> 
                0.02268270944434383}, {$CellContext`s -> 
                0.0003371058998010734, $CellContext`w1 -> 
                0.006155534033224118, $CellContext`w2 -> 
                0.04941126862407071}, {$CellContext`s -> 
                0.0007349746204096828, $CellContext`w1 -> 
                0.0061724094500874216`, $CellContext`w2 -> 
                0.18512548851813856`}, {$CellContext`s -> 
                0.05638009824486681, $CellContext`w1 -> 
                0.02919165224610464, $CellContext`w2 -> 
                0.4795573635097994}, {$CellContext`s -> 
                0.00348115767380075, $CellContext`w1 -> 
                0.004978511065551196, $CellContext`w2 -> 
                0.4989188818770162}, {$CellContext`s -> 
                0.011383641533406335`, $CellContext`w1 -> 
                0.004878991929830318, $CellContext`w2 -> 
                0.617188246149203}, {$CellContext`s -> 
                0.02521228247691512, $CellContext`w1 -> 
                0.0048704664902396696`, $CellContext`w2 -> 
                0.6762772198134208}, {$CellContext`s -> 
                0.00022234039063830191`, $CellContext`w1 -> 
                0.0051800935196005425`, $CellContext`w2 -> 
                0.02268270944434413}, {$CellContext`s -> 
                0.0003492751922390459, $CellContext`w1 -> 
                0.007740782442929572, $CellContext`w2 -> 0.03729457923926934},
                {$CellContext`s -> 0.0006918616259512821, $CellContext`w1 -> 
                0.010682611623997158`, $CellContext`w2 -> 
                0.07769369101871557}, {$CellContext`s -> 
                0.002326173769528707, $CellContext`w1 -> 
                0.011481835220276366`, $CellContext`w2 -> 
                0.22122590943252907`}, {$CellContext`s -> 
                0.04570195946502238, $CellContext`w1 -> 
                0.03299085892908202, $CellContext`w2 -> 
                0.46744891011280765`}, {$CellContext`s -> 
                0.01550482708318149, $CellContext`w1 -> 
                0.008747702763171787, $CellContext`w2 -> 
                0.5024746033613168}, {$CellContext`s -> 
                0.04465448322064897, $CellContext`w1 -> 
                0.00838074741538034, $CellContext`w2 -> 
                0.6159314515199574}, {$CellContext`s -> 
                0.08465287552011938, $CellContext`w1 -> 
                0.008364008018826098, $CellContext`w2 -> 
                0.674128034266784}, {$CellContext`s -> 
                0.0003371058998010694, $CellContext`w1 -> 
                0.006155534033224211, $CellContext`w2 -> 
                0.04941126862407052}, {$CellContext`s -> 
                0.0006918616259512576, $CellContext`w1 -> 
                0.010682611623997246`, $CellContext`w2 -> 
                0.07769369101871497}, {$CellContext`s -> 
                0.001717240190596271, $CellContext`w1 -> 
                0.0165710847772671, $CellContext`w2 -> 
                0.1346076039407615}, {$CellContext`s -> 
                0.007496511702347838, $CellContext`w1 -> 
                0.020636120238461543`, $CellContext`w2 -> 
                0.27481207281026504`}, {$CellContext`s -> 
                0.0247835698996517, $CellContext`w1 -> 
                0.019837450404963524`, $CellContext`w2 -> 
                0.41989517227412276`}, {$CellContext`s -> 
                0.051429438476562374`, $CellContext`w1 -> 
                0.018935982169850544`, $CellContext`w2 -> 
                0.5131801484950917}, {$CellContext`s -> 
                0.11565725871394547`, $CellContext`w1 -> 
                0.018534319218037554`, $CellContext`w2 -> 
                0.6145763159105144}, {$CellContext`s -> 
                0.18099061305301592`, $CellContext`w1 -> 
                0.018760405785209915`, $CellContext`w2 -> 
                0.6689186224932799}, {$CellContext`s -> 
                0.0007349746204096789, $CellContext`w1 -> 
                0.006172409450087503, $CellContext`w2 -> 
                0.18512548851813845`}, {$CellContext`s -> 
                0.002326173769528707, $CellContext`w1 -> 
                0.011481835220276172`, $CellContext`w2 -> 
                0.22122590943252907`}, {$CellContext`s -> 
                0.007496511702348182, $CellContext`w1 -> 
                0.020636120238461186`, $CellContext`w2 -> 
                0.2748120728102666}, {$CellContext`s -> 
                0.03344131048038407, $CellContext`w1 -> 
                0.03665862929902911, $CellContext`w2 -> 
                0.3767023571345116}, {$CellContext`s -> 
                0.09223313601740817, $CellContext`w1 -> 
                0.051215069377681895`, $CellContext`w2 -> 
                0.4722458593166735}, {$CellContext`s -> 
                0.1566690052035471, $CellContext`w1 -> 
                0.0611815061548913, $CellContext`w2 -> 
                0.531347104932629}, {$CellContext`s -> 
                0.26342937817789625`, $CellContext`w1 -> 
                0.07333862734562599, $CellContext`w2 -> 
                0.5959922746602235}, {$CellContext`s -> 
                0.34412608687427504`, $CellContext`w1 -> 
                0.08102589000726926, $CellContext`w2 -> 
                0.631936575631724}, {$CellContext`s -> 
                0.003481157673800216, $CellContext`w1 -> 
                0.004978511065551115, $CellContext`w2 -> 
                0.4989188818770162}, {$CellContext`s -> 
                0.015504827083181532`, $CellContext`w1 -> 
                0.008747702763171102, $CellContext`w2 -> 
                0.5024746033613172}, {$CellContext`s -> 
                0.05142943847656234, $CellContext`w1 -> 
                0.01893598216985062, $CellContext`w2 -> 
                0.5131801484950919}, {$CellContext`s -> 
                0.15666900520354746`, $CellContext`w1 -> 
                0.06118150615489221, $CellContext`w2 -> 
                0.531347104932628}, {$CellContext`s -> 
                0.28877036934284583`, $CellContext`w1 -> 
                0.13582873222069136`, $CellContext`w2 -> 
                0.5258035071012724}, {$CellContext`s -> 
                0.3847711590806793, $CellContext`w1 -> 
                0.19116710626603398`, $CellContext`w2 -> 
                0.513268964038752}, {$CellContext`s -> 
                0.500049999999911, $CellContext`w1 -> 
                0.24999999999931677`, $CellContext`w2 -> 
                0.5000000000006726}, {$CellContext`s -> 
                0.5699123270482086, $CellContext`w1 -> 
                0.2821013244839186, $CellContext`w2 -> 
                0.49413210202858826`}, {$CellContext`s -> 
                0.01138364153343093, $CellContext`w1 -> 
                0.004878991929829652, $CellContext`w2 -> 
                0.6171882461492035}, {$CellContext`s -> 
                0.04465448322064637, $CellContext`w1 -> 
                0.008380747415380677, $CellContext`w2 -> 
                0.6159314515199571}, {$CellContext`s -> 
                0.11565725871394555`, $CellContext`w1 -> 
                0.01853431921803725, $CellContext`w2 -> 
                0.6145763159105146}, {$CellContext`s -> 
                0.26342937817789586`, $CellContext`w1 -> 
                0.07333862734562764, $CellContext`w2 -> 
                0.5959922746602218}, {$CellContext`s -> 
                0.4089109366462088, $CellContext`w1 -> 
                0.17760374963786665`, $CellContext`w2 -> 
                0.5411309367928913}, {$CellContext`s -> 
                0.5000499999998596, $CellContext`w1 -> 
                0.2499999999992928, $CellContext`w2 -> 
                0.5000000000006884}, {$CellContext`s -> 
                0.600334704395192, $CellContext`w1 -> 
                0.32267367448663914`, $CellContext`w2 -> 
                0.460651494467773}, {$CellContext`s -> 
                0.658115187657268, $CellContext`w1 -> 
                0.36101333589635104`, $CellContext`w2 -> 
                0.44183430038951393`}, {$CellContext`s -> 
                0.025212282476625564`, $CellContext`w1 -> 
                0.004870466490239598, $CellContext`w2 -> 
                0.6762772198134208}, {$CellContext`s -> 
                0.08465287552010226, $CellContext`w1 -> 
                0.008364008018825742, $CellContext`w2 -> 
                0.6741280342667844}, {$CellContext`s -> 
                0.18099061305301595`, $CellContext`w1 -> 
                0.018760405785209988`, $CellContext`w2 -> 
                0.6689186224932798}, {$CellContext`s -> 
                0.34412608687427554`, $CellContext`w1 -> 
                0.08102589000726916, $CellContext`w2 -> 
                0.631936575631724}, {$CellContext`s -> 
                0.4866490621129433, $CellContext`w1 -> 
                0.20141246210527802`, $CellContext`w2 -> 
                0.5499653944069093}, {$CellContext`s -> 
                0.5699123270482349, $CellContext`w1 -> 
                0.28210132448391195`, $CellContext`w2 -> 
                0.49413210202859825`}, {$CellContext`s -> 
                0.6581151876572713, $CellContext`w1 -> 
                0.36101333589639173`, $CellContext`w2 -> 
                0.4418343003894838}, {$CellContext`s -> 
                0.7078469756433011, $CellContext`w1 -> 
                0.4018924070536895, $CellContext`w2 -> 
                0.4167151119465823}, {$CellContext`s -> 
                0.00016670868119403386`, $CellContext`w1 -> 
                3.04627967343869*^-8, $CellContext`w2 -> 
                8.989760110974365*^-8}, {$CellContext`s -> 
                0.0002031549755399681, $CellContext`w1 -> 
                9.749550078943749*^-6, $CellContext`w2 -> 
                0.00004024610678118989}, {$CellContext`s -> 
                0.00025539629923387235`, $CellContext`w1 -> 
                0.00017150771003258616`, $CellContext`w2 -> 
                0.001118710254256966}, {$CellContext`s -> 
                0.00044019809605115346`, $CellContext`w1 -> 
                0.0007451405557860959, $CellContext`w2 -> 
                0.014438951855136847`}, {$CellContext`s -> 
                0.09433099713621362, $CellContext`w1 -> 
                0.3850067840591085, $CellContext`w2 -> 
                0.20914248523890222`}, {$CellContext`s -> 
                0.002322603061282021, $CellContext`w1 -> 
                0.0009386334102220448, $CellContext`w2 -> 
                0.09518855669211529}, {$CellContext`s -> 0.5, $CellContext`w1 -> 
                0.1, $CellContext`w2 -> 0.5}, {$CellContext`s -> 
                0.023345519005141348`, $CellContext`w1 -> 
                4.182013504835618*^-6, $CellContext`w2 -> 
                0.2281077225797347}, {$CellContext`s -> 
                0.00020315497554079616`, $CellContext`w1 -> 
                9.749550077486366*^-6, $CellContext`w2 -> 
                0.00004024610678125795}, {$CellContext`s -> 
                0.0002779771430279846, $CellContext`w1 -> 
                0.00007147055195804748, $CellContext`w2 -> 
                0.00022666059145470084`}, {$CellContext`s -> 
                0.000404711909174134, $CellContext`w1 -> 
                0.0005075075460541649, $CellContext`w2 -> 
                0.002095130913258066}, {$CellContext`s -> 
                0.0009603381919111574, $CellContext`w1 -> 
                0.00179717880802031, $CellContext`w2 -> 
                0.017367386626929795`}, {$CellContext`s -> 
                0.09382485324256419, $CellContext`w1 -> 
                0.3850940694344681, $CellContext`w2 -> 
                0.2090468682264613}, {$CellContext`s -> 
                0.008283408136722266, $CellContext`w1 -> 
                0.0038945317145476373`, $CellContext`w2 -> 
                0.09642130344995399}, {$CellContext`s -> 
                0.03742310881069252, $CellContext`w1 -> 
                0.00042933458884242525`, $CellContext`w2 -> 
                0.16955638466217468`}, {$CellContext`s -> 
                0.07673608591539446, $CellContext`w1 -> 
                0.0002690228004176482, $CellContext`w2 -> 
                0.2283080279167089}, {$CellContext`s -> 
                0.00025539629923336705`, $CellContext`w1 -> 
                0.00017150771003331897`, $CellContext`w2 -> 
                0.001118710254256741}, {$CellContext`s -> 
                0.00040471190917341964`, $CellContext`w1 -> 
                0.0005075075460553316, $CellContext`w2 -> 
                0.002095130913257826}, {$CellContext`s -> 
                0.0007036972016199743, $CellContext`w1 -> 
                0.0015552933307071116`, $CellContext`w2 -> 
                0.005597904177952426}, {$CellContext`s -> 
                0.002294092773006215, $CellContext`w1 -> 
                0.004164884986864994, $CellContext`w2 -> 
                0.023243661981157678`}, {$CellContext`s -> 
                0.09025396867371363, $CellContext`w1 -> 
                0.38525381370226375`, $CellContext`w2 -> 
                0.2086336224453311}, {$CellContext`s -> 
                0.03045864559175465, $CellContext`w1 -> 
                0.0043987029129773795`, $CellContext`w2 -> 
                0.10096923556323634`}, {$CellContext`s -> 
                0.09307499520058084, $CellContext`w1 -> 
                0.003615438187378978, $CellContext`w2 -> 
                0.17251629652852}, {$CellContext`s -> 
                0.16303136698900833`, $CellContext`w1 -> 
                0.0031406721397107228`, $CellContext`w2 -> 
                0.23037207168907736`}, {$CellContext`s -> 
                0.0004401980960511825, $CellContext`w1 -> 
                0.0007451405557859114, $CellContext`w2 -> 
                0.014438951855136965`}, {$CellContext`s -> 
                0.000960338191911182, $CellContext`w1 -> 
                0.0017971788080203257`, $CellContext`w2 -> 
                0.017367386626930045`}, {$CellContext`s -> 
                0.0022940927730059086`, $CellContext`w1 -> 
                0.004164884986865956, $CellContext`w2 -> 
                0.023243661981157897`}, {$CellContext`s -> 
                0.01074190450698423, $CellContext`w1 -> 
                0.010706434351674534`, $CellContext`w2 -> 
                0.04352504727525558}, {$CellContext`s -> 
                0.04877259138848948, $CellContext`w1 -> 
                0.01702952442949668, $CellContext`w2 -> 
                0.08199963636766194}, {$CellContext`s -> 
                0.1124740787820499, $CellContext`w1 -> 
                0.02008512685671968, $CellContext`w2 -> 
                0.12245369246435872`}, {$CellContext`s -> 
                0.23726224982639324`, $CellContext`w1 -> 
                0.022439519761813673`, $CellContext`w2 -> 
                0.19125126226283026`}, {$CellContext`s -> 
                0.3343825376164528, $CellContext`w1 -> 
                0.02302677609938854, $CellContext`w2 -> 
                0.24578141559527605`}, {$CellContext`s -> 
                0.0023226030612820544`, $CellContext`w1 -> 
                0.0009386334102219078, $CellContext`w2 -> 
                0.0951885566921152}, {$CellContext`s -> 
                0.008283408136722214, $CellContext`w1 -> 
                0.003894531714547892, $CellContext`w2 -> 
                0.096421303449954}, {$CellContext`s -> 0.5, $CellContext`w1 -> 
                0.1, $CellContext`w2 -> 0.5}, {$CellContext`s -> 
                0.11247407878204993`, $CellContext`w1 -> 
                0.02008512685671964, $CellContext`w2 -> 
                0.12245369246435878`}, {$CellContext`s -> 
                0.2615102410809598, $CellContext`w1 -> 
                0.04305213213016762, $CellContext`w2 -> 
                0.16518999290075995`}, {$CellContext`s -> 
                0.37468380846915106`, $CellContext`w1 -> 
                0.05774267219790439, $CellContext`w2 -> 
                0.20446861590461415`}, {$CellContext`s -> 
                0.5050958618714203, $CellContext`w1 -> 
                0.07303169946546761, $CellContext`w2 -> 
                0.26277027510901463`}, {$CellContext`s -> 
                0.5811416251487465, $CellContext`w1 -> 
                0.08061174030845909, $CellContext`w2 -> 
                0.3055180462964677}, {$CellContext`s -> 
                0.010118674993767705`, $CellContext`w1 -> 
                0.000016516031105088827`, $CellContext`w2 -> 
                0.1691340722760188}, {$CellContext`s -> 
                0.037423108810693335`, $CellContext`w1 -> 
                0.0004293345888423687, $CellContext`w2 -> 
                0.16955638466217468`}, {$CellContext`s -> 
                0.093074995200582, $CellContext`w1 -> 
                0.0036154381873787153`, $CellContext`w2 -> 
                0.1725162965285199}, {$CellContext`s -> 
                0.23726224982639363`, $CellContext`w1 -> 
                0.022439519761813426`, $CellContext`w2 -> 
                0.1912512622628303}, {$CellContext`s -> 
                0.40497176229158716`, $CellContext`w1 -> 
                0.05279955516666794, $CellContext`w2 -> 
                0.2295238501561466}, {$CellContext`s -> 
                0.5050958618714211, $CellContext`w1 -> 
                0.07303169946546781, $CellContext`w2 -> 
                0.26277027510901324`}, {$CellContext`s -> 
                0.6103604023075649, $CellContext`w1 -> 
                0.09535421399761468, $CellContext`w2 -> 
                0.3102558231700299}, {$CellContext`s -> 
                0.6695306961052087, $CellContext`w1 -> 
                0.10747634933091518`, $CellContext`w2 -> 
                0.34430893054314465`}, {$CellContext`s -> 
                0.02334551900507387, $CellContext`w1 -> 
                4.1820135049888515`*^-6, $CellContext`w2 -> 
                0.22810772257973466`}, {$CellContext`s -> 
                0.5, $CellContext`w1 -> 0.1, $CellContext`w2 -> 
                0.5}, {$CellContext`s -> 
                0.16303136698900694`, $CellContext`w1 -> 
                0.003140672139710946, $CellContext`w2 -> 
                0.23037207168907703`}, {$CellContext`s -> 
                0.3343825376164525, $CellContext`w1 -> 
                0.023026776099388708`, $CellContext`w2 -> 
                0.24578141559527605`}, {$CellContext`s -> 
                0.4944753775314648, $CellContext`w1 -> 
                0.057140995372949116`, $CellContext`w2 -> 
                0.2780180471679056}, {$CellContext`s -> 
                0.5811416251487418, $CellContext`w1 -> 
                0.08061174030846326, $CellContext`w2 -> 
                0.3055180462964652}, {$CellContext`s -> 
                0.6695306961052057, $CellContext`w1 -> 
                0.10747634933093311`, $CellContext`w2 -> 
                0.3443089305431669}, {$CellContext`s -> 
                0.7186996714813267, $CellContext`w1 -> 
                0.12279167325701806`, $CellContext`w2 -> 
                0.37191221920867107`}, {$CellContext`s -> 
                0.00016749788341357223`, $CellContext`w1 -> 
                2.2149744398042098`*^-8, $CellContext`w2 -> 
                6.602938205742386*^-8}, {$CellContext`s -> 
                0.0002044886897855567, $CellContext`w1 -> 
                6.989580397703927*^-6, $CellContext`w2 -> 
                0.000029233221732628992`}, {$CellContext`s -> 
                0.0002575117785512054, $CellContext`w1 -> 
                0.00012181810550055761`, $CellContext`w2 -> 
                0.000807804427417839}, {$CellContext`s -> 
                0.00044481481835831067`, $CellContext`w1 -> 
                0.0005274055563446987, $CellContext`w2 -> 
                0.010435284012999887`}, {$CellContext`s -> 
                0.0839937268727479, $CellContext`w1 -> 
                0.39538211706231635`, $CellContext`w2 -> 
                0.20148966005278882`}, {$CellContext`s -> 
                0.0022650304125675117`, $CellContext`w1 -> 
                0.0019940550821294593`, $CellContext`w2 -> 
                0.07124207115552411}, {$CellContext`s -> 0.5, $CellContext`w1 -> 
                0.1, $CellContext`w2 -> 0.5}, {$CellContext`s -> 
                0.02346659724687594, $CellContext`w1 -> 
                3.3195618631898114`*^-6, $CellContext`w2 -> 
                0.18295315778016555`}, {$CellContext`s -> 
                0.0002044886897836486, $CellContext`w1 -> 
                6.989580397872466*^-6, $CellContext`w2 -> 
                0.000029233221733000558`}, {$CellContext`s -> 
                0.00028066743278701235`, $CellContext`w1 -> 
                0.0000512620275586313, $CellContext`w2 -> 
                0.00016440337259738437`}, {$CellContext`s -> 
                0.0004099983515838504, $CellContext`w1 -> 
                0.00036176698844555925`, $CellContext`w2 -> 
                0.0015135732546223118`}, {$CellContext`s -> 
                0.0009770822360550624, $CellContext`w1 -> 
                0.001278514390944613, $CellContext`w2 -> 
                0.012573323049127673`}, {$CellContext`s -> 
                0.08352046916384481, $CellContext`w1 -> 
                0.39546317365290024`, $CellContext`w2 -> 
                0.20140326772113054`}, {$CellContext`s -> 
                0.009725816342096408, $CellContext`w1 -> 
                0.0009707753867496094, $CellContext`w2 -> 
                0.07227713246133857}, {$CellContext`s -> 
                0.0377544478456308, $CellContext`w1 -> 
                0.0003303585410878151, $CellContext`w2 -> 
                0.1317752160360255}, {$CellContext`s -> 
                0.0772330008129545, $CellContext`w1 -> 
                0.00021400693823142767`, $CellContext`w2 -> 
                0.18314065077093386`}, {$CellContext`s -> 
                0.00025751177855085186`, $CellContext`w1 -> 
                0.0001218181055013715, $CellContext`w2 -> 
                0.000807804427417667}, {$CellContext`s -> 
                0.0004099983515820899, $CellContext`w1 -> 
                0.0003617669884464605, $CellContext`w2 -> 
                0.0015135732546221416`}, {$CellContext`s -> 
                0.0007166157584353937, $CellContext`w1 -> 
                0.0011094549164175674`, $CellContext`w2 -> 
                0.004045559858522847}, {$CellContext`s -> 
                0.002350769980898953, $CellContext`w1 -> 
                0.002979080219638234, $CellContext`w2 -> 
                0.01688020547132322}, {$CellContext`s -> 
                0.08074821737848575, $CellContext`w1 -> 
                0.3956061984661811, $CellContext`w2 -> 
                0.20110238817522105`}, {$CellContext`s -> 
                0.02931879862586464, $CellContext`w1 -> 
                0.0040346731147123645`, $CellContext`w2 -> 
                0.07587438794821873}, {$CellContext`s -> 
                0.09403553325483746, $CellContext`w1 -> 
                0.0027830163098948833`, $CellContext`w2 -> 
                0.13433928777925386`}, {$CellContext`s -> 
                0.16421549227009416`, $CellContext`w1 -> 
                0.0024945394786082256`, $CellContext`w2 -> 
                0.18506985744763552`}, {$CellContext`s -> 
                0.0004448148183583052, $CellContext`w1 -> 
                0.000527405556344655, $CellContext`w2 -> 
                0.010435284012999911`}, {$CellContext`s -> 
                0.000977082236055183, $CellContext`w1 -> 
                0.0012785143909446418`, $CellContext`w2 -> 
                0.012573323049127649`}, {$CellContext`s -> 
                0.002350769980901098, $CellContext`w1 -> 
                0.0029790802196365653`, $CellContext`w2 -> 
                0.01688020547132292}, {$CellContext`s -> 
                0.01107147242824469, $CellContext`w1 -> 
                0.007723403117035003, $CellContext`w2 -> 
                0.03190755015095985}, {$CellContext`s -> 
                0.046007269920560825`, $CellContext`w1 -> 
                0.015553161497948621`, $CellContext`w2 -> 
                0.06118849076226741}, {$CellContext`s -> 
                0.11442229053339624`, $CellContext`w1 -> 
                0.015007036011506278`, $CellContext`w2 -> 
                0.09317866928918526}, {$CellContext`s -> 
                0.2397273883901266, $CellContext`w1 -> 
                0.017343849850285555`, $CellContext`w2 -> 
                0.1507210938641047}, {$CellContext`s -> 
                0.3367952894193284, $CellContext`w1 -> 
                0.018319896546641123`, $CellContext`w2 -> 
                0.1995739453326615}, {$CellContext`s -> 
                0.002265030412567351, $CellContext`w1 -> 
                0.001994055082134354, $CellContext`w2 -> 
                0.07124207115552378}, {$CellContext`s -> 
                0.009725816342096625, $CellContext`w1 -> 
                0.0009707753867494864, $CellContext`w2 -> 
                0.07227713246133859}, {$CellContext`s -> 0.5, $CellContext`w1 -> 
                0.1, $CellContext`w2 -> 0.5}, {$CellContext`s -> 
                0.11442229053339778`, $CellContext`w1 -> 
                0.015007036011505534`, $CellContext`w2 -> 
                0.09317866928918532}, {$CellContext`s -> 
                0.26487746039066673`, $CellContext`w1 -> 
                0.03273104285389352, $CellContext`w2 -> 
                0.12874578564064856`}, {$CellContext`s -> 
                0.37826241228670043`, $CellContext`w1 -> 
                0.044713016081065156`, $CellContext`w2 -> 
                0.16292260464763608`}, {$CellContext`s -> 
                0.5082908986099889, $CellContext`w1 -> 
                0.05825872364150763, $CellContext`w2 -> 
                0.21656781256091148`}, {$CellContext`s -> 
                0.5838580458518466, $CellContext`w1 -> 
                0.06586054616188226, $CellContext`w2 -> 
                0.258436260364098}, {$CellContext`s -> 
                0.010186063443237206`, $CellContext`w1 -> 
                0.000012662877948010688`, $CellContext`w2 -> 
                0.1314093280978852}, {$CellContext`s -> 
                0.037754447845633775`, $CellContext`w1 -> 
                0.0003303585410875849, $CellContext`w2 -> 
                0.13177521603602554`}, {$CellContext`s -> 
                0.0940355332548483, $CellContext`w1 -> 
                0.002783016309893005, $CellContext`w2 -> 
                0.13433928777925397`}, {$CellContext`s -> 
                0.23972738839012575`, $CellContext`w1 -> 
                0.01734384985028593, $CellContext`w2 -> 
                0.1507210938641047}, {$CellContext`s -> 
                0.40824293256694477`, $CellContext`w1 -> 
                0.041447632454560075`, $CellContext`w2 -> 
                0.18526333244424517`}, {$CellContext`s -> 
                0.5082908986099852, $CellContext`w1 -> 
                0.058258723641509295`, $CellContext`w2 -> 
                0.21656781256091115`}, {$CellContext`s -> 
                0.6130751054114587, $CellContext`w1 -> 
                0.07802360898168784, $CellContext`w2 -> 
                0.263598862622028}, {$CellContext`s -> 
                0.6718007907018745, $CellContext`w1 -> 
                0.08973178109327697, $CellContext`w2 -> 
                0.29923521145196236`}, {$CellContext`s -> 
                0.023466597246578947`, $CellContext`w1 -> 
                3.3195618636580673`*^-6, $CellContext`w2 -> 
                0.18295315778016547`}, {$CellContext`s -> 
                0.5, $CellContext`w1 -> 0.1, $CellContext`w2 -> 
                0.5}, {$CellContext`s -> 
                0.16421549227009213`, $CellContext`w1 -> 
                0.0024945394786084745`, $CellContext`w2 -> 
                0.1850698574476354}, {$CellContext`s -> 
                0.33679528941932824`, $CellContext`w1 -> 
                0.0183198965466412, $CellContext`w2 -> 
                0.19957394533266148`}, {$CellContext`s -> 
                0.49734031884211205`, $CellContext`w1 -> 
                0.04605062600781472, $CellContext`w2 -> 
                0.23078053524207015`}, {$CellContext`s -> 
                0.583858045851846, $CellContext`w1 -> 
                0.06586054616187922, $CellContext`w2 -> 
                0.2584362603641012}, {$CellContext`s -> 
                0.671800790701801, $CellContext`w1 -> 
                0.08973178109339865, $CellContext`w2 -> 
                0.29923521145189896`}, {$CellContext`s -> 
                0.7205876073461098, $CellContext`w1 -> 
                0.10429324663258499`, $CellContext`w2 -> 
                0.3297058946778124}, {$CellContext`s -> 
                0.0001655780949296126, $CellContext`w1 -> 
                3.734684113691283*^-8, $CellContext`w2 -> 
                1.0863012304456699`*^-7}, {$CellContext`s -> 
                0.0002012290637575675, $CellContext`w1 -> 
                0.000012056379726435476`, $CellContext`w2 -> 
                0.000048828269898582305`}, {$CellContext`s -> 
                0.00025232882888228146`, $CellContext`w1 -> 
                0.00021355848487589636`, $CellContext`w2 -> 
                0.0013597446842550987`}, {$CellContext`s -> 
                0.00043361019350775964`, $CellContext`w1 -> 
                0.0009294897075428985, $CellContext`w2 -> 
                0.017476144052928314`}, {$CellContext`s -> 
                0.0949713314901042, $CellContext`w1 -> 
                0.3747830453220111, $CellContext`w2 -> 
                0.21760326866012186`}, {$CellContext`s -> 
                0.0023080937476180593`, $CellContext`w1 -> 
                0.0010127954736034283`, $CellContext`w2 -> 
                0.11119022696683722`}, {$CellContext`s -> 
                0.4689084971207691, $CellContext`w1 -> 
                0.14632374116316166`, $CellContext`w2 -> 
                0.45}, {$CellContext`s -> 
                0.023232427210221028`, $CellContext`w1 -> 
                4.662272623023998*^-6, $CellContext`w2 -> 
                0.2518422575612199}, {$CellContext`s -> 
                0.00020122906375824207`, $CellContext`w1 -> 
                0.000012056379726363806`, $CellContext`w2 -> 
                0.000048828269899036884`}, {$CellContext`s -> 
                0.0002740979302825667, $CellContext`w1 -> 
                0.00008815537784102385, $CellContext`w2 -> 
                0.00027512273706777453`}, {$CellContext`s -> 
                0.0003971137732805006, $CellContext`w1 -> 
                0.000628630932959926, $CellContext`w2 -> 
                0.002545372142707295}, {$CellContext`s -> 
                0.000936775591490702, $CellContext`w1 -> 
                0.0022270473489043635`, $CellContext`w2 -> 
                0.020990531997863705`}, {$CellContext`s -> 
                0.0944511555752421, $CellContext`w1 -> 
                0.3748708235520059, $CellContext`w2 -> 
                0.21750480999688832`}, {$CellContext`s -> 
                0.00823525090888135, $CellContext`w1 -> 
                0.004160147231754455, $CellContext`w2 -> 
                0.11255826613643824`}, {$CellContext`s -> 
                0.03706752774571179, $CellContext`w1 -> 
                0.0004907458182858047, $CellContext`w2 -> 
                0.19182677962528882`}, {$CellContext`s -> 
                0.07627257671057448, $CellContext`w1 -> 
                0.00029909654737668423`, $CellContext`w2 -> 
                0.2520431522583617}, {$CellContext`s -> 
                0.00025232882888190237`, $CellContext`w1 -> 
                0.0002135584848763723, $CellContext`w2 -> 
                0.001359744684255047}, {$CellContext`s -> 
                0.00039711377328016586`, $CellContext`w1 -> 
                0.0006286309329603179, $CellContext`w2 -> 
                0.002545372142707737}, {$CellContext`s -> 
                0.0006853206187906095, $CellContext`w1 -> 
                0.0019221333195308498`, $CellContext`w2 -> 
                0.006793231015572555}, {$CellContext`s -> 
                0.002215500410690098, $CellContext`w1 -> 
                0.0051253447261978, $CellContext`w2 -> 
                0.028016655031532556`}, {$CellContext`s -> 
                0.09061687339271815, $CellContext`w1 -> 
                0.3748814713448731, $CellContext`w2 -> 
                0.21718338533673895`}, {$CellContext`s -> 
                0.029838312048534904`, $CellContext`w1 -> 
                0.005199175864517682, $CellContext`w2 -> 
                0.11765018631874892`}, {$CellContext`s -> 
                0.09204713318062192, $CellContext`w1 -> 
                0.004125694755851968, $CellContext`w2 -> 
                0.19493705738814585`}, {$CellContext`s -> 
                0.16192868096303312`, $CellContext`w1 -> 
                0.003490956695817406, $CellContext`w2 -> 
                0.25411461676264074`}, {$CellContext`s -> 
                0.00043361019350775677`, $CellContext`w1 -> 
                0.0009294897075427978, $CellContext`w2 -> 
                0.017476144052928404`}, {$CellContext`s -> 
                0.0009367755914907514, $CellContext`w1 -> 
                0.002227047348904407, $CellContext`w2 -> 
                0.020990531997863892`}, {$CellContext`s -> 
                0.002215500410689933, $CellContext`w1 -> 
                0.005125344726197793, $CellContext`w2 -> 
                0.028016655031533146`}, {$CellContext`s -> 
                0.010293008959813305`, $CellContext`w1 -> 
                0.013042540371550174`, $CellContext`w2 -> 
                0.05200197290942071}, {$CellContext`s -> 
                0.047226706483930445`, $CellContext`w1 -> 
                0.02037799195728716, $CellContext`w2 -> 
                0.09634886868277541}, {$CellContext`s -> 
                0.11010411209621858`, $CellContext`w1 -> 
                0.02356847525115015, $CellContext`w2 -> 
                0.14138682932318902`}, {$CellContext`s -> 
                0.23465223777529756`, $CellContext`w1 -> 
                0.025498554553964735`, $CellContext`w2 -> 
                0.21446943172008934`}, {$CellContext`s -> 
                0.33215532457240704`, $CellContext`w1 -> 
                0.025534738576203163`, $CellContext`w2 -> 
                0.26948598805808094`}, {$CellContext`s -> 
                0.0023080937476182882`, $CellContext`w1 -> 
                0.0010127954736015537`, $CellContext`w2 -> 
                0.11119022696683734`}, {$CellContext`s -> 
                0.008235250908881718, $CellContext`w1 -> 
                0.004160147231752734, $CellContext`w2 -> 
                0.11255826613643839`}, {$CellContext`s -> 
                0.5, $CellContext`w1 -> 0.1, $CellContext`w2 -> 
                0.5}, {$CellContext`s -> 
                0.11010411209621777`, $CellContext`w1 -> 
                0.02356847525115085, $CellContext`w2 -> 
                0.1413868293231889}, {$CellContext`s -> 
                0.257581294679111, $CellContext`w1 -> 
                0.049740760006961926`, $CellContext`w2 -> 
                0.18734699640022692`}, {$CellContext`s -> 
                0.37075540645868466`, $CellContext`w1 -> 
                0.06564191270424162, $CellContext`w2 -> 
                0.22815456058355885`}, {$CellContext`s -> 
                0.5020059138327831, $CellContext`w1 -> 
                0.08097006772904879, $CellContext`w2 -> 
                0.2863473810035293}, {$CellContext`s -> 
                0.5788201752064455, $CellContext`w1 -> 
                0.08773243029404709, $CellContext`w2 -> 
                0.32732380664612554`}, {$CellContext`s -> 
                0.010046172083025055`, $CellContext`w1 -> 
                0.000018959456177315255`, $CellContext`w2 -> 
                0.19138307422467557`}, {$CellContext`s -> 
                0.03706752774571604, $CellContext`w1 -> 
                0.0004907458182854608, $CellContext`w2 -> 
                0.19182677962528888`}, {$CellContext`s -> 
                0.09204713318062273, $CellContext`w1 -> 
                0.004125694755851749, $CellContext`w2 -> 
                0.19493705738814604`}, {$CellContext`s -> 
                0.2346522377752972, $CellContext`w1 -> 
                0.025498554553964894`, $CellContext`w2 -> 
                0.21446943172008934`}, {$CellContext`s -> 
                0.4016368907513754, $CellContext`w1 -> 
                0.05927085312334463, $CellContext`w2 -> 
                0.2534549342142336}, {$CellContext`s -> 
                0.5020059138327806, $CellContext`w1 -> 
                0.0809700677290542, $CellContext`w2 -> 
                0.2863473810035229}, {$CellContext`s -> 
                0.608005500807371, $CellContext`w1 -> 
                0.10372726539851107`, $CellContext`w2 -> 
                0.3318477509637245}, {$CellContext`s -> 
                0.6677621746549327, $CellContext`w1 -> 
                0.11527140767042404`, $CellContext`w2 -> 
                0.36346549367944603`}, {$CellContext`s -> 
                0.023232427210129677`, $CellContext`w1 -> 
                4.662272623179303*^-6, $CellContext`w2 -> 
                0.25184225756121986`}, {$CellContext`s -> 
                0.5, $CellContext`w1 -> 0.1, $CellContext`w2 -> 
                0.5}, {$CellContext`s -> 
                0.16192868096303392`, $CellContext`w1 -> 
                0.0034909566958172757`, $CellContext`w2 -> 
                0.25411461676264036`}, {$CellContext`s -> 
                0.3321553245724073, $CellContext`w1 -> 
                0.025534738576203028`, $CellContext`w2 -> 
                0.26948598805808094`}, {$CellContext`s -> 
                0.4919153695720487, $CellContext`w1 -> 
                0.06278211809514145, $CellContext`w2 -> 
                0.30103889621460445`}, {$CellContext`s -> 
                0.5788201752064454, $CellContext`w1 -> 
                0.08773243029404545, $CellContext`w2 -> 
                0.3273238066461272}, {$CellContext`s -> 
                0.6677621746548973, $CellContext`w1 -> 
                0.11527140767049562`, $CellContext`w2 -> 
                0.36346549367940556`}, {$CellContext`s -> 
                0.7173592360027943, $CellContext`w1 -> 
                0.13025723940718414`, $CellContext`w2 -> 
                0.3885517145608745}, {$CellContext`s -> 
                0.05735062783909754, $CellContext`w1 -> 
                0.028888710957209386`, $CellContext`w2 -> 
                0.4805556877750784}, {$CellContext`s -> 
                0.04570195946502237, $CellContext`w1 -> 
                0.03299085892908486, $CellContext`w2 -> 
                0.4674489101128057}, {$CellContext`s -> 
                0.024783569899651824`, $CellContext`w1 -> 
                0.019837450404962848`, $CellContext`w2 -> 
                0.4198951722741234}, {$CellContext`s -> 
                0.09223313601740961, $CellContext`w1 -> 
                0.051215069377685635`, $CellContext`w2 -> 
                0.4722458593166693}, {$CellContext`s -> 
                0.19876620163759298`, $CellContext`w1 -> 
                0.09906511196316503, $CellContext`w2 -> 
                0.5097057438400561}, {$CellContext`s -> 
                0.28877036934284656`, $CellContext`w1 -> 
                0.13582873222069294`, $CellContext`w2 -> 
                0.5258035071012723}, {$CellContext`s -> 
                0.4089109366462088, $CellContext`w1 -> 
                0.1776037496378688, $CellContext`w2 -> 
                0.5411309367928893}, {$CellContext`s -> 
                0.4866490621129432, $CellContext`w1 -> 
                0.20141246210527777`, $CellContext`w2 -> 
                0.5499653944069095}, {$CellContext`s -> 
                0.09433102589324319, $CellContext`w1 -> 
                0.38500678384222853`, $CellContext`w2 -> 
                0.20914248425185544`}, {$CellContext`s -> 
                0.09382482463286167, $CellContext`w1 -> 
                0.3850940696199849, $CellContext`w2 -> 
                0.2090468692389216}, {$CellContext`s -> 
                0.09025394143646714, $CellContext`w1 -> 
                0.385253813534999, $CellContext`w2 -> 
                0.2086336237609085}, {$CellContext`s -> 
                0.19154882105888976`, $CellContext`w1 -> 
                0.35791834063976347`, $CellContext`w2 -> 
                0.23246478530786294`}, {$CellContext`s -> 
                0.5, $CellContext`w1 -> 0.1, $CellContext`w2 -> 
                0.5}, {$CellContext`s -> 0.2615102410809473, $CellContext`w1 -> 
                0.04305213213018178, $CellContext`w2 -> 
                0.16518999290076053`}, {$CellContext`s -> 
                0.4049717622915849, $CellContext`w1 -> 
                0.052799555166670384`, $CellContext`w2 -> 
                0.2295238501561432}, {$CellContext`s -> 
                0.49447537753146414`, $CellContext`w1 -> 
                0.05714099537295011, $CellContext`w2 -> 
                0.278018047167905}, {$CellContext`s -> 
                0.09497133004246515, $CellContext`w1 -> 
                0.37478304535954243`, $CellContext`w2 -> 
                0.21760326869997942`}, {$CellContext`s -> 
                0.09445113829906905, $CellContext`w1 -> 
                0.37487082398104116`, $CellContext`w2 -> 
                0.2175048104916359}, {$CellContext`s -> 
                0.0906168460592085, $CellContext`w1 -> 
                0.3748814716466531, $CellContext`w2 -> 
                0.21718338650739707`}, {$CellContext`s -> 
                0.0254976788795732, $CellContext`w1 -> 
                0.3759956249767716, $CellContext`w2 -> 
                0.2096757088332666}, {$CellContext`s -> 0.5, $CellContext`w1 -> 
                0.1, $CellContext`w2 -> 0.5}, {$CellContext`s -> 
                0.25758129467912483`, $CellContext`w1 -> 
                0.04974076000695578, $CellContext`w2 -> 
                0.18734699640024025`}, {$CellContext`s -> 
                0.4016368907513819, $CellContext`w1 -> 
                0.059270853123337, $CellContext`w2 -> 
                0.25345493421423304`}, {$CellContext`s -> 
                0.49191536957205023`, $CellContext`w1 -> 
                0.06278211809513931, $CellContext`w2 -> 
                0.30103889621460367`}, {$CellContext`s -> 
                0.08399378317230945, $CellContext`w1 -> 
                0.3953821230115455, $CellContext`w2 -> 
                0.20148965244151593`}, {$CellContext`s -> 
                0.08352049717528906, $CellContext`w1 -> 
                0.3954631766473419, $CellContext`w2 -> 
                0.2014032638995346}, {$CellContext`s -> 
                0.08074824223494644, $CellContext`w1 -> 
                0.39560620141985053`, $CellContext`w2 -> 
                0.20110238448235637`}, {$CellContext`s -> 
                0.21820615297824875`, $CellContext`w1 -> 
                0.36213933682344096`, $CellContext`w2 -> 
                0.23244853911037497`}, {$CellContext`s -> 
                0.5, $CellContext`w1 -> 0.1, $CellContext`w2 -> 
                0.5}, {$CellContext`s -> 0.2648774603906933, $CellContext`w1 -> 
                0.03273104285388414, $CellContext`w2 -> 
                0.12874578564065375`}, {$CellContext`s -> 
                0.4082429325669291, $CellContext`w1 -> 
                0.04144763245457268, $CellContext`w2 -> 
                0.18526333244424698`}, {$CellContext`s -> 
                0.4973403188421122, $CellContext`w1 -> 
                0.04605062600781414, $CellContext`w2 -> 
                0.23078053524206968`}}}]; Do[
            If[
             And[
             Part[$CellContext`SolsMatrix2, $CellContext`i, 
                1] == $CellContext`\[Mu], 
              Part[$CellContext`SolsMatrix2, $CellContext`i, 
                2] == $CellContext`p, 
              Part[$CellContext`SolsMatrix2, $CellContext`i, 
                3] == $CellContext`q], $CellContext`Sols = 
             Part[$CellContext`SolsMatrix2, $CellContext`i, 
               4]], {$CellContext`i, 1, 
             Length[$CellContext`SolsMatrix2]}]; $CellContext`SolsR = Round[
             
             ReplaceAll[{$CellContext`s, $CellContext`w1, $CellContext`w2}, \
$CellContext`Sols], 0.0001]; $CellContext`c12opt = 
           ReplaceAll[$CellContext`c, $CellContext`Sols]; $CellContext`Zeros = 
           Chop[{
              
              ReplaceAll[$CellContext`c12opt, $CellContext`x -> $CellContext`\
\[Epsilon]], 
              
              ReplaceAll[$CellContext`c12opt, $CellContext`x -> 
               Part[$CellContext`Sols, 1, 2]], 
              ReplaceAll[$CellContext`c12opt, $CellContext`x -> 1]}]; 
          Plot[$CellContext`c12opt, {$CellContext`x, $CellContext`\[Epsilon], 
             1}, PlotRange -> {All, 0}, Frame -> {{None, None}, {None, True}},
             FrameTicks -> All, FrameLabel -> {{None, None}, {None, 
               Style["\!\(\*SubscriptBox[\(\[Xi]\), \(I\)]\):" MatrixForm[{{
                    N[
                    Round[$CellContext`\[Epsilon], 10^(-4)]], 
                    Part[$CellContext`SolsR, 1], 1}, 
                   N[{
                    Part[$CellContext`SolsR, 2], 
                    Part[$CellContext`SolsR, 3], 1 - 
                    Part[$CellContext`SolsR, 2] - 
                    Part[$CellContext`SolsR, 3]}]}], FontSize -> 
                20]}}], {{$CellContext`p, 1}, {
           3, 2, 1, 0.5, 0, -0.5, -1, -2}}, {$CellContext`q, {
           3, 2, 1, 0.5, 0, -0.5, -1, -2}}, {$CellContext`\[Mu], {
           "U[\[Epsilon],1]", "U[1,1.2]", "incr[1,1.2]", "decr[1,1.2]"}}], 
         And[$CellContext`Criteria$$ == "I-opt", $CellContext`FP$$ == 3], 
         Manipulate[If[
            
            And[$CellContext`p != $CellContext`q != $CellContext`r, \
$CellContext`p != 0, $CellContext`q != 0, $CellContext`r != 
             0], $CellContext`f = {
              1, $CellContext`x^$CellContext`p, \
$CellContext`x^$CellContext`q, $CellContext`x^$CellContext`r}; \
$CellContext`caso = "distintos"]; If[
            
            And[$CellContext`p != $CellContext`q, $CellContext`p != \
$CellContext`r, $CellContext`r != $CellContext`q, $CellContext`p == 
             0], $CellContext`f = {1, 
               
               Log[$CellContext`x], $CellContext`x^$CellContext`q, \
$CellContext`x^$CellContext`r}; $CellContext`caso = "p==0"]; If[
            
            And[$CellContext`p != $CellContext`q, $CellContext`p != \
$CellContext`r, $CellContext`r != $CellContext`q, $CellContext`q == 
             0], $CellContext`f = {1, $CellContext`x^$CellContext`p, 
               
               Log[$CellContext`x], $CellContext`x^$CellContext`r}; \
$CellContext`caso = "q==0"]; If[
            
            And[$CellContext`p != $CellContext`q, $CellContext`p != \
$CellContext`r, $CellContext`r != $CellContext`q, $CellContext`r == 
             0], $CellContext`f = {
              1, $CellContext`x^$CellContext`p, $CellContext`x^$CellContext`q, 
               Log[$CellContext`x]}; $CellContext`caso = "r==0"]; If[
            And[
             
             And[$CellContext`p == $CellContext`q, $CellContext`p != \
$CellContext`r], $CellContext`p != 0, $CellContext`q != 0, $CellContext`r != 
             0], $CellContext`f = {
              1, $CellContext`x^$CellContext`p, $CellContext`x^$CellContext`p 
               Log[$CellContext`x], $CellContext`x^$CellContext`r}; \
$CellContext`caso = "pp==qq"]; If[
            And[
             
             And[$CellContext`p == $CellContext`r, $CellContext`p != \
$CellContext`q], $CellContext`p != 0, $CellContext`q != 0, $CellContext`r != 
             0], $CellContext`f = {
              1, $CellContext`x^$CellContext`p, \
$CellContext`x^$CellContext`q, $CellContext`x^$CellContext`p 
               Log[$CellContext`x]}; $CellContext`caso = "p==r"]; If[
            And[
             
             And[$CellContext`q == $CellContext`r, $CellContext`q != \
$CellContext`p], $CellContext`p != 0, $CellContext`q != 0, $CellContext`r != 
             0], $CellContext`f = {
              1, $CellContext`x^$CellContext`p, \
$CellContext`x^$CellContext`q, $CellContext`x^$CellContext`q 
               Log[$CellContext`x]}; $CellContext`caso = "q=r"]; If[
            
            And[$CellContext`p == $CellContext`q, $CellContext`r == 
             0, $CellContext`p != 
             0], $CellContext`f = {
              1, $CellContext`x^$CellContext`p, $CellContext`x^$CellContext`p 
               Log[$CellContext`x], 
               Log[$CellContext`x]}; $CellContext`caso = "r==0"]; If[
            
            And[$CellContext`p == $CellContext`r, $CellContext`q == 
             0, $CellContext`p != 
             0], $CellContext`f = {1, $CellContext`x^$CellContext`p, 
               Log[$CellContext`x], $CellContext`x^$CellContext`p 
               Log[$CellContext`x]}; $CellContext`caso = "q==0"]; If[
            
            And[$CellContext`q == $CellContext`r, $CellContext`p == 
             0, $CellContext`q != 0], $CellContext`f = {1, 
               
               Log[$CellContext`x], $CellContext`x^$CellContext`q, \
$CellContext`x^$CellContext`q Log[$CellContext`x]}; $CellContext`caso = 
             "p==0"]; If[
            
            And[$CellContext`p == $CellContext`q, $CellContext`p == 
             0, $CellContext`r != 0], $CellContext`f = {1, 
               Log[$CellContext`x], 
               Log[$CellContext`x]^2, $CellContext`x^$CellContext`r}; \
$CellContext`caso = "p==q==0"]; If[
            
            And[$CellContext`p == $CellContext`r, $CellContext`p == 
             0, $CellContext`q != 0], $CellContext`f = {1, 
               Log[$CellContext`x], $CellContext`x^$CellContext`q, 
               Log[$CellContext`x]^2}; $CellContext`caso = "p==r==0"]; If[
            
            And[$CellContext`q == $CellContext`r, $CellContext`q == 
             0, $CellContext`p != 
             0], $CellContext`f = {1, $CellContext`x^$CellContext`p, 
               Log[$CellContext`x], Log[$CellContext`x]^2}; $CellContext`caso = 
             "q==r==0"]; If[
            
            And[$CellContext`p == $CellContext`q == $CellContext`r, \
$CellContext`p != 
             0], $CellContext`f = {
              1, $CellContext`x^$CellContext`p, $CellContext`x^$CellContext`p 
               Log[$CellContext`x], $CellContext`x^$CellContext`p 
               Log[$CellContext`x]^2}; $CellContext`caso = "p=q=r"]; If[
            
            And[$CellContext`p == 0, $CellContext`q == 0, $CellContext`r == 
             0], $CellContext`f = {1, 
               Log[$CellContext`x], Log[$CellContext`x]^2, 
               Log[$CellContext`x]^3}; $CellContext`caso = 
             "p=q=r==0"]; $CellContext`m = 
           Outer[Times, $CellContext`f, $CellContext`f]; $CellContext`iinfo = 
           Simplify[
             Inverse[
             ReplaceAll[$CellContext`m, $CellContext`x -> $CellContext`\
\[Epsilon]] $CellContext`w0 + 
              ReplaceAll[$CellContext`m, $CellContext`x -> $CellContext`s1] \
$CellContext`w1 + 
              ReplaceAll[$CellContext`m, $CellContext`x -> $CellContext`s2] \
$CellContext`w2 + 
              ReplaceAll[$CellContext`m, $CellContext`x -> 1] (
                1 - ($CellContext`w0 + $CellContext`w1 + $CellContext`w2))], 
             Assumptions -> {
               
               Element[{$CellContext`s1, $CellContext`s2, $CellContext`w0, \
$CellContext`w1, $CellContext`w2}, 
                Reals], $CellContext`\[Epsilon] < $CellContext`s1 < 
               1, $CellContext`\[Epsilon] < $CellContext`s2 < 1, 
               0 <= $CellContext`w0 <= 1, 0 <= $CellContext`w1 <= 1, 
               0 <= $CellContext`w2 <= 1, 
               0 <= $CellContext`w0 + $CellContext`w1 + $CellContext`w2 <= 
               1}]; Which[$CellContext`\[Mu] == 
            "U[\[Epsilon],1]", $CellContext`A = Integrate[Dot[
                Transpose[{$CellContext`f}], {$CellContext`f}] (1/(
               1 - $CellContext`\[Epsilon])), {$CellContext`x, $CellContext`\
\[Epsilon], 1}, Assumptions -> 
              Element[{$CellContext`x}, Reals]], $CellContext`\[Mu] == 
            "U[1,1.2]", $CellContext`A = Integrate[Dot[
                Transpose[{$CellContext`f}], {$CellContext`f}] (1/(
               1 - $CellContext`\[Epsilon])), {$CellContext`x, 1, 1.2}, 
              Assumptions -> 
              Element[{$CellContext`x}, Reals]], $CellContext`\[Mu] == 
            "incr[1,1.2]", $CellContext`A = Integrate[Dot[
                
                Transpose[{$CellContext`f}], {$CellContext`f}] \
($CellContext`x - 1), {$CellContext`x, 1, 1.2}, Assumptions -> 
              Element[{$CellContext`x}, Reals]], $CellContext`\[Mu] == 
            "decr[1,1.2]", $CellContext`A = Integrate[Dot[
                Transpose[{$CellContext`f}], {$CellContext`f}] (
               1.2 - $CellContext`x), {$CellContext`x, 1, 1.2}, Assumptions -> 
              Element[{$CellContext`x}, Reals]]]; $CellContext`II12 = 
           Dot[$CellContext`f, $CellContext`iinfo, $CellContext`A, \
$CellContext`iinfo, $CellContext`f]; $CellContext`II\[Xi]12 = Tr[
             
             Dot[$CellContext`A, $CellContext`iinfo]]; $CellContext`c12 = \
$CellContext`II12 - $CellContext`II\[Xi]12; $CellContext`SolsMatrix3 = {{
             "U[\[Epsilon],1]", -2, -2, -2, {$CellContext`s1 -> 
               0.1000024944182534, $CellContext`s2 -> 
               0.6000026748376387, $CellContext`w0 -> 
               0.24928381026891377`, $CellContext`w1 -> 
               0.26852466122126045`, $CellContext`w2 -> 1.}}, {
             "U[\[Epsilon],1]", -2, -2, -1, {$CellContext`s1 -> 
               0.25974027352821577`, $CellContext`s2 -> 
               0.582887122648892, $CellContext`w0 -> 
               0.5822524365729383, $CellContext`w1 -> 
               0.00043583905496792863`, $CellContext`w2 -> 
               0.9196419011577985}}, {
             "U[\[Epsilon],1]", -2, -2, -0.5, {$CellContext`s1 -> 
               0.06185746556398967, $CellContext`s2 -> 
               0.5673423767021852, $CellContext`w0 -> 
               0.8913339830757765, $CellContext`w1 -> 
               0.10781321404661237`, $CellContext`w2 -> 
               0.00008237602804730657}}, {
             "U[\[Epsilon],1]", -2, -2, 
              0, {$CellContext`s1 -> 0.09999999999999946, $CellContext`s2 -> 
               0.6000000000000001, $CellContext`w0 -> 
               0.2500000000000033, $CellContext`w1 -> 
               0.24999999999999953`, $CellContext`w2 -> 
               0.24999999999999847`}}, {
             "U[\[Epsilon],1]", -2, -2, 
              0.5, {$CellContext`s1 -> 0.015756595560279675`, $CellContext`s2 -> 
               0.6682946570976741, $CellContext`w0 -> 
               2.4743477146446483`*^-7, $CellContext`w1 -> 
               0.5630439990639083, $CellContext`w2 -> 
               0.18323088612139682`}}, {
             "U[\[Epsilon],1]", -2, -2, 
              1, {$CellContext`s1 -> 0.008025158021366535, $CellContext`s2 -> 
               0.7452410680832264, $CellContext`w0 -> 
               3.4256552883324715`*^-6, $CellContext`w1 -> 
               0.49777351710073464`, $CellContext`w2 -> 
               0.14207549073689643`}}, {
             "U[\[Epsilon],1]", -2, -2, 
              2, {$CellContext`s1 -> 0.01072106632850079, $CellContext`s2 -> 
               0.8123880783683479, $CellContext`w0 -> 1., $CellContext`w1 -> 
               0.146513163639602, $CellContext`w2 -> 0.12083384500945005`}}, {
             "U[\[Epsilon],1]", -2, -2, 
              3, {$CellContext`s1 -> 0.09630031014804796, $CellContext`s2 -> 
               0.6135188853274731, $CellContext`w0 -> 
               0.14762249999827812`, $CellContext`w1 -> 
               0.2421829038697731, $CellContext`w2 -> 0.2448260004663033}}, {
             "U[\[Epsilon],1]", -2, -1, -1, {$CellContext`s1 -> 
               0.0903769097564248, $CellContext`s2 -> 
               0.5936659462069591, $CellContext`w0 -> 
               0.9795545913613166, $CellContext`w1 -> 
               0.018425663074583987`, $CellContext`w2 -> 0.}}, {
             "U[\[Epsilon],1]", -2, -1, -0.5, {$CellContext`s1 -> 
               0.018255244640586754`, $CellContext`s2 -> 
               0.5505242847194579, $CellContext`w0 -> 
               3.2006436928012157`*^-7, $CellContext`w1 -> 
               0.5222510192349413, $CellContext`w2 -> 0.2291195092732812}}, {
             "U[\[Epsilon],1]", -2, -1, 
              0, {$CellContext`s1 -> 0.014438063394886898`, $CellContext`s2 -> 
               0.5888115543136325, $CellContext`w0 -> 
               1.4571163396615396`*^-6, $CellContext`w1 -> 
               0.5505151953029296, $CellContext`w2 -> 
               0.20994919596249118`}}, {
             "U[\[Epsilon],1]", -2, -1, 
              0.5, {$CellContext`s1 -> 0.0002900088892747613, $CellContext`s2 -> 
               0.3339160507832102, $CellContext`w0 -> 
               0.25113659286117807`, $CellContext`w1 -> 
               0.01556192937791547, $CellContext`w2 -> 0.4143437529536156}}, {
             "U[\[Epsilon],1]", -2, -1, 
              1, {$CellContext`s1 -> 0.00022405638424667686`, $CellContext`s2 -> 
               0.37288092908477144`, $CellContext`w0 -> 
               0.2249092005751083, $CellContext`w1 -> 
               0.014989355024145928`, $CellContext`w2 -> 
               0.4460197148617625}}, {
             "U[\[Epsilon],1]", -2, -1, 
              2, {$CellContext`s1 -> 0.10526232441858363`, $CellContext`s2 -> 
               0.4871614029758369, $CellContext`w0 -> 1., $CellContext`w1 -> 
               0.3074929102619064, $CellContext`w2 -> 0.2834042450360516}}, {
             "U[\[Epsilon],1]", -2, -1, 
              3, {$CellContext`s1 -> 0.05578259360289715, $CellContext`s2 -> 
               0.5778711137542443, $CellContext`w0 -> 
               0.587225313092417, $CellContext`w1 -> 
               0.27731944603787373`, $CellContext`w2 -> 
               0.17815841394569715`}}, {
             "U[\[Epsilon],1]", -2, -0.5, -0.5, {$CellContext`s1 -> 
               0.02073433668200244, $CellContext`s2 -> 
               0.5603956100766461, $CellContext`w0 -> 
               5.2869907950817735`*^-6, $CellContext`w1 -> 
               0.5239378313626453, $CellContext`w2 -> 0.2282637081421289}}, {
             "U[\[Epsilon],1]", -2, -0.5, 
              0, {$CellContext`s1 -> 0.0008300991680565199, $CellContext`s2 -> 
               0.12664512743837356`, $CellContext`w0 -> 
               0.20975153101526894`, $CellContext`w1 -> 
               0.03996908694840607, $CellContext`w2 -> 0.361782784093633}}, {
             "U[\[Epsilon],1]", -2, -0.5, 
              0.5, {$CellContext`s1 -> 0.0008754812991157631, $CellContext`s2 -> 
               0.27147219777127035`, $CellContext`w0 -> 
               0.19649718543509354`, $CellContext`w1 -> 
               0.04343242260876308, $CellContext`w2 -> 0.4161783256230216}}, {
             "U[\[Epsilon],1]", -2, -0.5, 
              1, {$CellContext`s1 -> 0.0004496881116449746, $CellContext`s2 -> 
               0.38290486576388666`, $CellContext`w0 -> 
               0.239627467584594, $CellContext`w1 -> 
               0.029179535323762027`, $CellContext`w2 -> 
               0.42657081653843654`}}, {
             "U[\[Epsilon],1]", -2, -0.5, 
              2, {$CellContext`s1 -> 
               0.000037006360738739625`, $CellContext`s2 -> 
               0.4577619241003752, $CellContext`w0 -> 
               0.26167799611427717`, $CellContext`w1 -> 
               0.022965328960835477`, $CellContext`w2 -> 
               0.446804174111146}}, {
             "U[\[Epsilon],1]", -2, -0.5, 
              3, {$CellContext`s1 -> 0.1020732623751762, $CellContext`s2 -> 
               0.5945843257051429, $CellContext`w0 -> 1., $CellContext`w1 -> 
               0.293568486385869, $CellContext`w2 -> 0.28254940457012545`}}, {
             "U[\[Epsilon],1]", -2, 0, 
              0, {$CellContext`s1 -> 0.0016425305429961642`, $CellContext`s2 -> 
               0.18900602957565263`, $CellContext`w0 -> 
               0.14653055092814363`, $CellContext`w1 -> 
               0.06918228877760907, $CellContext`w2 -> 
               0.39392748151237467`}}, {
             "U[\[Epsilon],1]", -2, 0, 
              0.5, {$CellContext`s1 -> 0.002511483597895334, $CellContext`s2 -> 
               0.29918276865004767`, $CellContext`w0 -> 
               0.14116551734541385`, $CellContext`w1 -> 
               0.09190456860758915, $CellContext`w2 -> 
               0.43220326917567026`}}, {
             "U[\[Epsilon],1]", -2, 0, 
              1, {$CellContext`s1 -> 0.0005954863900300963, $CellContext`s2 -> 
               0.3000794928610373, $CellContext`w0 -> 
               0.11323371187977001`, $CellContext`w1 -> 
               0.08421827104056288, $CellContext`w2 -> 0.4660290013100134}}, {
             "U[\[Epsilon],1]", -2, 0, 
              2, {$CellContext`s1 -> 0.0004645638143088822, $CellContext`s2 -> 
               0.30861672661810324`, $CellContext`w0 -> 
               0.03175773997232557, $CellContext`w1 -> 
               0.09523167249604857, $CellContext`w2 -> 0.5580759493166665}}, {
             "U[\[Epsilon],1]", -2, 0, 
              3, {$CellContext`s1 -> 0.0030384987334546865`, $CellContext`s2 -> 
               0.5312453886942681, $CellContext`w0 -> 
               0.22724010108694298`, $CellContext`w1 -> 
               0.19679334069510282`, $CellContext`w2 -> 
               0.32016094767398273`}}, {
             "U[\[Epsilon],1]", -2, 0.5, 
              0.5, {$CellContext`s1 -> 0.0006904906591317407, $CellContext`s2 -> 
               0.2129991547875979, $CellContext`w0 -> 
               0.005230536442296626, $CellContext`w1 -> 
               0.11072025533635904`, $CellContext`w2 -> 
               0.5043758316720292}}, {
             "U[\[Epsilon],1]", -2, 0.5, 
              1, {$CellContext`s1 -> 0.0009318885830567842, $CellContext`s2 -> 
               0.2976807075080569, $CellContext`w0 -> 
               0.004326460794654497, $CellContext`w1 -> 
               0.14458220501957206`, $CellContext`w2 -> 
               0.5193319713125883}}, {
             "U[\[Epsilon],1]", -2, 0.5, 
              2, {$CellContext`s1 -> 0.018497017129060944`, $CellContext`s2 -> 
               0.5319972614831119, $CellContext`w0 -> 
               0.19264245534481392`, $CellContext`w1 -> 
               0.22426039614250515`, $CellContext`w2 -> 
               0.35205430904408613`}}, {
             "U[\[Epsilon],1]", -2, 0.5, 
              3, {$CellContext`s1 -> -0.01183599432455297, $CellContext`s2 -> 
               0.5307310220321914, $CellContext`w0 -> 
               0.22600440276047293`, $CellContext`w1 -> 
               0.20295684155108418`, $CellContext`w2 -> 
               0.34583606367690445`}}, {
             "U[\[Epsilon],1]", -2, 1, 
              1, {$CellContext`s1 -> -0.009857421164473835, $CellContext`s2 -> 
               0.46059794848021873`, $CellContext`w0 -> 
               0.1244579922185846, $CellContext`w1 -> 
               0.18890513455945207`, $CellContext`w2 -> 
               0.42091826861119264`}}, {
             "U[\[Epsilon],1]", -2, 1, 
              2, {$CellContext`s1 -> -0.35802510408099086`, $CellContext`s2 -> 
               0.36885648125082887`, $CellContext`w0 -> 
               0.11034810172222669`, $CellContext`w1 -> 
               0.08761190940642505, $CellContext`w2 -> 0.5080034896400721}}, {
             "U[\[Epsilon],1]", -2, 1, 
              3, {$CellContext`s1 -> -0.9441534030882162, $CellContext`s2 -> 
               0.5655845041075797, $CellContext`w0 -> 
               0.004557047006065772, $CellContext`w1 -> 
               0.15645797405018744`, $CellContext`w2 -> 
               0.5791094787127486}}, {
             "U[\[Epsilon],1]", -2, 2, 
              2, {$CellContext`s1 -> 0.005792661788876881, $CellContext`s2 -> 
               0.6004735714030709, $CellContext`w0 -> 
               0.003850349036432102, $CellContext`w1 -> 
               0.3216083897653769, $CellContext`w2 -> 
               0.45875770092776275`}}, {
             "U[\[Epsilon],1]", -2, 2, 
              3, {$CellContext`s1 -> 0.007817674718127757, $CellContext`s2 -> 
               0.6581712310940281, $CellContext`w0 -> 
               0.003854801833870728, $CellContext`w1 -> 
               0.3596863786799019, $CellContext`w2 -> 0.4400841305297545}}, {
             "U[\[Epsilon],1]", -2, 3, 
              3, {$CellContext`s1 -> 0.014145036078891027`, $CellContext`s2 -> 
               0.7078574279272174, $CellContext`w0 -> 
               0.003846143824938925, $CellContext`w1 -> 
               0.4003259699545613, $CellContext`w2 -> 0.4151262020467994}}, {
             "U[\[Epsilon],1]", -1, -1, -1, {$CellContext`s1 -> 
               0.1562460396504281, $CellContext`s2 -> 
               0.6336879407113828, $CellContext`w0 -> 
               0.801999780258252, $CellContext`w1 -> 
               3.786360350298354*^-7, $CellContext`w2 -> 
               0.11033891404759075`}}, {
             "U[\[Epsilon],1]", -1, -1, -0.5, {$CellContext`s1 -> 
               0.0019844689432300007`, $CellContext`s2 -> 
               0.5300964832790146, $CellContext`w0 -> 
               0.000012173871929747737`, $CellContext`w1 -> 
               0.36988463644260305`, $CellContext`w2 -> 
               0.31222790022861163`}}, {
             "U[\[Epsilon],1]", -1, -1, 
              0, {$CellContext`s1 -> 0.00046765923279753097`, $CellContext`s2 -> 
               0.07066098561323274, $CellContext`w0 -> 
               0.19179431608140604`, $CellContext`w1 -> 
               0.03310817838664879, $CellContext`w2 -> 0.3492841584022759}}, {
             "U[\[Epsilon],1]", -1, -1, 
              0.5, {$CellContext`s1 -> 
               0.00025472682982838677`, $CellContext`s2 -> 
               0.033067539256663496`, $CellContext`w0 -> 
               0.055861900972329466`, $CellContext`w1 -> 
               0.02989910702508252, $CellContext`w2 -> 
               0.38786128339127424`}}, {
             "U[\[Epsilon],1]", -1, -1, 
              1, {$CellContext`s1 -> 0.00033410421358148935`, $CellContext`s2 -> 
               0.2881236018163984, $CellContext`w0 -> 
               0.15537750126005073`, $CellContext`w1 -> 
               0.026460696971366153`, $CellContext`w2 -> 
               0.4702905565909543}}, {
             "U[\[Epsilon],1]", -1, -1, 
              2, {$CellContext`s1 -> -0.02289349047094874, $CellContext`s2 -> 
               0.7038592457722295, $CellContext`w0 -> 
               0.09313498420489266, $CellContext`w1 -> 
               0.14677972319541566`, $CellContext`w2 -> 
               0.13041359282674342`}}, {
             "U[\[Epsilon],1]", -1, -1, 
              3, {$CellContext`s1 -> 0.007275110211018277, $CellContext`s2 -> 
               0.38937202103110363`, $CellContext`w0 -> 1., $CellContext`w1 -> 
               0.12196045286699755`, $CellContext`w2 -> 
               0.05587444703699491}}, {
             "U[\[Epsilon],1]", -1, -0.5, -0.5, {$CellContext`s1 -> 
               0.0016373745204984254`, $CellContext`s2 -> 
               0.07587589239515033, $CellContext`w0 -> 
               0.2933024335265997, $CellContext`w1 -> 
               0.0590622020414629, $CellContext`w2 -> 
               0.27576645275360995`}}, {
             "U[\[Epsilon],1]", -1, -0.5, 
              0, {$CellContext`s1 -> 0.0007473442977283651, $CellContext`s2 -> 
               0.11161686861104055`, $CellContext`w0 -> 
               0.21021605315002098`, $CellContext`w1 -> 
               0.034131796595917176`, $CellContext`w2 -> 
               0.34252034861870084`}}, {
             "U[\[Epsilon],1]", -1, -0.5, 
              0.5, {$CellContext`s1 -> 0.0007494791211488156, $CellContext`s2 -> 
               0.2052784052473917, $CellContext`w0 -> 
               0.14693209683738528`, $CellContext`w1 -> 
               0.047797370922086434`, $CellContext`w2 -> 
               0.419192901155367}}, {
             "U[\[Epsilon],1]", -1, -0.5, 
              1, {$CellContext`s1 -> 0.0005780530554600165, $CellContext`s2 -> 
               0.27470016983485673`, $CellContext`w0 -> 
               0.13648084721843248`, $CellContext`w1 -> 
               0.047064235247747825`, $CellContext`w2 -> 
               0.46473759602157616`}}, {
             "U[\[Epsilon],1]", -1, -0.5, 
              2, {$CellContext`s1 -> 0.0004653357167763171, $CellContext`s2 -> 
               0.2677582010133196, $CellContext`w0 -> 
               0.06508554269201265, $CellContext`w1 -> 
               0.051727492371221026`, $CellContext`w2 -> 
               0.5515295588640092}}, {
             "U[\[Epsilon],1]", -1, -0.5, 
              3, {$CellContext`s1 -> 0.08693386518236883, $CellContext`s2 -> 
               0.5946208813875554, $CellContext`w0 -> 1., $CellContext`w1 -> 
               0.3033719712519276, $CellContext`w2 -> 0.2711995669132758}}, {
             "U[\[Epsilon],1]", -1, 0, 
              0, {$CellContext`s1 -> 0.0009450148544233588, $CellContext`s2 -> 
               0.1365708766949782, $CellContext`w0 -> 
               0.1186761098534369, $CellContext`w1 -> 
               0.06410932982114427, $CellContext`w2 -> 0.3865447263965713}}, {
             "U[\[Epsilon],1]", -1, 0, 
              0.5, {$CellContext`s1 -> 0.0007786992518932802, $CellContext`s2 -> 
               0.14243327354200025`, $CellContext`w0 -> 
               0.029131844809719434`, $CellContext`w1 -> 
               0.0809883107912163, $CellContext`w2 -> 0.4630167190110013}}, {
             "U[\[Epsilon],1]", -1, 0, 
              1, {$CellContext`s1 -> 0.0010464979565518884`, $CellContext`s2 -> 
               0.19465302834905376`, $CellContext`w0 -> 
               0.009562041463764877, $CellContext`w1 -> 
               0.09585689727304456, $CellContext`w2 -> 0.5165455307340968}}, {
             "U[\[Epsilon],1]", -1, 0, 
              2, {$CellContext`s1 -> 0.02762081636781673, $CellContext`s2 -> 
               0.5368114450443306, $CellContext`w0 -> 
               0.22995225743696796`, $CellContext`w1 -> 
               0.20851884170987325`, $CellContext`w2 -> 
               0.32366850186971996`}}, {
             "U[\[Epsilon],1]", -1, 0, 
              3, {$CellContext`s1 -> 0.0013886358684241655`, $CellContext`s2 -> 
               0.3807094520619757, $CellContext`w0 -> 
               0.00987424933960414, $CellContext`w1 -> 
               0.125708704567154, $CellContext`w2 -> 0.5938715057957964}}, {
             "U[\[Epsilon],1]", -1, 0.5, 
              0.5, {$CellContext`s1 -> 0.001819236512796279, $CellContext`s2 -> 
               0.2254428444441998, $CellContext`w0 -> 
               0.008295765147250583, $CellContext`w1 -> 
               0.1231804417942959, $CellContext`w2 -> 
               0.49945546390340073`}}, {
             "U[\[Epsilon],1]", -1, 0.5, 
              1, {$CellContext`s1 -> 0.0027638078227829907`, $CellContext`s2 -> 
               0.30788268956450165`, $CellContext`w0 -> 
               0.007840412723222697, $CellContext`w1 -> 
               0.15585447049631346`, $CellContext`w2 -> 
               0.5119092270499335}}, {
             "U[\[Epsilon],1]", -1, 0.5, 
              2, {$CellContext`s1 -> 0.0037449179621752236`, $CellContext`s2 -> 
               0.42272604641015604`, $CellContext`w0 -> 
               0.007799492163270739, $CellContext`w1 -> 
               0.19626205904500624`, $CellContext`w2 -> 0.523945702989309}}, {
             "U[\[Epsilon],1]", -1, 0.5, 
              3, {$CellContext`s1 -> -0.011083895883503947`, $CellContext`s2 -> 
               0.5312530045265003, $CellContext`w0 -> 
               0.2262948618812744, $CellContext`w1 -> 
               0.20320564176742545`, $CellContext`w2 -> 
               0.3459979698658754}}, {
             "U[\[Epsilon],1]", -1, 1, 
              1, {$CellContext`s1 -> -0.007832482353567767, $CellContext`s2 -> 
               0.46180032568870255`, $CellContext`w0 -> 
               0.1233132805646064, $CellContext`w1 -> 
               0.19093872357726932`, $CellContext`w2 -> 
               0.4206072095260063}}, {
             "U[\[Epsilon],1]", -1, 1, 
              2, {$CellContext`s1 -> -0.3228249646444003, $CellContext`s2 -> 
               0.37905786604521324`, $CellContext`w0 -> 
               0.10226006948279953`, $CellContext`w1 -> 
               0.09950217925579724, $CellContext`w2 -> 0.509497692315339}}, {
             "U[\[Epsilon],1]", -1, 1, 
              3, {$CellContext`s1 -> -0.004708647487449331, $CellContext`s2 -> 
               0.5682569951046367, $CellContext`w0 -> 
               0.009646255528219298, $CellContext`w1 -> 
               0.2718715031529814, $CellContext`w2 -> 0.494630738076897}}, {
             "U[\[Epsilon],1]", -1, 2, 
              2, {$CellContext`s1 -> 0.019961332013880867`, $CellContext`s2 -> 
               0.60153996303473, $CellContext`w0 -> 
               0.006610860888130398, $CellContext`w1 -> 
               0.32268894985718755`, $CellContext`w2 -> 
               0.4561402262542807}}, {
             "U[\[Epsilon],1]", -1, 2, 
              3, {$CellContext`s1 -> 0.027260045965089272`, $CellContext`s2 -> 
               0.6587702329350154, $CellContext`w0 -> 
               0.0066109244658587064`, $CellContext`w1 -> 
               0.35998988558609685`, $CellContext`w2 -> 
               0.43794249228775445`}}, {
             "U[\[Epsilon],1]", -1, 3, 
              3, {$CellContext`s1 -> 0.044528600918132114`, $CellContext`s2 -> 
               0.7081301700724649, $CellContext`w0 -> 
               0.006592921240008629, $CellContext`w1 -> 
               0.39979638419120134`, $CellContext`w2 -> 0.413569752084042}}, {
             "U[\[Epsilon],1]", -0.5, -0.5, -0.5, {$CellContext`s1 -> 
               0.001062000860737669, $CellContext`s2 -> 
               0.07603268907461241, $CellContext`w0 -> 
               0.19364243854424332`, $CellContext`w1 -> 
               0.0491826649985085, $CellContext`w2 -> 
               0.33876798172599515`}}, {
             "U[\[Epsilon],1]", -0.5, -0.5, 
              0, {$CellContext`s1 -> 0.0012968064689768215`, $CellContext`s2 -> 
               0.1316084727523914, $CellContext`w0 -> 
               0.15928549189446717`, $CellContext`w1 -> 
               0.056464007429707586`, $CellContext`w2 -> 
               0.3667862088922202}}, {
             "U[\[Epsilon],1]", -0.5, -0.5, 
              0.5, {$CellContext`s1 -> 0.0009146430031831467, $CellContext`s2 -> 
               0.16892510736924285`, $CellContext`w0 -> 
               0.10163607280135238`, $CellContext`w1 -> 
               0.06475524205555018, $CellContext`w2 -> 0.4247346603532212}}, {
             "U[\[Epsilon],1]", -0.5, -0.5, 
              1, {$CellContext`s1 -> 0.000774254265992289, $CellContext`s2 -> 
               0.14196092892169623`, $CellContext`w0 -> 
               0.0200511631140966, $CellContext`w1 -> 
               0.07128925351922345, $CellContext`w2 -> 0.5033213395618117}}, {
             "U[\[Epsilon],1]", -0.5, -0.5, 
              2, {$CellContext`s1 -> 0.0009347424881924516, $CellContext`s2 -> 
               0.2276603717317066, $CellContext`w0 -> 
               0.01566037149692276, $CellContext`w1 -> 
               0.07936124749377889, $CellContext`w2 -> 0.5752490702457923}}, {
             "U[\[Epsilon],1]", -0.5, -0.5, 
              3, {$CellContext`s1 -> 0.009132877339035252, $CellContext`s2 -> 
               0.5423813332115536, $CellContext`w0 -> 
               0.22856954395749307`, $CellContext`w1 -> 
               0.17935370157158553`, $CellContext`w2 -> 
               0.2908561435916411}}, {
             "U[\[Epsilon],1]", -0.5, 0, 
              0, {$CellContext`s1 -> 0.0010633286540648228`, $CellContext`s2 -> 
               0.08994515754138648, $CellContext`w0 -> 
               0.014004118393914078`, $CellContext`w1 -> 
               0.07796663734596258, $CellContext`w2 -> 
               0.42391330281252093`}}, {
             "U[\[Epsilon],1]", -0.5, 0, 
              0.5, {$CellContext`s1 -> 
               0.0017938454760356764`, $CellContext`s2 -> 
               0.15593061643598963`, $CellContext`w0 -> 
               0.014442456201161082`, $CellContext`w1 -> 
               0.10049333110208547`, $CellContext`w2 -> 
               0.47361686130538366`}}, {
             "U[\[Epsilon],1]", -0.5, 0, 
              1, {$CellContext`s1 -> 0.0024028538970969236`, $CellContext`s2 -> 
               0.22168469557703738`, $CellContext`w0 -> 
               0.014948009636323346`, $CellContext`w1 -> 
               0.11827998327071453`, $CellContext`w2 -> 0.507037600127411}}, {
             "U[\[Epsilon],1]", -0.5, 0, 
              2, {$CellContext`s1 -> 0.003156230014693865, $CellContext`s2 -> 
               0.3271733085586105, $CellContext`w0 -> 
               0.015837505846617576`, $CellContext`w1 -> 
               0.14138174229329123`, $CellContext`w2 -> 0.545865824368461}}, {
             "U[\[Epsilon],1]", -0.5, 0, 
              3, {$CellContext`s1 -> 0.0036387314649414513`, $CellContext`s2 -> 
               0.40440318866559516`, $CellContext`w0 -> 
               0.016382526888927378`, $CellContext`w1 -> 
               0.15594838250671714`, $CellContext`w2 -> 
               0.5680137986038966}}, {
             "U[\[Epsilon],1]", -0.5, 0.5, 
              0.5, {$CellContext`s1 -> 0.004278829155993541, $CellContext`s2 -> 
               0.24601337883666471`, $CellContext`w0 -> 
               0.014120100599841772`, $CellContext`w1 -> 
               0.14114755633272713`, $CellContext`w2 -> 
               0.49129213663209353`}}, {
             "U[\[Epsilon],1]", -0.5, 0.5, 
              1, {$CellContext`s1 -> 0.007075779919248994, $CellContext`s2 -> 
               0.3246738879557299, $CellContext`w0 -> 
               0.014097371361802257`, $CellContext`w1 -> 
               0.17342097110789767`, $CellContext`w2 -> 
               0.4998323855527626}}, {
             "U[\[Epsilon],1]", -0.5, 0.5, 
              2, {$CellContext`s1 -> -0.027646971800146664`, $CellContext`s2 -> 
               0.46339510584589616`, $CellContext`w0 -> 
               0.13402603326641488`, $CellContext`w1 -> 
               0.1713469442514612, $CellContext`w2 -> 
               0.43714202647172096`}}, {
             "U[\[Epsilon],1]", -0.5, 0.5, 
              3, {$CellContext`s1 -> -0.022829279259623192`, $CellContext`s2 -> 
               0.5225616054871638, $CellContext`w0 -> 
               0.21540910794353849`, $CellContext`w1 -> 
               0.1953156125131827, $CellContext`w2 -> 
               0.36091880205279936`}}, {
             "U[\[Epsilon],1]", -0.5, 1, 
              1, {$CellContext`s1 -> 0.013502699678024331`, $CellContext`s2 -> 
               0.40607658150165277`, $CellContext`w0 -> 
               0.013704130299134436`, $CellContext`w1 -> 
               0.21524441093582547`, $CellContext`w2 -> 
               0.4912794919861251}}, {
             "U[\[Epsilon],1]", -0.5, 1, 
              2, {$CellContext`s1 -> 0.023181042253862284`, $CellContext`s2 -> 
               0.5123457686922397, $CellContext`w0 -> 
               0.013876984326616713`, $CellContext`w1 -> 
               0.26663138388547947`, $CellContext`w2 -> 
               0.4797028317633618}}, {
             "U[\[Epsilon],1]", -0.5, 1, 
              3, {$CellContext`s1 -> 0.02822664857799684, $CellContext`s2 -> 
               0.5792346176663133, $CellContext`w0 -> 
               0.014248207904878903`, $CellContext`w1 -> 
               0.29709215706653563`, $CellContext`w2 -> 
               0.4733818951251523}}, {
             "U[\[Epsilon],1]", -0.5, 2, 
              2, {$CellContext`s1 -> 0.04837101060261524, $CellContext`s2 -> 
               0.6054860102780373, $CellContext`w0 -> 
               0.013724870611367224`, $CellContext`w1 -> 
               0.32763010150267485`, $CellContext`w2 -> 
               0.4478818295230971}}, {
             "U[\[Epsilon],1]", -0.5, 2, 
              3, {$CellContext`s1 -> 0.0646815613055013, $CellContext`s2 -> 
               0.6613966280563333, $CellContext`w0 -> 
               0.01393979140302169, $CellContext`w1 -> 
               0.3629112154326017, $CellContext`w2 -> 
               0.43071184736368245`}}, {
             "U[\[Epsilon],1]", -0.5, 3, 
              3, {$CellContext`s1 -> 0.09408290142478246, $CellContext`s2 -> 
               0.7097157756666699, $CellContext`w0 -> 
               0.014124233654281993`, $CellContext`w1 -> 
               0.40012618343162737`, $CellContext`w2 -> 
               0.4080007156291885}}, {
             "U[\[Epsilon],1]", 0, 0, 
              0, {$CellContext`s1 -> 0.0024301596067553208`, $CellContext`s2 -> 
               0.141918481424784, $CellContext`w0 -> 
               0.018071271823847185`, $CellContext`w1 -> 
               0.10444750827682103`, $CellContext`w2 -> 
               0.4506345475256236}}, {
             "U[\[Epsilon],1]", 0, 0, 
              0.5, {$CellContext`s1 -> 0.005022340631619306, $CellContext`s2 -> 
               0.2142813178448351, $CellContext`w0 -> 
               0.020508313812394395`, $CellContext`w1 -> 
               0.13492417460213593`, $CellContext`w2 -> 
               0.47567259756056535`}}, {
             "U[\[Epsilon],1]", 0, 0, 
              1, {$CellContext`s1 -> 0.007789161109139555, $CellContext`s2 -> 
               0.28326497826357216`, $CellContext`w0 -> 
               0.02217486477210147, $CellContext`w1 -> 
               0.16014272084122283`, $CellContext`w2 -> 
               0.49199301470509843`}}, {
             "U[\[Epsilon],1]", 0, 0, 
              2, {$CellContext`s1 -> 0.01172432236102131, $CellContext`s2 -> 
               0.38854530809910426`, $CellContext`w0 -> 
               0.024541624310461394`, $CellContext`w1 -> 
               0.19361475282279578`, $CellContext`w2 -> 
               0.5101181940841035}}, {
             "U[\[Epsilon],1]", 0, 0, 
              3, {$CellContext`s1 -> 0.014209563382762273`, $CellContext`s2 -> 
               0.4622943304235401, $CellContext`w0 -> 
               0.026051198661812297`, $CellContext`w1 -> 
               0.21451239716143697`, $CellContext`w2 -> 
               0.5203250915779651}}, {
             "U[\[Epsilon],1]", 0, 0.5, 
              0.5, {$CellContext`s1 -> 0.012278877122533607`, $CellContext`s2 -> 
               0.2944100359964941, $CellContext`w0 -> 
               0.024891865032790058`, $CellContext`w1 -> 
               0.17513107820379936`, $CellContext`w2 -> 
               0.47712929514047436`}}, {
             "U[\[Epsilon],1]", 0, 0.5, 
              1, {$CellContext`s1 -> 0.020966690954845744`, $CellContext`s2 -> 
               0.3668209750947481, $CellContext`w0 -> 
               0.027866089555401208`, $CellContext`w1 -> 
               0.20767283940109257`, $CellContext`w2 -> 
               0.47644374830894015`}}, {
             "U[\[Epsilon],1]", 0, 0.5, 
              2, {$CellContext`s1 -> 0.03440370253544034, $CellContext`s2 -> 
               0.4702882845460145, $CellContext`w0 -> 
               0.031667681865964165`, $CellContext`w1 -> 
               0.25033311764173066`, $CellContext`w2 -> 
               0.4738231677868778}}, {
             "U[\[Epsilon],1]", 0, 0.5, 
              3, {$CellContext`s1 -> 0.04268405943203971, $CellContext`s2 -> 
               0.5389080547443402, $CellContext`w0 -> 
               0.03404350154143117, $CellContext`w1 -> 
               0.2767953001806287, $CellContext`w2 -> 0.4719619246416701}}, {
             "U[\[Epsilon],1]", 0, 1, 
              1, {$CellContext`s1 -> 0.03707261414254044, $CellContext`s2 -> 
               0.4384735532796911, $CellContext`w0 -> 
               0.03192468555890874, $CellContext`w1 -> 
               0.24394767299584383`, $CellContext`w2 -> 
               0.4644067015236151}}, {
             "U[\[Epsilon],1]", 0, 1, 
              2, {$CellContext`s1 -> 0.06267434948617677, $CellContext`s2 -> 
               0.5358357921060315, $CellContext`w0 -> 
               0.036930953783497346`, $CellContext`w1 -> 
               0.2899857778622378, $CellContext`w2 -> 
               0.44911031686949193`}}, {
             "U[\[Epsilon],1]", 0, 1, 
              3, {$CellContext`s1 -> 0.0786400509783214, $CellContext`s2 -> 
               0.5981984102281647, $CellContext`w0 -> 
               0.03988449887487439, $CellContext`w1 -> 
               0.3185378677864317, $CellContext`w2 -> 0.4400588071908109}}, {
             "U[\[Epsilon],1]", 0, 2, 
              2, {$CellContext`s1 -> 0.1091790464316783, $CellContext`s2 -> 
               0.6200454710523168, $CellContext`w0 -> 
               0.04352090485747768, $CellContext`w1 -> 
               0.33725636156551686`, $CellContext`w2 -> 
               0.42091456779702124`}}, {
             "U[\[Epsilon],1]", 0, 2, 
              3, {$CellContext`s1 -> 0.13979892208369277`, $CellContext`s2 -> 
               0.6721878636460661, $CellContext`w0 -> 
               0.04734571990215048, $CellContext`w1 -> 
               0.36614868900669, $CellContext`w2 -> 0.40485863522485394`}}, {
             "U[\[Epsilon],1]", 0, 3, 
              3, {$CellContext`s1 -> 0.18207586147484114`, $CellContext`s2 -> 
               0.7172317660621972, $CellContext`w0 -> 
               0.05181468558762369, $CellContext`w1 -> 
               0.39444633761830245`, $CellContext`w2 -> 
               0.3852477607712344}}, {
             "U[\[Epsilon],1]", 0.5, 0.5, 
              0.5, {$CellContext`s1 -> 0.02861203475913061, $CellContext`s2 -> 
               0.3659728350644654, $CellContext`w0 -> 
               0.03654700921244037, $CellContext`w1 -> 
               0.21469385483320919`, $CellContext`w2 -> 
               0.46241059891968267`}}, {
             "U[\[Epsilon],1]", 0.5, 0.5, 
              1, {$CellContext`s1 -> 0.047308475830257914`, $CellContext`s2 -> 
               0.4321824360834448, $CellContext`w0 -> 
               0.04532068013064321, $CellContext`w1 -> 
               0.24579201484938945`, $CellContext`w2 -> 
               0.4512896082981179}}, {
             "U[\[Epsilon],1]", 0.5, 0.5, 
              2, {$CellContext`s1 -> 0.07694295324728952, $CellContext`s2 -> 
               0.5264522053582884, $CellContext`w0 -> 
               0.05568053115713533, $CellContext`w1 -> 
               0.28629799264760125`, $CellContext`w2 -> 0.437161647590533}}, {
             "U[\[Epsilon],1]", 0.5, 0.5, 
              3, {$CellContext`s1 -> 0.09619926982689539, $CellContext`s2 -> 
               0.5883691642983887, $CellContext`w0 -> 
               0.06147639487280291, $CellContext`w1 -> 
               0.31207260336733755`, $CellContext`w2 -> 
               0.42858699228446884`}}, {
             "U[\[Epsilon],1]", 0.5, 1, 
              1, {$CellContext`s1 -> 0.07557744164682159, $CellContext`s2 -> 
               0.4927181248005481, $CellContext`w0 -> 
               0.05905686526804393, $CellContext`w1 -> 
               0.27382201344831075`, $CellContext`w2 -> 
               0.4334522062090777}}, {
             "U[\[Epsilon],1]", 0.5, 1, 
              2, {$CellContext`s1 -> 0.1191376092804582, $CellContext`s2 -> 
               0.5778502636617636, $CellContext`w0 -> 
               0.07498181165633339, $CellContext`w1 -> 
               0.30943053209179405`, $CellContext`w2 -> 
               0.4124599915929067}}, {
             "U[\[Epsilon],1]", 0.5, 1, 
              3, {$CellContext`s1 -> 0.14777834900865142`, $CellContext`s2 -> 
               0.63337057645366, $CellContext`w0 -> 
               0.08362787831106813, $CellContext`w1 -> 
               0.33256995667433725`, $CellContext`w2 -> 
               0.40008545272878243`}}, {
             "U[\[Epsilon],1]", 0.5, 2, 
              2, {$CellContext`s1 -> 0.18105564540926722`, $CellContext`s2 -> 
               0.6486703278671021, $CellContext`w0 -> 
               0.09713173508379493, $CellContext`w1 -> 
               0.33720714190059403`, $CellContext`w2 -> 
               0.3849564471881765}}, {
             "U[\[Epsilon],1]", 0.5, 2, 
              3, {$CellContext`s1 -> 0.22171272892816485`, $CellContext`s2 -> 
               0.6945181746257909, $CellContext`w0 -> 
               0.10910756786238963`, $CellContext`w1 -> 
               0.3556114400718027, $CellContext`w2 -> 
               0.36916732801241325`}}, {
             "U[\[Epsilon],1]", 0.5, 3, 
              3, {$CellContext`s1 -> 0.26997202753652927`, $CellContext`s2 -> 
               0.7338468044206274, $CellContext`w0 -> 
               0.12300490468914896`, $CellContext`w1 -> 
               0.37074022691916403`, $CellContext`w2 -> 
               0.3517234676860675}}, {
             "U[\[Epsilon],1]", 1, 1, 
              1, {$CellContext`s1 -> 0.11328137192658509`, $CellContext`s2 -> 
               0.5448114854663599, $CellContext`w0 -> 
               0.0807624299349957, $CellContext`w1 -> 
               0.2941270788930731, $CellContext`w2 -> 0.4119196962484898}}, {
             "U[\[Epsilon],1]", 1, 1, 
              2, {$CellContext`s1 -> 0.16873392898608494`, $CellContext`s2 -> 
               0.619084640886202, $CellContext`w0 -> 
               0.10505706500911287`, $CellContext`w1 -> 
               0.3200109009982035, $CellContext`w2 -> 0.3876352115989044}}, {
             "U[\[Epsilon],1]", 1, 1, 
              3, {$CellContext`s1 -> 0.2053188821468581, $CellContext`s2 -> 
               0.6681617046031143, $CellContext`w0 -> 
               0.11793130710931239`, $CellContext`w1 -> 
               0.3378047923348704, $CellContext`w2 -> 0.373558388369075}}, {
             "U[\[Epsilon],1]", 1, 2, 
              2, {$CellContext`s1 -> 0.23717414886481672`, $CellContext`s2 -> 
               0.6784666427354173, $CellContext`w0 -> 
               0.13772388533650035`, $CellContext`w1 -> 
               0.3340581813724376, $CellContext`w2 -> 
               0.36056442790472154`}}, {
             "U[\[Epsilon],1]", 1, 2, 
              3, {$CellContext`s1 -> 0.28176253711209936`, $CellContext`s2 -> 
               0.7183374628877306, $CellContext`w0 -> 
               0.154898865868264, $CellContext`w1 -> 
               0.3451011341318605, $CellContext`w2 -> 0.3451011341317452}}, {
             "U[\[Epsilon],1]", 1, 3, 
              3, {$CellContext`s1 -> 0.3102436609116182, $CellContext`s2 -> 
               0.7210037262483363, $CellContext`w0 -> 
               0.2421281620294739, $CellContext`w1 -> 
               0.49344067379943135`, $CellContext`w2 -> 0.47471430155266203`}}
             , {
             "U[\[Epsilon],1]", 2, 2, 
              2, {$CellContext`s1 -> 0.28805933457363114`, $CellContext`s2 -> 
               0.6878439128395103, $CellContext`w0 -> 
               0.25523531528354837`, $CellContext`w1 -> 
               0.4779187331605254, $CellContext`w2 -> 
               0.49335793942402967`}}, {
             "U[\[Epsilon],1]", 2, 2, 
              3, {$CellContext`s1 -> 0.3360396120269836, $CellContext`s2 -> 
               0.724097091424162, $CellContext`w0 -> 
               0.2783176226452647, $CellContext`w1 -> 
               0.46916965733916877`, $CellContext`w2 -> 
               0.45696089299624404`}}, {
             "U[\[Epsilon],1]", 2, 3, 
              3, {$CellContext`s1 -> 0.15848255364827754`, $CellContext`s2 -> 
               0.601608587638499, $CellContext`w0 -> 
               0.0335073944351538, $CellContext`w1 -> 
               0.14396034898652982`, $CellContext`w2 -> 0.304937988662767}}, {
             "U[\[Epsilon],1]", 3, 3, 
              3, {$CellContext`s1 -> 0.18912998247729887`, $CellContext`s2 -> 
               0.5653673403769958, $CellContext`w0 -> 
               0.019488125355814744`, $CellContext`w1 -> 
               0.1142981130944355, $CellContext`w2 -> 
               0.39227202818086193`}}, {
             "U[1,1.2]", -2, -2, -2, {$CellContext`s1 -> 
               0.10000002375570757`, $CellContext`s2 -> 
               0.6000000261424134, $CellContext`w0 -> 
               0.24999413038080082`, $CellContext`w1 -> 1., $CellContext`w2 -> 
               0.027086906930340725`}}, {
             "U[1,1.2]", -2, -2, -1, {$CellContext`s1 -> 
               0.09999999999683559, $CellContext`s2 -> 
               0.5999999999886578, $CellContext`w0 -> 
               0.2500000000567259, $CellContext`w1 -> 
               0.24999989867201766`, $CellContext`w2 -> 
               0.25000011806360495`}}, {
             "U[1,1.2]", -2, -2, -0.5, {$CellContext`s1 -> 
               0.10009450768988375`, $CellContext`s2 -> 
               0.600663765195361, $CellContext`w0 -> 
               0.24765373428887383`, $CellContext`w1 -> 
               0.2538201588632498, $CellContext`w2 -> 
               0.23513597237724462`}}, {
             "U[1,1.2]", -2, -2, 
              0, {$CellContext`s1 -> 0.07560594017936136, $CellContext`s2 -> 
               0.5786779848475366, $CellContext`w0 -> 
               0.4296813875974605, $CellContext`w1 -> 
               8.221649592374648*^-6, $CellContext`w2 -> 0.}}, {
             "U[1,1.2]", -2, -2, 
              0.5, {$CellContext`s1 -> 0.062423126355702845`, $CellContext`s2 -> 
               0.5879669333058049, $CellContext`w0 -> 
               0.5102006479895276, $CellContext`w1 -> 
               2.994595518831913*^-15, $CellContext`w2 -> 
               0.24196940164331907`}}, {
             "U[1,1.2]", -2, -2, 
              1, {$CellContext`s1 -> 0.006131375054680996, $CellContext`s2 -> 
               0.5857794092213628, $CellContext`w0 -> 
               0.46179354874261186`, $CellContext`w1 -> 
               0.04958564648153027, $CellContext`w2 -> 0.2367793279364692}}, {
             "U[1,1.2]", -2, -2, 
              2, {$CellContext`s1 -> 0.00010326168736535886`, $CellContext`s2 -> 
               0.5909854252802248, $CellContext`w0 -> 
               0.5082459687301235, $CellContext`w1 -> 
               0.0001313790703281084, $CellContext`w2 -> 
               0.24102455642688927`}}, {
             "U[1,1.2]", -2, -2, 
              3, {$CellContext`s1 -> 0.09999999999999898, $CellContext`s2 -> 
               0.5999999999999999, $CellContext`w0 -> 
               0.25000000000000294`, $CellContext`w1 -> 
               0.24999999999999717`, $CellContext`w2 -> 
               0.2499999999999999}}, {
             "U[1,1.2]", -2, -1, -1, {$CellContext`s1 -> 
               0.08692372683373335, $CellContext`s2 -> 
               0.555743017937699, $CellContext`w0 -> 
               0.3088620753099449, $CellContext`w1 -> 
               1.7225813702456715`*^-6, $CellContext`w2 -> 
               0.9499957843991746}}, {
             "U[1,1.2]", -2, -1, -0.5, {$CellContext`s1 -> 
               0.0024774267377772963`, $CellContext`s2 -> 
               0.47361354513471393`, $CellContext`w0 -> 
               9.079409450944953*^-6, $CellContext`w1 -> 
               0.5962979245717451, $CellContext`w2 -> 0.1503791185764149}}, {
             "U[1,1.2]", -2, -1, 
              0, {$CellContext`s1 -> 0.00010138284756229712`, $CellContext`s2 -> 
               0.5282937659378042, $CellContext`w0 -> 
               0.5245424554670787, $CellContext`w1 -> 
               0.037061952789987335`, $CellContext`w2 -> 
               0.18585498601387457`}}, {
             "U[1,1.2]", -2, -1, 
              0.5, {$CellContext`s1 -> -0.007983921094299351, $CellContext`s2 -> 
               0.5498738729502622, $CellContext`w0 -> 
               0.3203082842061919, $CellContext`w1 -> 
               0.22485824277989852`, $CellContext`w2 -> 0.2025}}, {
             "U[1,1.2]", -2, -1, 
              1, {$CellContext`s1 -> -0.17021075106273872`, $CellContext`s2 -> 
               0.17565851142453184`, $CellContext`w0 -> 
               0.5264806367618748, $CellContext`w1 -> 
               0.13728821957922255`, $CellContext`w2 -> 
               0.07292066379748172}}, {
             "U[1,1.2]", -2, -1, 
              2, {$CellContext`s1 -> -0.007972483443566925, $CellContext`s2 -> 
               0.008468858995720458, $CellContext`w0 -> 
               0.0011086341442541792`, $CellContext`w1 -> 
               0.07999383158937085, $CellContext`w2 -> 
               0.08906911785036269}}, {
             "U[1,1.2]", -2, -1, 
              3, {$CellContext`s1 -> -0.0407845965998094, $CellContext`s2 -> 
               0.02733176783135537, $CellContext`w0 -> 
               0.0007910249188153039, $CellContext`w1 -> 
               0.13153808245554072`, $CellContext`w2 -> 
               0.09652047198986657}}, {
             "U[1,1.2]", -2, -0.5, -0.5, {$CellContext`s1 -> 
               0.005686257196096867, $CellContext`s2 -> 
               0.49438457137399267`, $CellContext`w0 -> 
               8.499254912086407*^-6, $CellContext`w1 -> 
               0.5835325857407967, $CellContext`w2 -> 
               0.16321312339926908`}}, {
             "U[1,1.2]", -2, -0.5, 
              0, {$CellContext`s1 -> 0.004527530354927549, $CellContext`s2 -> 
               0.519543476187888, $CellContext`w0 -> 
               8.215570367902124*^-6, $CellContext`w1 -> 
               0.5667601819718183, $CellContext`w2 -> 
               0.18011343430062174`}}, {
             "U[1,1.2]", -2, -0.5, 
              0.5, {$CellContext`s1 -> 0.003004984712873813, $CellContext`s2 -> 
               0.5373914337729887, $CellContext`w0 -> 
               8.565865327788208*^-6, $CellContext`w1 -> 
               0.55266567196187, $CellContext`w2 -> 0.19429569121913953`}}, {
             "U[1,1.2]", -2, -0.5, 
              1, {$CellContext`s1 -> 0.001695020493262549, $CellContext`s2 -> 
               0.5517743031572505, $CellContext`w0 -> 
               8.876356582987524*^-6, $CellContext`w1 -> 
               0.5412635725562213, $CellContext`w2 -> 
               0.20578203178462648`}}, {
             "U[1,1.2]", -2, -0.5, 
              2, {$CellContext`s1 -> -0.03567046072912458, $CellContext`s2 -> 
               0.5562225070331961, $CellContext`w0 -> 
               0.26773707987914247`, $CellContext`w1 -> 
               0.26809583940649173`, $CellContext`w2 -> 
               0.2103136567408026}}, {
             "U[1,1.2]", -2, -0.5, 
              3, {$CellContext`s1 -> -0.05026888733080335, $CellContext`s2 -> 
               0.5563689666085503, $CellContext`w0 -> 
               0.26775700160001725`, $CellContext`w1 -> 
               0.26329298267227197`, $CellContext`w2 -> 
               0.21409045289922637`}}, {
             "U[1,1.2]", -2, 0, 
              0, {$CellContext`s1 -> 0.006689112784598639, $CellContext`s2 -> 
               0.5281519838189209, $CellContext`w0 -> 
               7.747463123975141*^-6, $CellContext`w1 -> 
               0.5595197003997837, $CellContext`w2 -> 
               0.18720832103855778`}}, {
             "U[1,1.2]", -2, 0, 
              0.5, {$CellContext`s1 -> 0.005893687208701383, $CellContext`s2 -> 
               0.5394369410796308, $CellContext`w0 -> 
               7.818838305588338*^-6, $CellContext`w1 -> 
               0.5499605697332868, $CellContext`w2 -> 
               0.19673834298612733`}}, {
             "U[1,1.2]", -2, 0, 
              1, {$CellContext`s1 -> 0.004253396982726934, $CellContext`s2 -> 
               0.5501574265415307, $CellContext`w0 -> 
               8.054112081846896*^-6, $CellContext`w1 -> 
               0.5409010010223961, $CellContext`w2 -> 
               0.20582160638300181`}}, {
             "U[1,1.2]", -2, 0, 
              2, {$CellContext`s1 -> -0.024724623938861337`, $CellContext`s2 -> 
               0.5571674584205283, $CellContext`w0 -> 
               0.25137091189748123`, $CellContext`w1 -> 
               0.2811772737982532, $CellContext`w2 -> 0.21375}}, {
             "U[1,1.2]", -2, 0, 
              3, {$CellContext`s1 -> -0.023993170697821545`, $CellContext`s2 -> 
               0.5601215954540144, $CellContext`w0 -> 
               0.24396398556108967`, $CellContext`w1 -> 
               0.28141322915692, $CellContext`w2 -> 0.22077323793495154`}}, {
             "U[1,1.2]", -2, 0.5, 
              0.5, {$CellContext`s1 -> 0.004856922173564266, $CellContext`s2 -> 
               0.5458650509089755, $CellContext`w0 -> 
               7.856467305392459*^-6, $CellContext`w1 -> 
               0.5432672952880632, $CellContext`w2 -> 
               0.20339376216862476`}}, {
             "U[1,1.2]", -2, 0.5, 
              1, {$CellContext`s1 -> 0.0023035665420896795`, $CellContext`s2 -> 
               0.5537516062018918, $CellContext`w0 -> 
               8.57932420725032*^-6, $CellContext`w1 -> 
               0.5356058969271984, $CellContext`w2 -> 0.2111928763354494}}, {
             "U[1,1.2]", -2, 0.5, 
              2, {$CellContext`s1 -> -0.02023996876336698, $CellContext`s2 -> 
               0.5354576435000691, $CellContext`w0 -> 
               0.028372372536808927`, $CellContext`w1 -> 
               0.5149988792048983, $CellContext`w2 -> 0.2008319497785593}}, {
             "U[1,1.2]", -2, 0.5, 
              3, {$CellContext`s1 -> 0.0077074752660649505`, $CellContext`s2 -> 
               0.5695512738930459, $CellContext`w0 -> 
               0.1968091711837461, $CellContext`w1 -> 
               0.31931020027406376`, $CellContext`w2 -> 
               0.2317674909135741}}, {
             "U[1,1.2]", -2, 1, 
              1, {$CellContext`s1 -> 0.00101520308449934, $CellContext`s2 -> 
               0.378024485767514, $CellContext`w0 -> 
               0.0008792786712451322, $CellContext`w1 -> 
               0.058049235165694095`, $CellContext`w2 -> 
               0.20485012013870196`}}, {
             "U[1,1.2]", -2, 1, 
              2, {$CellContext`s1 -> -25.84624819133521, $CellContext`s2 -> 
               0.003019902109963248, $CellContext`w0 -> 
               0.5913991403215163, $CellContext`w1 -> 
               0.00014575476150674425`, $CellContext`w2 -> 
               0.07122245755108086}}, {
             "U[1,1.2]", -2, 1, 
              3, {$CellContext`s1 -> -0.5044372369075555, $CellContext`s2 -> 
               0.5039484396856743, $CellContext`w0 -> 
               5.787720882326848*^-9, $CellContext`w1 -> 
               0.05931572381225505, $CellContext`w2 -> 0.2850836929888217}}, {
             "U[1,1.2]", -2, 2, 
              2, {$CellContext`s1 -> 0.004077723758336172, $CellContext`s2 -> 
               0.6104620978737793, $CellContext`w0 -> 
               0.00011742556559747023`, $CellContext`w1 -> 
               0.09538542028045655, $CellContext`w2 -> 0.3102394875986132}}, {
             "U[1,1.2]", -2, 2, 
              3, {$CellContext`s1 -> -0.006206415312817145, $CellContext`s2 -> 
               0.6695814632563563, $CellContext`w0 -> 
               0.000027900309356750385`, $CellContext`w1 -> 
               0.10748891058456467`, $CellContext`w2 -> 0.344299339841385}}, {
             "U[1,1.2]", -2, 3, 
              3, {$CellContext`s1 -> 0.011486329423420658`, $CellContext`s2 -> 
               0.7187110210799672, $CellContext`w0 -> 
               9.302993841598126*^-6, $CellContext`w1 -> 
               0.12279505920742029`, $CellContext`w2 -> 
               0.37190724614439696`}}, {
             "U[1,1.2]", -1, -1, -1, {$CellContext`s1 -> 
               0.10678662941098514`, $CellContext`s2 -> 
               0.6357964850187311, $CellContext`w0 -> 
               0.5790205387937901, $CellContext`w1 -> 0., $CellContext`w2 -> 
               0.23211714856574633`}}, {
             "U[1,1.2]", -1, -1, -0.5, {$CellContext`s1 -> 
               0.003556173020738416, $CellContext`s2 -> 
               0.48241314946370106`, $CellContext`w0 -> 
               9.895431043831224*^-6, $CellContext`w1 -> 
               0.5923817744108121, $CellContext`w2 -> 
               0.15499176886992286`}}, {
             "U[1,1.2]", -1, -1, 
              0, {$CellContext`s1 -> 0.0012664178701636806`, $CellContext`s2 -> 
               0.5232084964645508, $CellContext`w0 -> 
               9.034451339119177*^-6, $CellContext`w1 -> 
               0.5648380833658572, $CellContext`w2 -> 
               0.18238619949640825`}}, {
             "U[1,1.2]", -1, -1, 
              0.5, {$CellContext`s1 -> -0.0029728997383887262`, \
$CellContext`s2 -> 0.5499498468104159, $CellContext`w0 -> 
               0.29287971604965024`, $CellContext`w1 -> 
               0.2522247439275556, $CellContext`w2 -> 0.2025}}, {
             "U[1,1.2]", -1, -1, 
              1, {$CellContext`s1 -> -0.017142190403349314`, $CellContext`s2 -> 
               0.555382425375976, $CellContext`w0 -> 
               0.3235941647798191, $CellContext`w1 -> 
               0.21574013872903472`, $CellContext`w2 -> 
               0.2080473442793982}}, {
             "U[1,1.2]", -1, -1, 
              2, {$CellContext`s1 -> -0.06743394037741927, $CellContext`s2 -> 
               0.5552286540892482, $CellContext`w0 -> 
               0.34318824910403356`, $CellContext`w1 -> 
               0.19388533740650438`, $CellContext`w2 -> 
               0.20908690578542857`}}, {
             "U[1,1.2]", -1, -1, 
              3, {$CellContext`s1 -> -0.07950607487439929, $CellContext`s2 -> 
               0.5579871367668315, $CellContext`w0 -> 
               0.34864162212005956`, $CellContext`w1 -> 
               0.18225000000000002`, $CellContext`w2 -> 
               0.21430334791208003`}}, {
             "U[1,1.2]", -1, -0.5, -0.5, {$CellContext`s1 -> 
               0.0055170570763723205`, $CellContext`s2 -> 
               0.49881360217874493`, $CellContext`w0 -> 
               8.48192542251268*^-6, $CellContext`w1 -> 
               0.5808969614986633, $CellContext`w2 -> 
               0.16589494739889524`}}, {
             "U[1,1.2]", -1, -0.5, 
              0, {$CellContext`s1 -> 0.00437833052571962, $CellContext`s2 -> 
               0.5207846595476068, $CellContext`w0 -> 
               8.209036699079443*^-6, $CellContext`w1 -> 
               0.5659460349995261, $CellContext`w2 -> 0.1809426639682672}}, {
             "U[1,1.2]", -1, -0.5, 
              0.5, {$CellContext`s1 -> 
               0.0029468412298235265`, $CellContext`s2 -> 
               0.5377494691264774, $CellContext`w0 -> 
               8.555007891293376*^-6, $CellContext`w1 -> 
               0.5524407578162014, $CellContext`w2 -> 
               0.19453021662491238`}}, {
             "U[1,1.2]", -1, -0.5, 
              1, {$CellContext`s1 -> -0.00583501613956708, $CellContext`s2 -> 
               0.5092441394752674, $CellContext`w0 -> 
               0.000430357930688375, $CellContext`w1 -> 
               0.5588746166587432, $CellContext`w2 -> 0.1839444070863894}}, {
             "U[1,1.2]", -1, -0.5, 
              2, {$CellContext`s1 -> -0.03604697931321002, $CellContext`s2 -> 
               0.5560768831642082, $CellContext`w0 -> 
               0.26657639847213327`, $CellContext`w1 -> 
               0.26928107235656185`, $CellContext`w2 -> 
               0.21027803742627604`}}, {
             "U[1,1.2]", -1, -0.5, 
              3, {$CellContext`s1 -> -0.050693838918716774`, $CellContext`s2 -> 
               0.5561976388987012, $CellContext`w0 -> 
               0.26688914168441036`, $CellContext`w1 -> 
               0.264167931925823, $CellContext`w2 -> 0.2140821131299287}}, {
             "U[1,1.2]", -1, 0, 
              0, {$CellContext`s1 -> 0.006223275091520644, $CellContext`s2 -> 
               0.5283401114831151, $CellContext`w0 -> 
               7.756700409194544*^-6, $CellContext`w1 -> 
               0.5594872822038615, $CellContext`w2 -> 
               0.18725159936963118`}}, {
             "U[1,1.2]", -1, 0, 
              0.5, {$CellContext`s1 -> 0.004883950439542625, $CellContext`s2 -> 
               0.5388288401460398, $CellContext`w0 -> 
               7.825886933419861*^-6, $CellContext`w1 -> 
               0.5508700475888105, $CellContext`w2 -> 
               0.19586625858296397`}}, {
             "U[1,1.2]", -1, 0, 
              1, {$CellContext`s1 -> -0.008332675893609278, $CellContext`s2 -> 
               0.5224974537126046, $CellContext`w0 -> 
               0.00031483344438987384`, $CellContext`w1 -> 
               0.5621913532706374, $CellContext`w2 -> 
               0.18283206394003812`}}, {
             "U[1,1.2]", -1, 0, 
              2, {$CellContext`s1 -> -0.02499567397382009, $CellContext`s2 -> 
               0.5571417919824898, $CellContext`w0 -> 
               0.25229701408647603`, $CellContext`w1 -> 
               0.2802465726901611, $CellContext`w2 -> 0.21375}}, {
             "U[1,1.2]", -1, 0, 
              3, {$CellContext`s1 -> -0.03148737227119202, $CellContext`s2 -> 
               0.557759736411796, $CellContext`w0 -> 
               0.24385007618732704`, $CellContext`w1 -> 
               0.2830127763325777, $CellContext`w2 -> 
               0.21906885513934404`}}, {
             "U[1,1.2]", -1, 0.5, 
              0.5, {$CellContext`s1 -> -0.01081856933785785, $CellContext`s2 -> 
               0.523358185018418, $CellContext`w0 -> 
               0.00008919346523285866, $CellContext`w1 -> 
               0.5647480520741813, $CellContext`w2 -> 0.1815413259716923}}, {
             "U[1,1.2]", -1, 0.5, 
              1, {$CellContext`s1 -> -0.014506812583735935`, $CellContext`s2 -> 
               0.5303379139012904, $CellContext`w0 -> 
               0.009617266860711793, $CellContext`w1 -> 
               0.5467006511793786, $CellContext`w2 -> 
               0.18955759037662961`}}, {
             "U[1,1.2]", -1, 0.5, 
              2, {$CellContext`s1 -> 0.0004684100534344781, $CellContext`s2 -> 
               0.5633385443093649, $CellContext`w0 -> 
               0.209445028649308, $CellContext`w1 -> 
               0.3149859431593391, $CellContext`w2 -> 
               0.22230172970132542`}}, {
             "U[1,1.2]", -1, 0.5, 
              3, {$CellContext`s1 -> 0.00620668352715235, $CellContext`s2 -> 
               0.5687208788076202, $CellContext`w0 -> 
               0.179648390719763, $CellContext`w1 -> 
               0.33699183941449806`, $CellContext`w2 -> 
               0.23127101583065093`}}, {
             "U[1,1.2]", -1, 1, 
              1, {$CellContext`s1 -> 0.0027302865584417834`, $CellContext`s2 -> 
               0.3851609215470745, $CellContext`w0 -> 
               0.0023229063858592265`, $CellContext`w1 -> 
               0.05895916444074346, $CellContext`w2 -> 
               0.20521201729744185`}}, {
             "U[1,1.2]", -1, 1, 
              3, {$CellContext`s1 -> -0.003396275635178242, $CellContext`s2 -> 
               0.5790698106600694, $CellContext`w0 -> 
               0.006113492165717963, $CellContext`w1 -> 
               0.07839766083369884, $CellContext`w2 -> 
               0.30503615755055696`}}, {
             "U[1,1.2]", -1, 2, 
              2, {$CellContext`s1 -> 0.013494819013998974`, $CellContext`s2 -> 
               0.6116153211203956, $CellContext`w0 -> 
               0.0006835376210735178, $CellContext`w1 -> 
               0.09564011651213568, $CellContext`w2 -> 
               0.31000676942562133`}}, {
             "U[1,1.2]", -1, 2, 
              3, {$CellContext`s1 -> 0.01977404771480077, $CellContext`s2 -> 
               0.6702523326699457, $CellContext`w0 -> 
               0.0005203057512926485, $CellContext`w1 -> 
               0.10769470686429723`, $CellContext`w2 -> 
               0.3440492530511557}}, {
             "U[1,1.2]", -1, 3, 
              3, {$CellContext`s1 -> 0.03414275187389418, $CellContext`s2 -> 
               0.7190299063230605, $CellContext`w0 -> 
               0.000335983995130057, $CellContext`w1 -> 
               0.12291496289090634`, $CellContext`w2 -> 
               0.37170255030268057`}}, {
             "U[1,1.2]", -0.5, -0.5, -0.5, {$CellContext`s1 -> 
               0.010595741703863746`, $CellContext`s2 -> 
               0.5036240619497236, $CellContext`w0 -> 
               0.009326966467620055, $CellContext`w1 -> 
               0.5612655877176431, $CellContext`w2 -> 
               0.17513043543993548`}}, {
             "U[1,1.2]", -0.5, -0.5, 
              0, {$CellContext`s1 -> 0.010877822447667567`, $CellContext`s2 -> 
               0.5199568669037359, $CellContext`w0 -> 
               0.0033732673121721394`, $CellContext`w1 -> 
               0.5536028812120228, $CellContext`w2 -> 0.1884387525858979}}, {
             "U[1,1.2]", -0.5, -0.5, 
              0.5, {$CellContext`s1 -> -0.0075005851866603405`, \
$CellContext`s2 -> 0.5177040392885847, $CellContext`w0 -> 
               0.00006530004291864673, $CellContext`w1 -> 
               0.5726209134684441, $CellContext`w2 -> 0.1742372565580756}}, {
             "U[1,1.2]", -0.5, -0.5, 
              1, {$CellContext`s1 -> -0.012445005440832123`, $CellContext`s2 -> 
               0.5337568268361702, $CellContext`w0 -> 
               0.00007797632012885821, $CellContext`w1 -> 
               0.5631377904247775, $CellContext`w2 -> 
               0.18386697741748526`}}, {
             "U[1,1.2]", -0.5, -0.5, 
              2, {$CellContext`s1 -> -0.015826509682670444`, $CellContext`s2 -> 
               0.5478889704267874, $CellContext`w0 -> 
               0.0013069272499483297`, $CellContext`w1 -> 
               0.5495986954400691, $CellContext`w2 -> 0.1951720865785764}}, {
             "U[1,1.2]", -0.5, -0.5, 
              3, {$CellContext`s1 -> -0.018852138435850353`, $CellContext`s2 -> 
               0.5486102627602021, $CellContext`w0 -> 
               0.0030811317035269632`, $CellContext`w1 -> 
               0.5412419021718403, $CellContext`w2 -> 0.2000731983469974}}, {
             "U[1,1.2]", -0.5, 0, 
              0, {$CellContext`s1 -> 0.015696853108667183`, $CellContext`s2 -> 
               0.5259162786992861, $CellContext`w0 -> 
               0.0012960545112001931`, $CellContext`w1 -> 
               0.5456468581984937, $CellContext`w2 -> 
               0.19766446283368447`}}, {
             "U[1,1.2]", -0.5, 0, 
              0.5, {$CellContext`s1 -> -0.008358945828855033, $CellContext`s2 -> 
               0.521316240934976, $CellContext`w0 -> 
               0.00017150732300877538`, $CellContext`w1 -> 
               0.5716977208697724, $CellContext`w2 -> 
               0.17534473406637352`}}, {
             "U[1,1.2]", -0.5, 0, 
              1, {$CellContext`s1 -> -0.00788619904687601, $CellContext`s2 -> 
               0.5233345552780481, $CellContext`w0 -> 
               0.004499769956035824, $CellContext`w1 -> 
               0.5578014727195845, $CellContext`w2 -> 
               0.18310752511819361`}}, {
             "U[1,1.2]", -0.5, 0, 
              2, {$CellContext`s1 -> -0.02616357254491386, $CellContext`s2 -> 
               0.5568497565179187, $CellContext`w0 -> 
               0.25245719827519214`, $CellContext`w1 -> 
               0.2800704126501742, $CellContext`w2 -> 0.21375}}, {
             "U[1,1.2]", -0.5, 0, 
              3, {$CellContext`s1 -> -0.04407748246880662, $CellContext`s2 -> 
               0.5537947734423432, $CellContext`w0 -> 
               0.24362674719043845`, $CellContext`w1 -> 
               0.2854904143961899, $CellContext`w2 -> 
               0.21649735601420528`}}, {
             "U[1,1.2]", -0.5, 0.5, 
              0.5, {$CellContext`s1 -> -0.010787342962029472`, \
$CellContext`s2 -> 0.5265403392377408, $CellContext`w0 -> 
               0.00167745735083801, $CellContext`w1 -> 
               0.5636114022792414, $CellContext`w2 -> 0.1815976292340263}}, {
             "U[1,1.2]", -0.5, 0.5, 
              1, {$CellContext`s1 -> 0.0005144679977982767, $CellContext`s2 -> 
               0.543929228078899, $CellContext`w0 -> 
               0.3917621695901115, $CellContext`w1 -> 
               0.14768707930182917`, $CellContext`w2 -> 
               0.20505836092132143`}}, {
             "U[1,1.2]", -0.5, 0.5, 
              2, {$CellContext`s1 -> 0.004534100481134486, $CellContext`s2 -> 
               0.4376523819759607, $CellContext`w0 -> 
               0.009406056759765408, $CellContext`w1 -> 
               0.05906882847844382, $CellContext`w2 -> 
               0.23084035703951722`}}, {
             "U[1,1.2]", -0.5, 0.5, 
              3, {$CellContext`s1 -> 0.004162952496658582, $CellContext`s2 -> 
               0.517453254113083, $CellContext`w0 -> 
               0.03445156311301788, $CellContext`w1 -> 
               0.06436334549808555, $CellContext`w2 -> 0.2745451818082277}}, {
             "U[1,1.2]", -0.5, 1, 
              1, {$CellContext`s1 -> 0.006231019408558249, $CellContext`s2 -> 
               0.401304430296522, $CellContext`w0 -> 
               0.006335495327609371, $CellContext`w1 -> 
               0.06130312630742858, $CellContext`w2 -> 0.2055078322112055}}, {
             "U[1,1.2]", -0.5, 1, 
              2, {$CellContext`s1 -> 0.012254084085840647`, $CellContext`s2 -> 
               0.5202363519472178, $CellContext`w0 -> 
               0.00540292582820459, $CellContext`w1 -> 
               0.07604872473424237, $CellContext`w2 -> 
               0.26196034569193416`}}, {
             "U[1,1.2]", -0.5, 1, 
              3, {$CellContext`s1 -> 0.015923187381766544`, $CellContext`s2 -> 
               0.5927060478959717, $CellContext`w0 -> 
               0.005150618381804442, $CellContext`w1 -> 
               0.08373312776454585, $CellContext`w2 -> 
               0.30391756844919743`}}, {
             "U[1,1.2]", -0.5, 2, 
              2, {$CellContext`s1 -> 0.06343164818067532, $CellContext`s2 -> 
               0.5954144478756775, $CellContext`w0 -> 
               0.29301993913117685`, $CellContext`w1 -> 
               0.2025, $CellContext`w2 -> 0.24753228673074157`}}, {
             "U[1,1.2]", -0.5, 2, 
              3, {$CellContext`s1 -> 0.04423928150961826, $CellContext`s2 -> 
               0.673886681291879, $CellContext`w0 -> 
               0.0035509617320327504`, $CellContext`w1 -> 
               0.10898869467003908`, $CellContext`w2 -> 
               0.3423731598915736}}, {
             "U[1,1.2]", -0.5, 3, 
              3, {$CellContext`s1 -> 0.07001987692362602, $CellContext`s2 -> 
               0.7213578851118757, $CellContext`w0 -> 
               0.0029593090407347387`, $CellContext`w1 -> 
               0.12392671165400018`, $CellContext`w2 -> 
               0.36999727467571386`}}, {
             "U[1,1.2]", 0, 0, 
              0, {$CellContext`s1 -> 0.025691437962078664`, $CellContext`s2 -> 
               0.5282162930362303, $CellContext`w0 -> 
               0.015287723297027943`, $CellContext`w1 -> 
               0.520159457633845, $CellContext`w2 -> 0.20770702344181213`}}, {
             "U[1,1.2]", 0, 0, 
              0.5, {$CellContext`s1 -> -0.005976803386059963, $CellContext`s2 -> 
               0.5158747987983721, $CellContext`w0 -> 
               0.004369142508533425, $CellContext`w1 -> 
               0.5657589702507817, $CellContext`w2 -> 
               0.17598402093843196`}}, {
             "U[1,1.2]", 0, 0, 
              1, {$CellContext`s1 -> -0.003410342885582666, $CellContext`s2 -> 
               0.5009911040972631, $CellContext`w0 -> 
               0.06723538868945174, $CellContext`w1 -> 
               0.4899635233135763, $CellContext`w2 -> 
               0.18403334132249524`}}, {
             "U[1,1.2]", 0, 0, 
              2, {$CellContext`s1 -> -0.029214313691266286`, $CellContext`s2 -> 
               0.5552677728624912, $CellContext`w0 -> 
               0.24466471493042666`, $CellContext`w1 -> 
               0.28781970413613206`, $CellContext`w2 -> 0.21375}}, {
             "U[1,1.2]", 0, 0, 
              3, {$CellContext`s1 -> -0.013534566208569167`, $CellContext`s2 -> 
               0.56300846157315, $CellContext`w0 -> 
               0.243900266631419, $CellContext`w1 -> 
               0.27829323484605345`, $CellContext`w2 -> 
               0.22451153070853946`}}, {
             "U[1,1.2]", 0, 0.5, 
              0.5, {$CellContext`s1 -> -0.007314555228629709, $CellContext`s2 -> 
               0.5197680727761027, $CellContext`w0 -> 
               0.0589459709928048, $CellContext`w1 -> 
               0.5057023229785347, $CellContext`w2 -> 
               0.18098486471190944`}}, {
             "U[1,1.2]", 0, 0.5, 
              1, {$CellContext`s1 -> 0.00881231041924273, $CellContext`s2 -> 
               0.3662356222657925, $CellContext`w0 -> 
               0.017759577831154064`, $CellContext`w1 -> 
               0.05780034026949055, $CellContext`w2 -> 
               0.17655219309805892`}}, {
             "U[1,1.2]", 0, 0.5, 
              2, {$CellContext`s1 -> 0.01671067521520609, $CellContext`s2 -> 
               0.4873813766653797, $CellContext`w0 -> 
               0.018550019921908533`, $CellContext`w1 -> 
               0.06935779540203761, $CellContext`w2 -> 
               0.23404853325381728`}}, {
             "U[1,1.2]", 0, 0.5, 
              3, {$CellContext`s1 -> -0.06724979651072202, $CellContext`s2 -> 
               0.5477992397305131, $CellContext`w0 -> 
               0.2688181810834441, $CellContext`w1 -> 
               0.26074324277232613`, $CellContext`w2 -> 
               0.21303648322277405`}}, {
             "U[1,1.2]", 0, 1, 
              1, {$CellContext`s1 -> -0.022603389417328562`, $CellContext`s2 -> 
               0.5497556684670013, $CellContext`w0 -> 
               0.25498012122757524`, $CellContext`w1 -> 
               0.28176595193208587`, $CellContext`w2 -> 0.208530432012997}}, {
             "U[1,1.2]", 0, 1, 
              2, {$CellContext`s1 -> 0.0364447793650345, $CellContext`s2 -> 
               0.5551119558979831, $CellContext`w0 -> 
               0.019297454886891555`, $CellContext`w1 -> 
               0.08493611852841769, $CellContext`w2 -> 0.2601200367140074}}, {
             "U[1,1.2]", 0, 1, 
              3, {$CellContext`s1 -> 0.04965454678575303, $CellContext`s2 -> 
               0.6215977680539706, $CellContext`w0 -> 
               0.019395333939160483`, $CellContext`w1 -> 
               0.09324651070546501, $CellContext`w2 -> 
               0.29969290428186507`}}, {
             "U[1,1.2]", 0, 2, 
              2, {$CellContext`s1 -> 0.0757280699864036, $CellContext`s2 -> 
               0.6400432964766628, $CellContext`w0 -> 
               0.019087449623384337`, $CellContext`w1 -> 
               0.10476357134769525`, $CellContext`w2 -> 
               0.3026178062281913}}, {
             "U[1,1.2]", 0, 2, 
              3, {$CellContext`s1 -> 0.10507365494323727`, $CellContext`s2 -> 
               0.6920111100168139, $CellContext`w0 -> 
               0.01877740676705806, $CellContext`w1 -> 
               0.11646427813521314`, $CellContext`w2 -> 0.334512493258722}}, {
             "U[1,1.2]", 0, 3, 
              3, {$CellContext`s1 -> 0.14705153464635665`, $CellContext`s2 -> 
               0.7349042163500074, $CellContext`w0 -> 
               0.01819125176148611, $CellContext`w1 -> 
               0.13065422540003302`, $CellContext`w2 -> 
               0.3605345103016929}}, {
             "U[1,1.2]", 0.5, 0.5, 
              0.5, {$CellContext`s1 -> 
               0.0020261241616495035`, $CellContext`s2 -> 
               0.5482069346236186, $CellContext`w0 -> 
               0.09415318583466334, $CellContext`w1 -> 
               0.44980641139002336`, $CellContext`w2 -> 
               0.20305312453162178`}}, {
             "U[1,1.2]", 0.5, 0.5, 
              1, {$CellContext`s1 -> 0.024274093651902418`, $CellContext`s2 -> 
               0.4485371326805676, $CellContext`w0 -> 
               0.02856081441902654, $CellContext`w1 -> 
               0.0724054878855255, $CellContext`w2 -> 0.1953726904096224}}, {
             "U[1,1.2]", 0.5, 0.5, 
              2, {$CellContext`s1 -> 0.04759888563714831, $CellContext`s2 -> 
               0.5556384835119993, $CellContext`w0 -> 
               0.030916820393710256`, $CellContext`w1 -> 
               0.08646171686047922, $CellContext`w2 -> 
               0.24677583944691944`}}, {
             "U[1,1.2]", 0.5, 0.5, 
              3, {$CellContext`s1 -> 0.06479341802848514, $CellContext`s2 -> 
               0.6222367662486221, $CellContext`w0 -> 
               0.03159280984310611, $CellContext`w1 -> 
               0.09435903662071529, $CellContext`w2 -> 0.2864317907945547}}, {
             "U[1,1.2]", 0.5, 1, 
              1, {$CellContext`s1 -> 0.04593841463021242, $CellContext`s2 -> 
               0.518851317943698, $CellContext`w0 -> 
               0.03377063596119617, $CellContext`w1 -> 
               0.08488858533941576, $CellContext`w2 -> 
               0.22037732030246637`}}, {
             "U[1,1.2]", 0.5, 1, 
              2, {$CellContext`s1 -> 0.08528108671145684, $CellContext`s2 -> 
               0.6107138788816285, $CellContext`w0 -> 
               0.03697552558059633, $CellContext`w1 -> 
               0.10093562627728171`, $CellContext`w2 -> 
               0.2652558366123743}}, {
             "U[1,1.2]", 0.5, 1, 
              3, {$CellContext`s1 -> 0.11402089569851641`, $CellContext`s2 -> 
               0.6676355248888985, $CellContext`w0 -> 
               0.03770332084771379, $CellContext`w1 -> 
               0.11033636648864531`, $CellContext`w2 -> 
               0.30027505403104654`}}, {
             "U[1,1.2]", 0.5, 2, 
              2, {$CellContext`s1 -> 0.1459096220621988, $CellContext`s2 -> 
               0.6809614471018319, $CellContext`w0 -> 
               0.04104100478080145, $CellContext`w1 -> 
               0.11983786157035634`, $CellContext`w2 -> 
               0.2992399885577159}}, {
             "U[1,1.2]", 0.5, 2, 
              3, {$CellContext`s1 -> 0.18840049419947358`, $CellContext`s2 -> 
               0.7248496428682777, $CellContext`w0 -> 
               0.041998099599942836`, $CellContext`w1 -> 
               0.13142201454260802`, $CellContext`w2 -> 
               0.3264755526330031}}, {
             "U[1,1.2]", 0.5, 3, 
              3, {$CellContext`s1 -> 0.2388395195970279, $CellContext`s2 -> 
               0.7608074818201526, $CellContext`w0 -> 
               0.043116169371589304`, $CellContext`w1 -> 
               0.14469998975230172`, $CellContext`w2 -> 
               0.3479462476184393}}, {
             "U[1,1.2]", 1, 1, 
              1, {$CellContext`s1 -> 0.07948726843584236, $CellContext`s2 -> 
               0.5788560408507677, $CellContext`w0 -> 
               0.041482726835967536`, $CellContext`w1 -> 
               0.09783238526171324, $CellContext`w2 -> 
               0.24013380894906108`}}, {
             "U[1,1.2]", 1, 1, 
              2, {$CellContext`s1 -> 0.13394940903234853`, $CellContext`s2 -> 
               0.6562335688350657, $CellContext`w0 -> 
               0.04670405207645147, $CellContext`w1 -> 
               0.11468823040709819`, $CellContext`w2 -> 
               0.27759335755076764`}}, {
             "U[1,1.2]", 1, 1, 
              3, {$CellContext`s1 -> 0.17244361058720795`, $CellContext`s2 -> 
               0.7045440049642449, $CellContext`w0 -> 
               0.04797726734147279, $CellContext`w1 -> 
               0.12490258078716211`, $CellContext`w2 -> 
               0.30782415078703057`}}, {
             "U[1,1.2]", 1, 2, 
              2, {$CellContext`s1 -> 0.20379828290815366`, $CellContext`s2 -> 
               0.7146905625975234, $CellContext`w0 -> 
               0.054190633052654265`, $CellContext`w1 -> 
               0.13290377496721095`, $CellContext`w2 -> 
               0.30368784018983197`}}, {
             "U[1,1.2]", 1, 2, 
              3, {$CellContext`s1 -> 0.25097726786862185`, $CellContext`s2 -> 
               0.7519063646251996, $CellContext`w0 -> 
               0.05646008284027411, $CellContext`w1 -> 
               0.14439365953776248`, $CellContext`w2 -> 
               0.3262057698567837}}, {
             "U[1,1.2]", 1, 3, 
              3, {$CellContext`s1 -> 0.3023597341559775, $CellContext`s2 -> 
               0.7824280154310541, $CellContext`w0 -> 
               0.05939540289198389, $CellContext`w1 -> 
               0.15699024074936277`, $CellContext`w2 -> 
               0.34314580461199695`}}, {
             "U[1,1.2]", 2, 2, 
              2, {$CellContext`s1 -> 0.27946449584641203`, $CellContext`s2 -> 
               0.7587897835880574, $CellContext`w0 -> 
               0.0656621413111277, $CellContext`w1 -> 
               0.1506226888339061, $CellContext`w2 -> 
               0.31869038824268203`}}, {
             "U[1,1.2]", 2, 2, 
              3, {$CellContext`s1 -> 0.32895098464866124`, $CellContext`s2 -> 
               0.787689837201051, $CellContext`w0 -> 
               0.06995375024365565, $CellContext`w1 -> 
               0.16222707560121494`, $CellContext`w2 -> 
               0.33399459234382745`}}, {
             "U[1,1.2]", 2, 3, 
              3, {$CellContext`s1 -> 0.37886262753864, $CellContext`s2 -> 
               0.8115475629675206, $CellContext`w0 -> 
               0.07557467444625311, $CellContext`w1 -> 
               0.17417278355850999`, $CellContext`w2 -> 
               0.34418903451481736`}}, {
             "U[1,1.2]", 3, 3, 
              3, {$CellContext`s1 -> 0.4271877282972883, $CellContext`s2 -> 
               0.831352241347077, $CellContext`w0 -> 
               0.08295504575716212, $CellContext`w1 -> 
               0.18593860144827046`, $CellContext`w2 -> 
               0.3496659633712963}}, {
             "incr[1,1.2]", -2, -2, -2, {$CellContext`s1 -> 
               0.10000000202200454`, $CellContext`s2 -> 
               0.6000000022101011, $CellContext`w0 -> 
               0.24999931574618725`, $CellContext`w1 -> 
               0.2359624106788913, $CellContext`w2 -> 
               0.22804890321081306`}}, {
             "incr[1,1.2]", -2, -2, -1, {$CellContext`s1 -> 
               0.10000396735844622`, $CellContext`s2 -> 
               0.600000025356838, $CellContext`w0 -> 
               0.2615642576382823, $CellContext`w1 -> 
               0.5049000179474926, $CellContext`w2 -> 0.}}, {
             "incr[1,1.2]", -2, -2, -0.5, {$CellContext`s1 -> 
               0.09326843506184336, $CellContext`s2 -> 
               0.5729073066532122, $CellContext`w0 -> 
               0.26271926804453094`, $CellContext`w1 -> 
               0.4149302380215221, $CellContext`w2 -> 
               1.1019799724008923`*^-16}}, {
             "incr[1,1.2]", -2, -2, 
              0, {$CellContext`s1 -> 0.11220369634852628`, $CellContext`s2 -> 
               0.5240094247193332, $CellContext`w0 -> 
               0.6145551581706021, $CellContext`w1 -> 
               0.24459148444869352`, $CellContext`w2 -> 0.}}, {
             "incr[1,1.2]", -2, -2, 
              0.5, {$CellContext`s1 -> 0.09774232610962749, $CellContext`s2 -> 
               0.5994840482739386, $CellContext`w0 -> 
               0.26320558797396487`, $CellContext`w1 -> 
               0.23749927520751682`, $CellContext`w2 -> 
               0.24904340103373196`}}, {
             "incr[1,1.2]", -2, -2, 
              1, {$CellContext`s1 -> 0.018395805691057195`, $CellContext`s2 -> 
               0.5860047713484456, $CellContext`w0 -> 
               0.3805319863908167, $CellContext`w1 -> 
               0.13045101204919005`, $CellContext`w2 -> 
               0.23589126831955723`}}, {
             "incr[1,1.2]", -2, -2, 
              2, {$CellContext`s1 -> 0.046203601691527485`, $CellContext`s2 -> 
               0.5929209436717331, $CellContext`w0 -> 
               0.3760498358872913, $CellContext`w1 -> 
               0.12953874375, $CellContext`w2 -> 0.24363215787159884`}}, {
             "incr[1,1.2]", -2, -2, 
              3, {$CellContext`s1 -> 0.09999999999999895, $CellContext`s2 -> 
               0.5999999999999999, $CellContext`w0 -> 
               0.25000000000000294`, $CellContext`w1 -> 
               0.24999999999999717`, $CellContext`w2 -> 
               0.2499999999999999}}, {
             "incr[1,1.2]", -2, -1, -1, {$CellContext`s1 -> 
               0.10600772617185635`, $CellContext`s2 -> 
               0.6639484396073525, $CellContext`w0 -> 
               0.24291498479874096`, $CellContext`w1 -> 
               0.7572823696122081, $CellContext`w2 -> 
               0.00020567637412022036`}}, {
             "incr[1,1.2]", -2, -1, -0.5, {$CellContext`s1 -> 
               0.0025070859623294523`, $CellContext`s2 -> 
               0.45509935845033683`, $CellContext`w0 -> 
               8.919574929891833*^-6, $CellContext`w1 -> 
               0.5996014749961284, $CellContext`w2 -> 
               0.14575217329113246`}}, {
             "incr[1,1.2]", -2, -1, 
              0, {$CellContext`s1 -> 0.0001015562336626292, $CellContext`s2 -> 
               0.526777515270961, $CellContext`w0 -> 
               0.5303909930201318, $CellContext`w1 -> 
               0.02830575025241174, $CellContext`w2 -> 
               0.18800625529379522`}}, {
             "incr[1,1.2]", -2, -1, 
              0.5, {$CellContext`s1 -> -0.01158614952517937, $CellContext`s2 -> 
               0.5460507204629047, $CellContext`w0 -> 
               0.3165185354551799, $CellContext`w1 -> 
               0.22787249656896646`, $CellContext`w2 -> 0.2025}}, {
             "incr[1,1.2]", -2, -1, 
              1, {$CellContext`s1 -> -0.16007120874064826`, $CellContext`s2 -> 
               0.17443928419910704`, $CellContext`w0 -> 
               0.5062055649532129, $CellContext`w1 -> 
               0.148915115610131, $CellContext`w2 -> 0.07822926654048061}}, {
             "incr[1,1.2]", -2, -1, 
              2, {$CellContext`s1 -> -0.008726031512418029, $CellContext`s2 -> 
               0.008650089135964588, $CellContext`w0 -> 
               0.00027714902017974825`, $CellContext`w1 -> 
               0.09383202458468654, $CellContext`w2 -> 
               0.09751659708953495}}, {
             "incr[1,1.2]", -2, -1, 
              3, {$CellContext`s1 -> -0.02845602597415456, $CellContext`s2 -> 
               0.031749224500329735`, $CellContext`w0 -> 
               0.00010183952312597795`, $CellContext`w1 -> 
               0.11387268676934172`, $CellContext`w2 -> 
               0.13793644554292014`}}, {
             "incr[1,1.2]", -2, -0.5, -0.5, {$CellContext`s1 -> 
               0.005939541480472727, $CellContext`s2 -> 
               0.4888609394839893, $CellContext`w0 -> 
               8.321816215601294*^-6, $CellContext`w1 -> 
               0.5813807950899794, $CellContext`w2 -> 
               0.16429909280670216`}}, {
             "incr[1,1.2]", -2, -0.5, 
              0, {$CellContext`s1 -> 0.004498237283197152, $CellContext`s2 -> 
               0.516927766725189, $CellContext`w0 -> 
               7.979412454602208*^-6, $CellContext`w1 -> 
               0.5637572178389453, $CellContext`w2 -> 
               0.18219141909490166`}}, {
             "incr[1,1.2]", -2, -0.5, 
              0.5, {$CellContext`s1 -> 
               0.0031923816315109423`, $CellContext`s2 -> 
               0.5353916262425159, $CellContext`w0 -> 
               8.456520205181211*^-6, $CellContext`w1 -> 
               0.5497589957419756, $CellContext`w2 -> 
               0.19636045869191102`}}, {
             "incr[1,1.2]", -2, -0.5, 
              1, {$CellContext`s1 -> 0.0017784058847278687`, $CellContext`s2 -> 
               0.550403143969305, $CellContext`w0 -> 
               8.8282785755576*^-6, $CellContext`w1 -> 
               0.53857823067699, $CellContext`w2 -> 0.20770867568865503`}}, {
             "incr[1,1.2]", -2, -0.5, 
              2, {$CellContext`s1 -> -0.02447152343365848, $CellContext`s2 -> 
               0.5584560327919134, $CellContext`w0 -> 
               0.26024386071489725`, $CellContext`w1 -> 
               0.2702319080652888, $CellContext`w2 -> 
               0.21517494425164518`}}, {
             "incr[1,1.2]", -2, -0.5, 
              3, {$CellContext`s1 -> -0.049239498950951206`, $CellContext`s2 -> 
               0.5549493436287019, $CellContext`w0 -> 
               0.2563745556459255, $CellContext`w1 -> 
               0.2720633086607407, $CellContext`w2 -> 
               0.21577363158610366`}}, {
             "incr[1,1.2]", -2, 0, 
              0, {$CellContext`s1 -> 0.007381447685882369, $CellContext`s2 -> 
               0.5258988789194179, $CellContext`w0 -> 
               7.674135993765284*^-6, $CellContext`w1 -> 
               0.5561530668835166, $CellContext`w2 -> 0.1896655761913324}}, {
             "incr[1,1.2]", -2, 0, 
              0.5, {$CellContext`s1 -> 0.006229006747222965, $CellContext`s2 -> 
               0.5378881967253992, $CellContext`w0 -> 
               7.743647919929169*^-6, $CellContext`w1 -> 
               0.54665044012218, $CellContext`w2 -> 0.1991953809664954}}, {
             "incr[1,1.2]", -2, 0, 
              1, {$CellContext`s1 -> 0.004320134653122537, $CellContext`s2 -> 
               0.5490287299009362, $CellContext`w0 -> 
               7.986576367973494*^-6, $CellContext`w1 -> 
               0.5378362368794556, $CellContext`w2 -> 
               0.20810331786073616`}}, {
             "incr[1,1.2]", -2, 0, 
              2, {$CellContext`s1 -> -0.016135977974772148`, $CellContext`s2 -> 
               0.5587679647739967, $CellContext`w0 -> 
               0.24399498406095077`, $CellContext`w1 -> 
               0.283949252857418, $CellContext`w2 -> 0.21788805552571383`}}, {
             "incr[1,1.2]", -2, 0, 
              3, {$CellContext`s1 -> 0.005203458444486431, $CellContext`s2 -> 
               0.5633524601913522, $CellContext`w0 -> 
               0.00001075087065767897, $CellContext`w1 -> 
               0.5206453460941827, $CellContext`w2 -> 0.2251120521976106}}, {
             "incr[1,1.2]", -2, 0.5, 
              0.5, {$CellContext`s1 -> 0.004935035406117174, $CellContext`s2 -> 
               0.5446990976113631, $CellContext`w0 -> 
               7.778006982158535*^-6, $CellContext`w1 -> 
               0.5399943096818499, $CellContext`w2 -> 
               0.20587079147049672`}}, {
             "incr[1,1.2]", -2, 0.5, 
              1, {$CellContext`s1 -> -0.01423682495967548, $CellContext`s2 -> 
               0.5244911806356333, $CellContext`w0 -> 
               0.00029290439705645534`, $CellContext`w1 -> 
               0.5521991274629676, $CellContext`w2 -> 
               0.19177218433041907`}}, {
             "incr[1,1.2]", -2, 0.5, 
              2, {$CellContext`s1 -> -0.047077054687321644`, $CellContext`s2 -> 
               0.5503224310208675, $CellContext`w0 -> 
               0.2711631788434466, $CellContext`w1 -> 
               0.25764585841595405`, $CellContext`w2 -> 
               0.21631868164257856`}}, {
             "incr[1,1.2]", -2, 0.5, 
              3, {$CellContext`s1 -> -0.07299029588671438, $CellContext`s2 -> 
               0.5453986157019592, $CellContext`w0 -> 
               0.2816341513200392, $CellContext`w1 -> 
               0.24275764689971566`, $CellContext`w2 -> 
               0.21998249068313794`}}, {
             "incr[1,1.2]", -2, 1, 
              1, {$CellContext`s1 -> 0.0008851985309162027, $CellContext`s2 -> 
               0.3737531986642136, $CellContext`w0 -> 
               0.008094351029115335, $CellContext`w1 -> 
               0.0656692465390628, $CellContext`w2 -> 
               0.22771516576223588`}}, {
             "incr[1,1.2]", -2, 1, 
              2, {$CellContext`s1 -> -28.502041260548395`, $CellContext`s2 -> 
               0.0029593087926353344`, $CellContext`w0 -> 
               0.5589648130788821, $CellContext`w1 -> 
               0.0001310930399350599, $CellContext`w2 -> 
               0.08010622508528342}}, {
             "incr[1,1.2]", -2, 1, 
              3, {$CellContext`s1 -> -0.5017952576420521, $CellContext`s2 -> 
               0.501509995676942, $CellContext`w0 -> 
               6.303027588326497*^-9, $CellContext`w1 -> 
               0.06507198194354913, $CellContext`w2 -> 
               0.30782768374168257`}}, {
             "incr[1,1.2]", -2, 2, 
              2, {$CellContext`s1 -> 0.04552309453971621, $CellContext`s2 -> 
               0.5937850833698918, $CellContext`w0 -> 
               0.3041298642460121, $CellContext`w1 -> 
               0.18225000000000002`, $CellContext`w2 -> 
               0.25005686695415197`}}, {
             "incr[1,1.2]", -2, 2, 
              3, {$CellContext`s1 -> 0.006225801122667952, $CellContext`s2 -> 
               0.6678130465053972, $CellContext`w0 -> 
               0.00002973753364902245, $CellContext`w1 -> 
               0.11528395437849265`, $CellContext`w2 -> 0.363452419251424}}, {
             "incr[1,1.2]", -2, 3, 
              3, {$CellContext`s1 -> 0.011471517669604301`, $CellContext`s2 -> 
               0.7173706784678021, $CellContext`w0 -> 
               9.894100546893703*^-6, $CellContext`w1 -> 
               0.1302605955672551, $CellContext`w2 -> 
               0.38854570959277657`}}, {
             "incr[1,1.2]", -1, -1, -1, {$CellContext`s1 -> 
               0.1348903012440207, $CellContext`s2 -> 
               0.7906685938280038, $CellContext`w0 -> 
               0.7188021692342635, $CellContext`w1 -> 
               0.30457173683333416`, $CellContext`w2 -> 0.}}, {
             "incr[1,1.2]", -1, -1, -0.5, {$CellContext`s1 -> 
               0.003998186208899566, $CellContext`s2 -> 
               0.47240380962197565`, $CellContext`w0 -> 
               8.677262808976025*^-6, $CellContext`w1 -> 
               0.5914051579733638, $CellContext`w2 -> 
               0.15441441368787573`}}, {
             "incr[1,1.2]", -1, -1, 
              0, {$CellContext`s1 -> 0.0013264995801762745`, $CellContext`s2 -> 
               0.5201447586238249, $CellContext`w0 -> 
               8.858119135684796*^-6, $CellContext`w1 -> 
               0.5623837060061655, $CellContext`w2 -> 
               0.18398621321247083`}}, {
             "incr[1,1.2]", -1, -1, 
              0.5, {$CellContext`s1 -> -0.006345476155656317, $CellContext`s2 -> 
               0.5461016286322414, $CellContext`w0 -> 
               0.2865752466004334, $CellContext`w1 -> 
               0.25773637016533757`, $CellContext`w2 -> 0.2025}}, {
             "incr[1,1.2]", -1, -1, 
              1, {$CellContext`s1 -> -0.02188933028834074, $CellContext`s2 -> 
               0.5518370133271916, $CellContext`w0 -> 
               0.31963986418089174`, $CellContext`w1 -> 
               0.21884136993196068`, $CellContext`w2 -> 
               0.20806749344784647`}}, {
             "incr[1,1.2]", -1, -1, 
              2, {$CellContext`s1 -> -0.07321091484425579, $CellContext`s2 -> 
               0.5519787410888144, $CellContext`w0 -> 
               0.3336215842496756, $CellContext`w1 -> 
               0.20205980746073163`, $CellContext`w2 -> 
               0.2094033569882759}}, {
             "incr[1,1.2]", -1, -1, 
              3, {$CellContext`s1 -> -0.09357009672323266, $CellContext`s2 -> 
               0.5530182259610796, $CellContext`w0 -> 
               0.343150331487975, $CellContext`w1 -> 
               0.18747660349949294`, $CellContext`w2 -> 
               0.21313222653684408`}}, {
             "incr[1,1.2]", -1, -0.5, -0.5, {$CellContext`s1 -> 
               0.0057353253785117405`, $CellContext`s2 -> 
               0.4939044380129758, $CellContext`w0 -> 
               8.303081028795034*^-6, $CellContext`w1 -> 
               0.5785749508393545, $CellContext`w2 -> 
               0.16718376186952413`}}, {
             "incr[1,1.2]", -1, -0.5, 
              0, {$CellContext`s1 -> 0.004326792056937228, $CellContext`s2 -> 
               0.5182616447576978, $CellContext`w0 -> 
               7.969512921190875*^-6, $CellContext`w1 -> 
               0.5629332266330079, $CellContext`w2 -> 
               0.18303926871758375`}}, {
             "incr[1,1.2]", -1, -0.5, 
              0.5, {$CellContext`s1 -> 
               0.0031324196446532826`, $CellContext`s2 -> 
               0.5357518362670733, $CellContext`w0 -> 
               8.456559413660069*^-6, $CellContext`w1 -> 
               0.5495439537951018, $CellContext`w2 -> 0.1965891694873332}}, {
             "incr[1,1.2]", -1, -0.5, 
              1, {$CellContext`s1 -> -0.00921005840227327, $CellContext`s2 -> 
               0.515947812411224, $CellContext`w0 -> 
               0.00036313194937944403`, $CellContext`w1 -> 
               0.5571584403882004, $CellContext`w2 -> 
               0.18590378411032477`}}, {
             "incr[1,1.2]", -1, -0.5, 
              2, {$CellContext`s1 -> -0.02227997327816924, $CellContext`s2 -> 
               0.5592137678778067, $CellContext`w0 -> 
               0.26026780625897394`, $CellContext`w1 -> 
               0.26957509178456635`, $CellContext`w2 -> 
               0.2158874572486649}}, {
             "incr[1,1.2]", -1, -0.5, 
              3, {$CellContext`s1 -> -0.04645684615805852, $CellContext`s2 -> 
               0.5557689686854155, $CellContext`w0 -> 
               0.256373542487484, $CellContext`w1 -> 
               0.27143988720262063`, $CellContext`w2 -> 
               0.21652427854572587`}}, {
             "incr[1,1.2]", -1, 0, 
              0, {$CellContext`s1 -> 0.006925719834000757, $CellContext`s2 -> 
               0.5260574901167743, $CellContext`w0 -> 
               7.68372373182181*^-6, $CellContext`w1 -> 
               0.5561353162858136, $CellContext`w2 -> 0.1896958428858614}}, {
             "incr[1,1.2]", -1, 0, 
              0.5, {$CellContext`s1 -> 0.005204391257217773, $CellContext`s2 -> 
               0.5372430467132284, $CellContext`w0 -> 
               7.751018737329287*^-6, $CellContext`w1 -> 
               0.5475708023391147, $CellContext`w2 -> 
               0.19832018502166576`}}, {
             "incr[1,1.2]", -1, 0, 
              1, {$CellContext`s1 -> -0.011319318561033858`, $CellContext`s2 -> 
               0.5279473374729279, $CellContext`w0 -> 
               0.00007472957572962825, $CellContext`w1 -> 
               0.5596575727188356, $CellContext`w2 -> 
               0.18586919357449824`}}, {
             "incr[1,1.2]", -1, 0, 
              2, {$CellContext`s1 -> -0.018263918453848713`, $CellContext`s2 -> 
               0.558051014149393, $CellContext`w0 -> 
               0.24415100318257352`, $CellContext`w1 -> 
               0.2842565455095236, $CellContext`w2 -> 0.217353882485986}}, {
             "incr[1,1.2]", -1, 0, 
              3, {$CellContext`s1 -> -0.02056849003489243, $CellContext`s2 -> 
               0.5441296255882984, $CellContext`w0 -> 
               0.00037599374679796025`, $CellContext`w1 -> 
               0.5418268881289924, $CellContext`w2 -> 
               0.20143839702767305`}}, {
             "incr[1,1.2]", -1, 0.5, 
              0.5, {$CellContext`s1 -> -0.010427587569782487`, \
$CellContext`s2 -> 0.5178726464377359, $CellContext`w0 -> 
               0.00031559361872264617`, $CellContext`w1 -> 
               0.561433203987722, $CellContext`w2 -> 0.18328048241196232`}}, {
             "incr[1,1.2]", -1, 0.5, 
              1, {$CellContext`s1 -> -0.012269925826865891`, $CellContext`s2 -> 
               0.5197784329783303, $CellContext`w0 -> 
               0.06977978396122153, $CellContext`w1 -> 
               0.48215473018659305`, $CellContext`w2 -> 
               0.1913029728756294}}, {
             "incr[1,1.2]", -1, 0.5, 
              2, {$CellContext`s1 -> -0.047015315124808325`, $CellContext`s2 -> 
               0.5503804565378203, $CellContext`w0 -> 
               0.2719778590590388, $CellContext`w1 -> 
               0.2567764156375966, $CellContext`w2 -> 
               0.21635784061437288`}}, {
             "incr[1,1.2]", -1, 0.5, 
              3, {$CellContext`s1 -> -0.07216315664809625, $CellContext`s2 -> 
               0.5457297682233047, $CellContext`w0 -> 
               0.2824740057468875, $CellContext`w1 -> 
               0.24171401402272938`, $CellContext`w2 -> 
               0.2201592139894035}}, {
             "incr[1,1.2]", -1, 1, 
              1, {$CellContext`s1 -> 0.002417871782914551, $CellContext`s2 -> 
               0.38022126389837224`, $CellContext`w0 -> 
               0.005165773612417327, $CellContext`w1 -> 
               0.06728637922891213, $CellContext`w2 -> 0.2283119679659692}}, {
             "incr[1,1.2]", -1, 1, 
              2, {$CellContext`s1 -> 0.004373548967688856, $CellContext`s2 -> 
               0.50624398580207, $CellContext`w0 -> 
               0.003806053733633993, $CellContext`w1 -> 
               0.08206792223823281, $CellContext`w2 -> 
               0.28586605126128656`}}, {
             "incr[1,1.2]", -1, 1, 
              3, {$CellContext`s1 -> -0.0035479326073722265`, $CellContext`s2 -> 
               0.5766680967121135, $CellContext`w0 -> 
               0.0075141003863346285`, $CellContext`w1 -> 
               0.08529129850952023, $CellContext`w2 -> 0.3266561710201212}}, {
             "incr[1,1.2]", -1, 2, 
              2, {$CellContext`s1 -> 0.01345803291661978, $CellContext`s2 -> 
               0.6092700450055785, $CellContext`w0 -> 
               0.0007455232735639878, $CellContext`w1 -> 
               0.10401940407719287`, $CellContext`w2 -> 
               0.33151049326448045`}}, {
             "incr[1,1.2]", -1, 2, 
              3, {$CellContext`s1 -> 0.019734177534017593`, $CellContext`s2 -> 
               0.6684890078027157, $CellContext`w0 -> 
               0.0005591685023293951, $CellContext`w1 -> 
               0.11549328403570762`, $CellContext`w2 -> 
               0.36314537945268077`}}, {
             "incr[1,1.2]", -1, 3, 
              3, {$CellContext`s1 -> 0.03408755702894854, $CellContext`s2 -> 
               0.7176918297219798, $CellContext`w0 -> 
               0.00035702370639380216`, $CellContext`w1 -> 
               0.13038124315758864`, $CellContext`w2 -> 
               0.38830837533894985`}}, {
             "incr[1,1.2]", -0.5, -0.5, -0.5, {$CellContext`s1 -> 
               0.011381084292610352`, $CellContext`s2 -> 
               0.49939677238147856`, $CellContext`w0 -> 
               0.00905089431253053, $CellContext`w1 -> 
               0.5576176313436776, $CellContext`w2 -> 
               0.17759414036232363`}}, {
             "incr[1,1.2]", -0.5, -0.5, 
              0, {$CellContext`s1 -> 0.01313810218736127, $CellContext`s2 -> 
               0.5165162501568182, $CellContext`w0 -> 
               0.0034861198925573646`, $CellContext`w1 -> 
               0.5476185786151304, $CellContext`w2 -> 
               0.19254332550502548`}}, {
             "incr[1,1.2]", -0.5, -0.5, 
              0.5, {$CellContext`s1 -> -0.009317377610705412, $CellContext`s2 -> 
               0.5169621238512111, $CellContext`w0 -> 
               0.00001656040048866771, $CellContext`w1 -> 
               0.5704237180157118, $CellContext`w2 -> 
               0.17611103962829894`}}, {
             "incr[1,1.2]", -0.5, -0.5, 
              1, {$CellContext`s1 -> -0.01142368654451768, $CellContext`s2 -> 
               0.5300743826458345, $CellContext`w0 -> 
               0.00031816595482525616`, $CellContext`w1 -> 
               0.5598735855602405, $CellContext`w2 -> 
               0.18580315865993718`}}, {
             "incr[1,1.2]", -0.5, -0.5, 
              2, {$CellContext`s1 -> -0.016167606519827217`, $CellContext`s2 -> 
               0.5465027377615277, $CellContext`w0 -> 
               0.001167205649037628, $CellContext`w1 -> 
               0.5474063420535178, $CellContext`w2 -> 
               0.19669604437439658`}}, {
             "incr[1,1.2]", -0.5, -0.5, 
              3, {$CellContext`s1 -> 0.0013459724123527665`, $CellContext`s2 -> 
               0.5654191035046334, $CellContext`w0 -> 
               0.0004688985089394833, $CellContext`w1 -> 
               0.5216816723693171, $CellContext`w2 -> 0.2233869832673924}}, {
             "incr[1,1.2]", -0.5, 0, 
              0, {$CellContext`s1 -> 0.01862509747519383, $CellContext`s2 -> 
               0.5238045251494964, $CellContext`w0 -> 
               0.0013129343200063614`, $CellContext`w1 -> 
               0.5390023107349811, $CellContext`w2 -> 
               0.20244510292612247`}}, {
             "incr[1,1.2]", -0.5, 0, 
              0.5, {$CellContext`s1 -> -0.00829268448586229, $CellContext`s2 -> 
               0.5170780501738118, $CellContext`w0 -> 
               0.00022997504160511496`, $CellContext`w1 -> 
               0.5687745016361883, $CellContext`w2 -> 0.1772237022894855}}, {
             "incr[1,1.2]", -0.5, 0, 
              1, {$CellContext`s1 -> -0.009846666221639579, $CellContext`s2 -> 
               0.5264771763449086, $CellContext`w0 -> 
               0.0030453637538129636`, $CellContext`w1 -> 
               0.5566488874535568, $CellContext`w2 -> 
               0.18565707925348168`}}, {
             "incr[1,1.2]", -0.5, 0, 
              2, {$CellContext`s1 -> -0.01885327710947552, $CellContext`s2 -> 
               0.5579582739675967, $CellContext`w0 -> 
               0.2443505930518823, $CellContext`w1 -> 
               0.28390761957445126`, $CellContext`w2 -> 
               0.2175101226992058}}, {
             "incr[1,1.2]", -0.5, 0, 
              3, {$CellContext`s1 -> -0.010916104266606191`, $CellContext`s2 -> 
               0.5633381709124784, $CellContext`w0 -> 
               0.24341465838315376`, $CellContext`w1 -> 
               0.2770849861549716, $CellContext`w2 -> 
               0.22550035189512477`}}, {
             "incr[1,1.2]", -0.5, 0.5, 
              0.5, {$CellContext`s1 -> -0.008362658599528863, $CellContext`s2 -> 
               0.5121370860737551, $CellContext`w0 -> 
               0.008340107015672962, $CellContext`w1 -> 
               0.552981516534604, $CellContext`w2 -> 0.18266696723572373`}}, {
             "incr[1,1.2]", -0.5, 0.5, 
              1, {$CellContext`s1 -> 0.0006826385850185898, $CellContext`s2 -> 
               0.5296734034751601, $CellContext`w0 -> 
               0.44761723364799866`, $CellContext`w1 -> 
               0.0871185576620131, $CellContext`w2 -> 
               0.20314856853509722`}}, {
             "incr[1,1.2]", -0.5, 0.5, 
              2, {$CellContext`s1 -> 0.0039017050529111443`, $CellContext`s2 -> 
               0.43180727867840024`, $CellContext`w0 -> 
               0.019304757709804533`, $CellContext`w1 -> 
               0.06689826570713925, $CellContext`w2 -> 0.2527555694005787}}, {
             "incr[1,1.2]", -0.5, 0.5, 
              3, {$CellContext`s1 -> 0.006008738181391663, $CellContext`s2 -> 
               0.5200156830347271, $CellContext`w0 -> 
               0.0074535734596528035`, $CellContext`w1 -> 
               0.06966839561983952, $CellContext`w2 -> 0.3002143054133124}}, {
             "incr[1,1.2]", -0.5, 1, 
              1, {$CellContext`s1 -> 0.005165695438340915, $CellContext`s2 -> 
               0.3938447776696467, $CellContext`w0 -> 
               0.015479066160626798`, $CellContext`w1 -> 
               0.0706172439588652, $CellContext`w2 -> 
               0.22737976801342152`}}, {
             "incr[1,1.2]", -0.5, 1, 
              2, {$CellContext`s1 -> 0.01220337031676198, $CellContext`s2 -> 
               0.5172216646707661, $CellContext`w0 -> 
               0.0059942735993592025`, $CellContext`w1 -> 
               0.08415775830952041, $CellContext`w2 -> 
               0.28482576656834524`}}, {
             "incr[1,1.2]", -0.5, 1, 
              3, {$CellContext`s1 -> 0.01587808682459976, $CellContext`s2 -> 
               0.5904399872050162, $CellContext`w0 -> 
               0.005608166572931868, $CellContext`w1 -> 
               0.09100486119928212, $CellContext`w2 -> 
               0.32506604095227054`}}, {
             "incr[1,1.2]", -0.5, 2, 
              2, {$CellContext`s1 -> 0.030269189081139476`, $CellContext`s2 -> 
               0.6144745636804531, $CellContext`w0 -> 
               0.004359189869135238, $CellContext`w1 -> 
               0.10550572309372928`, $CellContext`w2 -> 
               0.3296384238004723}}, {
             "incr[1,1.2]", -0.5, 2, 
              3, {$CellContext`s1 -> 0.04413451330910364, $CellContext`s2 -> 
               0.6721464822929567, $CellContext`w0 -> 
               0.0038129841859336653`, $CellContext`w1 -> 
               0.11681714436943978`, $CellContext`w2 -> 
               0.3611351383894065}}, {
             "incr[1,1.2]", -0.5, 3, 
              3, {$CellContext`s1 -> 0.06989142784481812, $CellContext`s2 -> 
               0.7200348975824574, $CellContext`w0 -> 
               0.003143049194293276, $CellContext`w1 -> 
               0.13140553466383129`, $CellContext`w2 -> 
               0.3863495735802678}}, {
             "incr[1,1.2]", 0, 0, 
              0, {$CellContext`s1 -> 0.03336564206817328, $CellContext`s2 -> 
               0.5271250293166416, $CellContext`w0 -> 
               0.015223684956468772`, $CellContext`w1 -> 
               0.5086230327271992, $CellContext`w2 -> 
               0.21649237429392637`}}, {
             "incr[1,1.2]", 0, 0, 
              0.5, {$CellContext`s1 -> -0.008760034190704872, $CellContext`s2 -> 
               0.5236978300732359, $CellContext`w0 -> 
               0.001981842322341473, $CellContext`w1 -> 
               0.5657513910266649, $CellContext`w2 -> 
               0.17927249970783932`}}, {
             "incr[1,1.2]", 0, 0, 
              1, {$CellContext`s1 -> -0.003915214887224064, $CellContext`s2 -> 
               0.49682805432115595`, $CellContext`w0 -> 
               0.07858429737353814, $CellContext`w1 -> 
               0.47359730032330216`, $CellContext`w2 -> 
               0.18678830798909368`}}, {
             "incr[1,1.2]", 0, 0, 
              2, {$CellContext`s1 -> -0.011381118454693612`, $CellContext`s2 -> 
               0.5603663303493794, $CellContext`w0 -> 
               0.2427704498773434, $CellContext`w1 -> 
               0.28285409294587377`, $CellContext`w2 -> 
               0.22047475957139454`}}, {
             "incr[1,1.2]", 0, 0, 
              3, {$CellContext`s1 -> -0.005943961783473496, $CellContext`s2 -> 
               0.5582219896716057, $CellContext`w0 -> 
               0.050904971700629756`, $CellContext`w1 -> 
               0.4790235624607732, $CellContext`w2 -> 
               0.21618166062676805`}}, {
             "incr[1,1.2]", 0, 0.5, 
              0.5, {$CellContext`s1 -> 0.001793037354839037, $CellContext`s2 -> 
               0.5435152586029973, $CellContext`w0 -> 
               0.0140228063572776, $CellContext`w1 -> 
               0.5298056153987464, $CellContext`w2 -> 
               0.20247973990181656`}}, {
             "incr[1,1.2]", 0, 0.5, 
              1, {$CellContext`s1 -> 0.00313756707436743, $CellContext`s2 -> 
               0.5552418512064612, $CellContext`w0 -> 
               0.11008904953172959`, $CellContext`w1 -> 
               0.42212877203210764`, $CellContext`w2 -> 
               0.2142602422306615}}, {
             "incr[1,1.2]", 0, 0.5, 
              2, {$CellContext`s1 -> -0.033502800229417345`, $CellContext`s2 -> 
               0.5556650027500319, $CellContext`w0 -> 
               0.30680669773743047`, $CellContext`w1 -> 
               0.217624493816866, $CellContext`w2 -> 0.21979606352901915`}}, {
             "incr[1,1.2]", 0, 0.5, 
              3, {$CellContext`s1 -> -0.046228106929555535`, $CellContext`s2 -> 
               0.5540608629429347, $CellContext`w0 -> 
               0.2925127452950135, $CellContext`w1 -> 
               0.2273423309916818, $CellContext`w2 -> 0.2195316660648955}}, {
             "incr[1,1.2]", 0, 1, 
              1, {$CellContext`s1 -> 0.017906980582513693`, $CellContext`s2 -> 
               0.4439019575817688, $CellContext`w0 -> 
               0.021383048964740838`, $CellContext`w1 -> 
               0.07876171884119992, $CellContext`w2 -> 
               0.22935356005530522`}}, {
             "incr[1,1.2]", 0, 1, 
              2, {$CellContext`s1 -> 0.03626439102133086, $CellContext`s2 -> 
               0.5522479626724774, $CellContext`w0 -> 
               0.021305667950594943`, $CellContext`w1 -> 
               0.09354371842418256, $CellContext`w2 -> 0.2811935485238598}}, {
             "incr[1,1.2]", 0, 1, 
              3, {$CellContext`s1 -> 0.04948376153507845, $CellContext`s2 -> 
               0.6194606585320473, $CellContext`w0 -> 
               0.021042316669719174`, $CellContext`w1 -> 
               0.10095987507508843`, $CellContext`w2 -> 0.319052356566861}}, {
             "incr[1,1.2]", 0, 2, 
              2, {$CellContext`s1 -> 0.07545787772331936, $CellContext`s2 -> 
               0.6378737849547289, $CellContext`w0 -> 
               0.020718073026122354`, $CellContext`w1 -> 
               0.11343799945839439`, $CellContext`w2 -> 
               0.3218699721438619}}, {
             "incr[1,1.2]", 0, 2, 
              3, {$CellContext`s1 -> 0.10480070140585769`, $CellContext`s2 -> 
               0.6903822928525628, $CellContext`w0 -> 
               0.020111821248212088`, $CellContext`w1 -> 
               0.12446766207110233`, $CellContext`w2 -> 
               0.35158470450948787`}}, {
             "incr[1,1.2]", 0, 3, 
              3, {$CellContext`s1 -> 0.1467637182350996, $CellContext`s2 -> 
               0.7336666525572271, $CellContext`w0 -> 
               0.01928593121651952, $CellContext`w1 -> 
               0.1382229631297171, $CellContext`w2 -> 
               0.37539869186394403`}}, {
             "incr[1,1.2]", 0.5, 0.5, 
              0.5, {$CellContext`s1 -> 0.012283332068077564`, $CellContext`s2 -> 
               0.3646963018793077, $CellContext`w0 -> 
               0.028345396520832605`, $CellContext`w1 -> 
               0.07011489331650711, $CellContext`w2 -> 
               0.18592376790292692`}}, {
             "incr[1,1.2]", 0.5, 0.5, 
              1, {$CellContext`s1 -> 0.024071459066301575`, $CellContext`s2 -> 
               0.4446773740288123, $CellContext`w0 -> 
               0.03231424079963614, $CellContext`w1 -> 
               0.08166214385819302, $CellContext`w2 -> 
               0.21559906909555007`}}, {
             "incr[1,1.2]", 0.5, 0.5, 
              2, {$CellContext`s1 -> -0.21111120231135885`, $CellContext`s2 -> 
               0.4975078545883098, $CellContext`w0 -> 
               0.3915756299440698, $CellContext`w1 -> 
               0.15980875499160319`, $CellContext`w2 -> 
               0.1784923763252862}}, {
             "incr[1,1.2]", 0.5, 0.5, 
              3, {$CellContext`s1 -> 0.06454923165926378, $CellContext`s2 -> 
               0.6200762390445846, $CellContext`w0 -> 
               0.03429604723577822, $CellContext`w1 -> 
               0.10219655108161949`, $CellContext`w2 -> 
               0.3048116455017509}}, {
             "incr[1,1.2]", 0.5, 1, 
              1, {$CellContext`s1 -> 0.04562070604946755, $CellContext`s2 -> 
               0.515437120040647, $CellContext`w0 -> 
               0.037737856595759636`, $CellContext`w1 -> 
               0.09455136666596853, $CellContext`w2 -> 
               0.24022479995039672`}}, {
             "incr[1,1.2]", 0.5, 1, 
              2, {$CellContext`s1 -> 0.08488791110896769, $CellContext`s2 -> 
               0.6081818536089654, $CellContext`w0 -> 
               0.04048136889089462, $CellContext`w1 -> 
               0.11017268461543792`, $CellContext`w2 -> 
               0.28383084338774817`}}, {
             "incr[1,1.2]", 0.5, 1, 
              3, {$CellContext`s1 -> 0.11365154390811859`, $CellContext`s2 -> 
               0.6657631296511859, $CellContext`w0 -> 
               0.040640742132849884`, $CellContext`w1 -> 
               0.11861591445751118`, $CellContext`w2 -> 
               0.3170255563179509}}, {
             "incr[1,1.2]", 0.5, 2, 
              2, {$CellContext`s1 -> 0.14543861568189193`, $CellContext`s2 -> 
               0.6790849656432434, $CellContext`w0 -> 
               0.044249213464368546`, $CellContext`w1 -> 
               0.12881330188325318`, $CellContext`w2 -> 
               0.31557861794251385`}}, {
             "incr[1,1.2]", 0.5, 2, 
              3, {$CellContext`s1 -> 0.18795649086578725`, $CellContext`s2 -> 
               0.7234484403147454, $CellContext`w0 -> 
               0.04474816164031398, $CellContext`w1 -> 
               0.13962835575575328`, $CellContext`w2 -> 
               0.3407492466939192}}, {
             "incr[1,1.2]", 0.5, 3, 
              3, {$CellContext`s1 -> 0.2384162479634687, $CellContext`s2 -> 
               0.7597477052402811, $CellContext`w0 -> 
               0.04552262528826181, $CellContext`w1 -> 
               0.1523495698821147, $CellContext`w2 -> 0.360196474887633}}, {
             "incr[1,1.2]", 1, 1, 
              1, {$CellContext`s1 -> 0.07903739384724866, $CellContext`s2 -> 
               0.5759053499961961, $CellContext`w0 -> 
               0.04584533277943378, $CellContext`w1 -> 
               0.10774961968154503`, $CellContext`w2 -> 
               0.2588253001725591}}, {
             "incr[1,1.2]", 1, 1, 
              2, {$CellContext`s1 -> 0.133436098633365, $CellContext`s2 -> 
               0.6540714366609008, $CellContext`w0 -> 
               0.050701749686066, $CellContext`w1 -> 
               0.12409411419951075`, $CellContext`w2 -> 
               0.29434295392308163`}}, {
             "incr[1,1.2]", 1, 1, 
              3, {$CellContext`s1 -> 0.17197081986629856`, $CellContext`s2 -> 
               0.7029447297005786, $CellContext`w0 -> 
               0.05138274435995147, $CellContext`w1 -> 
               0.13336505819908673`, $CellContext`w2 -> 
               0.3226334583353715}}, {
             "incr[1,1.2]", 1, 2, 
              2, {$CellContext`s1 -> 0.20324494303947424`, $CellContext`s2 -> 
               0.7131019854272578, $CellContext`w0 -> 
               0.058041020082642794`, $CellContext`w1 -> 
               0.14186856699775285`, $CellContext`w2 -> 0.317897359984896}}, {
             "incr[1,1.2]", 1, 2, 
              3, {$CellContext`s1 -> 0.25047247892405144`, $CellContext`s2 -> 
               0.7507196748320135, $CellContext`w0 -> 
               0.0598476904352152, $CellContext`w1 -> 
               0.1525666105256079, $CellContext`w2 -> 0.3384112688645718}}, {
             "incr[1,1.2]", 1, 3, 
              3, {$CellContext`s1 -> 0.3018970264652531, $CellContext`s2 -> 
               0.7815311805812193, $CellContext`w0 -> 
               0.06245414913518216, $CellContext`w1 -> 
               0.16455415062568943`, $CellContext`w2 -> 
               0.35344571831697846`}}, {
             "incr[1,1.2]", 2, 2, 
              2, {$CellContext`s1 -> 0.2789080075405765, $CellContext`s2 -> 
               0.7576216412620762, $CellContext`w0 -> 
               0.06959727801938229, $CellContext`w1 -> 
               0.15908887299835497`, $CellContext`w2 -> 
               0.3301913523955687}}, {
             "incr[1,1.2]", 2, 2, 
              3, {$CellContext`s1 -> 0.32845234106943527`, $CellContext`s2 -> 
               0.7868115722508388, $CellContext`w0 -> 
               0.07354859127193292, $CellContext`w1 -> 
               0.16997826679602218`, $CellContext`w2 -> 
               0.3436094522642696}}, {
             "incr[1,1.2]", 2, 3, 
              3, {$CellContext`s1 -> 0.378415855175906, $CellContext`s2 -> 
               0.8108819731259795, $CellContext`w0 -> 
               0.07895134699971834, $CellContext`w1 -> 
               0.18133236009331966`, $CellContext`w2 -> 
               0.3520753879478642}}, {
             "incr[1,1.2]", 3, 3, 
              3, {$CellContext`s1 -> 0.426788644505842, $CellContext`s2 -> 
               0.8308455541767892, $CellContext`w0 -> 
               0.08621585668825317, $CellContext`w1 -> 
               0.19258045437805116`, $CellContext`w2 -> 
               0.35599404093429504`}}, {
             "decr[1,1.2]", -2, -2, -2, {$CellContext`s1 -> 
               0.10000000028222485`, $CellContext`s2 -> 
               0.6000000003712326, $CellContext`w0 -> 
               0.2499999173960403, $CellContext`w1 -> 
               0.24873983769782104`, $CellContext`w2 -> 
               0.24679409950431017`}}, {
             "decr[1,1.2]", -2, -2, -1, {$CellContext`s1 -> 
               0.10000203044985302`, $CellContext`s2 -> 
               0.5999998867809233, $CellContext`w0 -> 
               0.2555363602593029, $CellContext`w1 -> 
               0.545941310457685, $CellContext`w2 -> 
               0.0027027559296597895`}}, {
             "decr[1,1.2]", -2, -2, -0.5, {$CellContext`s1 -> 
               0.10015844387947602`, $CellContext`s2 -> 
               0.6007509280496787, $CellContext`w0 -> 
               0.2485977031691983, $CellContext`w1 -> 
               0.23229476970322932`, $CellContext`w2 -> 
               0.26990499812773644`}}, {
             "decr[1,1.2]", -2, -2, 
              0, {$CellContext`s1 -> 0.05210891492366567, $CellContext`s2 -> 
               0.5391654324061684, $CellContext`w0 -> 
               0.23525533645933075`, $CellContext`w1 -> 
               1.2671095494181968`*^-6, $CellContext`w2 -> 
               0.43736185044859366`}}, {
             "decr[1,1.2]", -2, -2, 
              0.5, {$CellContext`s1 -> 0.1371125562064716, $CellContext`s2 -> 
               0.5674299769375463, $CellContext`w0 -> 
               0.19411190525212124`, $CellContext`w1 -> 
               0.00004774354289271617, $CellContext`w2 -> 
               0.9999993630441548}}, {
             "decr[1,1.2]", -2, -2, 
              1, {$CellContext`s1 -> 0.09909660597256777, $CellContext`s2 -> 
               0.5997573006118286, $CellContext`w0 -> 
               0.25338021554184464`, $CellContext`w1 -> 
               0.24687499999991291`, $CellContext`w2 -> 
               0.24981529209008263`}}, {
             "decr[1,1.2]", -2, -2, 
              2, {$CellContext`s1 -> 0.054379732710692553`, $CellContext`s2 -> 
               0.5943423668942794, $CellContext`w0 -> 
               0.3420225123271721, $CellContext`w1 -> 
               0.16402500000000003`, $CellContext`w2 -> 
               0.2434028678220223}}, {
             "decr[1,1.2]", -2, -2, 
              3, {$CellContext`s1 -> 0.09999999999999903, $CellContext`s2 -> 
               0.5999999999999999, $CellContext`w0 -> 
               0.25000000000000294`, $CellContext`w1 -> 
               0.24999999999999717`, $CellContext`w2 -> 
               0.2499999999999999}}, {
             "decr[1,1.2]", -2, -1, -1, {$CellContext`s1 -> 
               0.09336068397598503, $CellContext`s2 -> 
               0.5673726896121302, $CellContext`w0 -> 
               0.2528201297840742, $CellContext`w1 -> 
               8.425420096489754*^-7, $CellContext`w2 -> 
               0.4361862771007602}}, {
             "decr[1,1.2]", -2, -1, -0.5, {$CellContext`s1 -> 
               0.002704857931878795, $CellContext`s2 -> 
               0.4788224329014724, $CellContext`w0 -> 
               9.035838236192164*^-6, $CellContext`w1 -> 
               0.5986009842166319, $CellContext`w2 -> 
               0.14940365881483259`}}, {
             "decr[1,1.2]", -2, -1, 
              0, {$CellContext`s1 -> 0.00010115561020779804`, $CellContext`s2 -> 
               0.5295461052256618, $CellContext`w0 -> 
               0.5134490182284047, $CellContext`w1 -> 
               0.05151048833609363, $CellContext`w2 -> 
               0.18353289960334085`}}, {
             "decr[1,1.2]", -2, -1, 
              0.5, {$CellContext`s1 -> -0.0036307095099201298`, \
$CellContext`s2 -> 0.5533750953180726, $CellContext`w0 -> 
               0.3223373508666801, $CellContext`w1 -> 
               0.2238221270254191, $CellContext`w2 -> 0.2025}}, {
             "decr[1,1.2]", -2, -1, 
              1, {$CellContext`s1 -> -0.17040639873287, $CellContext`s2 -> 
               0.16622081219522736`, $CellContext`w0 -> 
               0.5438139592431114, $CellContext`w1 -> 
               0.13223846340444692`, $CellContext`w2 -> 
               0.06588833376799154}}, {
             "decr[1,1.2]", -2, -1, 
              2, {$CellContext`s1 -> -0.01191325618422624, $CellContext`s2 -> 
               0.008943592642256127, $CellContext`w0 -> 
               0.008007428305189926, $CellContext`w1 -> 
               0.07319619171108606, $CellContext`w2 -> 0.0576741069170587}}, {
             "decr[1,1.2]", -2, -1, 
              3, {$CellContext`s1 -> -0.040965414855485945`, $CellContext`s2 -> 
               0.029635167496447252`, $CellContext`w0 -> 
               0.003372868400799872, $CellContext`w1 -> 
               0.10182442128675906`, $CellContext`w2 -> 
               0.08092963604801129}}, {
             "decr[1,1.2]", -2, -0.5, -0.5, {$CellContext`s1 -> 
               0.005522185858983902, $CellContext`s2 -> 
               0.49601112667542085`, $CellContext`w0 -> 
               8.643899711139126*^-6, $CellContext`w1 -> 
               0.5876511123777581, $CellContext`w2 -> 0.1604219287609707}}, {
             "decr[1,1.2]", -2, -0.5, 
              0, {$CellContext`s1 -> 0.004629987229669357, $CellContext`s2 -> 
               0.5205605079857324, $CellContext`w0 -> 
               8.410196995865573*^-6, $CellContext`w1 -> 
               0.5708493770471674, $CellContext`w2 -> 
               0.17727925959954555`}}, {
             "decr[1,1.2]", -2, -0.5, 
              0.5, {$CellContext`s1 -> 0.002905896545980987, $CellContext`s2 -> 
               0.5387062436605834, $CellContext`w0 -> 
               8.717666609534741*^-6, $CellContext`w1 -> 
               0.5563676240215406, $CellContext`w2 -> 
               0.19179998695673198`}}, {
             "decr[1,1.2]", -2, -0.5, 
              1, {$CellContext`s1 -> -0.009990143395347283, $CellContext`s2 -> 
               0.5531639600843405, $CellContext`w0 -> 
               0.25718210787330403`, $CellContext`w1 -> 
               0.28839594432897847`, $CellContext`w2 -> 
               0.20259961096783044`}}, {
             "decr[1,1.2]", -2, -0.5, 
              2, {$CellContext`s1 -> -0.03028989290070245, $CellContext`s2 -> 
               0.5605666629438939, $CellContext`w0 -> 
               0.2807412279819939, $CellContext`w1 -> 
               0.25686559845321827`, $CellContext`w2 -> 
               0.21010685719081337`}}, {
             "decr[1,1.2]", -2, -0.5, 
              3, {$CellContext`s1 -> -0.04325950178165642, $CellContext`s2 -> 
               0.5619518305324847, $CellContext`w0 -> 
               0.2843023931367562, $CellContext`w1 -> 
               0.2486872550843243, $CellContext`w2 -> 
               0.21406124822157738`}}, {
             "decr[1,1.2]", -2, 0, 
              0, {$CellContext`s1 -> 0.005802928234425636, $CellContext`s2 -> 
               0.5297774385432746, $CellContext`w0 -> 
               7.800429613719314*^-6, $CellContext`w1 -> 
               0.5637230806197717, $CellContext`w2 -> 
               0.18430608973344878`}}, {
             "decr[1,1.2]", -2, 0, 
              0.5, {$CellContext`s1 -> 0.005465346573664235, $CellContext`s2 -> 
               0.5408150439241742, $CellContext`w0 -> 
               7.869675725404913*^-6, $CellContext`w1 -> 
               0.554004840143641, $CellContext`w2 -> 0.1939864043752796}}, {
             "decr[1,1.2]", -2, 0, 
              1, {$CellContext`s1 -> 0.004069089510312595, $CellContext`s2 -> 
               0.5515704717575007, $CellContext`w0 -> 
               8.099837188680358*^-6, $CellContext`w1 -> 
               0.5446652465367752, $CellContext`w2 -> 0.2033172031456309}}, {
             "decr[1,1.2]", -2, 0, 
              2, {$CellContext`s1 -> -0.018171077587077096`, $CellContext`s2 -> 
               0.5619118121789453, $CellContext`w0 -> 
               0.2638826777996801, $CellContext`w1 -> 
               0.27014716128463767`, $CellContext`w2 -> 0.21375}}, {
             "decr[1,1.2]", -2, 0, 
              3, {$CellContext`s1 -> -0.03567108453843066, $CellContext`s2 -> 
               0.56004257657709, $CellContext`w0 -> 
               0.2592538499472452, $CellContext`w1 -> 
               0.2717231161637718, $CellContext`w2 -> 
               0.21624592400805054`}}, {
             "decr[1,1.2]", -2, 0.5, 
              0.5, {$CellContext`s1 -> 
               0.0047300820662492145`, $CellContext`s2 -> 
               0.547127291214584, $CellContext`w0 -> 
               7.909492786772817*^-6, $CellContext`w1 -> 
               0.5472910818340434, $CellContext`w2 -> 
               0.20064963517148435`}}, {
             "decr[1,1.2]", -2, 0.5, 
              1, {$CellContext`s1 -> 0.002548599827700038, $CellContext`s2 -> 
               0.5550458302308022, $CellContext`w0 -> 
               8.62667888833408*^-6, $CellContext`w1 -> 
               0.5393209730302605, $CellContext`w2 -> 
               0.20866924915103968`}}, {
             "decr[1,1.2]", -2, 0.5, 
              2, {$CellContext`s1 -> -0.022413278203403688`, $CellContext`s2 -> 
               0.5439907861338468, $CellContext`w0 -> 
               0.0005504052630694249, $CellContext`w1 -> 
               0.5471641943996606, $CellContext`w2 -> 0.199256327186569}}, {
             "decr[1,1.2]", -2, 0.5, 
              3, {$CellContext`s1 -> -0.018206126871389977`, $CellContext`s2 -> 
               0.5653624038193403, $CellContext`w0 -> 
               0.25739484052927647`, $CellContext`w1 -> 
               0.26492451032051, $CellContext`w2 -> 0.22581874464110596`}}, {
             "decr[1,1.2]", -2, 1, 
              1, {$CellContext`s1 -> 0.0008765809756763234, $CellContext`s2 -> 
               0.3808928512769216, $CellContext`w0 -> 
               0.010309291829935487`, $CellContext`w1 -> 
               0.045074709147633826`, $CellContext`w2 -> 
               0.1626552731293412}}, {
             "decr[1,1.2]", -2, 1, 
              2, {$CellContext`s1 -> -22.722495497601027`, $CellContext`s2 -> 
               0.0038229140545905163`, $CellContext`w0 -> 
               0.6385978693252623, $CellContext`w1 -> 
               0.00016561845471363792`, $CellContext`w2 -> 
               0.06081103746104987}}, {
             "decr[1,1.2]", -2, 1, 
              3, {$CellContext`s1 -> -0.5074108180886021, $CellContext`s2 -> 
               0.5067257417923213, $CellContext`w0 -> 
               5.513301832777205*^-8, $CellContext`w1 -> 
               0.047859201777543325`, $CellContext`w2 -> 
               0.23770029168270065`}}, {
             "decr[1,1.2]", -2, 2, 
              2, {$CellContext`s1 -> -0.004520248287668321, $CellContext`s2 -> 
               0.6038956698624768, $CellContext`w0 -> 
               0.2979381069752567, $CellContext`w1 -> 
               0.05634283548931231, $CellContext`w2 -> 
               0.23076650811784782`}}, {
             "decr[1,1.2]", -2, 2, 
              3, {$CellContext`s1 -> 0.005771911835017305, $CellContext`s2 -> 
               0.6718425659809312, $CellContext`w0 -> 
               0.000058126467554210604`, $CellContext`w1 -> 
               0.0897480721058916, $CellContext`w2 -> 0.2992278653132833}}, {
             "decr[1,1.2]", -2, 3, 
              3, {$CellContext`s1 -> 0.011506770590853093`, $CellContext`s2 -> 
               0.7205988534598804, $CellContext`w0 -> 
               7.873446603691214*^-6, $CellContext`w1 -> 
               0.10429647166999394`, $CellContext`w2 -> 
               0.3297030065829963}}, {
             "decr[1,1.2]", -1, -1, -1, {$CellContext`s1 -> 
               0.11675113225310503`, $CellContext`s2 -> 
               0.6860237941202847, $CellContext`w0 -> 
               0.17111514489577237`, $CellContext`w1 -> 
               0.8473690838242728, $CellContext`w2 -> 
               1.7944803541988895`*^-6}}, {
             "decr[1,1.2]", -1, -1, -0.5, {$CellContext`s1 -> 
               0.004034726159375266, $CellContext`s2 -> 
               0.48727499947923836`, $CellContext`w0 -> 
               0.000013650101637425711`, $CellContext`w1 -> 
               0.593109250234855, $CellContext`w2 -> 0.15463916684628715`}}, {
             "decr[1,1.2]", -1, -1, 
              0, {$CellContext`s1 -> 0.001217386676386309, $CellContext`s2 -> 
               0.5245135629192702, $CellContext`w0 -> 
               9.168679996231384*^-6, $CellContext`w1 -> 
               0.5684591014575169, $CellContext`w2 -> 
               0.17988748649624667`}}, {
             "decr[1,1.2]", -1, -1, 
              0.5, {$CellContext`s1 -> -0.01450076904536736, $CellContext`s2 -> 
               0.5414639955802345, $CellContext`w0 -> 
               0.26373814460505923`, $CellContext`w1 -> 
               0.291690061731109, $CellContext`w2 -> 0.19291273707710807`}}, {
             "decr[1,1.2]", -1, -1, 
              1, {$CellContext`s1 -> -0.013258651932796434`, $CellContext`s2 -> 
               0.5583945493097744, $CellContext`w0 -> 
               0.3262205818655628, $CellContext`w1 -> 
               0.2147222822073988, $CellContext`w2 -> 0.207524910086106}}, {
             "decr[1,1.2]", -1, -1, 
              2, {$CellContext`s1 -> -0.06158281355851321, $CellContext`s2 -> 
               0.5593502086906474, $CellContext`w0 -> 
               0.35163833703809, $CellContext`w1 -> 
               0.18740973638119413`, $CellContext`w2 -> 
               0.2086752030422633}}, {
             "decr[1,1.2]", -1, -1, 
              3, {$CellContext`s1 -> -0.042109391820182564`, $CellContext`s2 -> 
               0.5693545019067116, $CellContext`w0 -> 
               0.3451892100441153, $CellContext`w1 -> 
               0.18225000000000002`, $CellContext`w2 -> 
               0.22014588744624528`}}, {
             "decr[1,1.2]", -1, -0.5, -0.5, {$CellContext`s1 -> 
               0.005388486189151183, $CellContext`s2 -> 
               0.5003183777467324, $CellContext`w0 -> 
               8.625952491126571*^-6, $CellContext`w1 -> 
               0.5849902835734623, $CellContext`w2 -> 0.1631052777624801}}, {
             "decr[1,1.2]", -1, -0.5, 
              0, {$CellContext`s1 -> 0.004499559057537403, $CellContext`s2 -> 
               0.5217777470032694, $CellContext`w0 -> 
               8.406270623178457*^-6, $CellContext`w1 -> 
               0.5700187760661314, $CellContext`w2 -> 
               0.17811765459588746`}}, {
             "decr[1,1.2]", -1, -0.5, 
              0.5, {$CellContext`s1 -> 0.00287989349346759, $CellContext`s2 -> 
               0.5390637557194975, $CellContext`w0 -> 
               8.709012554853444*^-6, $CellContext`w1 -> 
               0.5561154428747185, $CellContext`w2 -> 0.1920570920069056}}, {
             "decr[1,1.2]", -1, -0.5, 
              1, {$CellContext`s1 -> -0.008768363436671922, $CellContext`s2 -> 
               0.5538283787203833, $CellContext`w0 -> 
               0.2571045374693197, $CellContext`w1 -> 
               0.28781781239465554`, $CellContext`w2 -> 
               0.20327373832571857`}}, {
             "decr[1,1.2]", -1, -0.5, 
              2, {$CellContext`s1 -> -0.03064005326028433, $CellContext`s2 -> 
               0.5604426619271026, $CellContext`w0 -> 
               0.27983922970695074`, $CellContext`w1 -> 
               0.25779691440978386`, $CellContext`w2 -> 
               0.2100699130041242}}, {
             "decr[1,1.2]", -1, -0.5, 
              3, {$CellContext`s1 -> -0.0436527966201055, $CellContext`s2 -> 
               0.561808015897916, $CellContext`w0 -> 
               0.28368187962992764`, $CellContext`w1 -> 
               0.2493132462734582, $CellContext`w2 -> 
               0.21405252412899795`}}, {
             "decr[1,1.2]", -1, 0, 
              0, {$CellContext`s1 -> 0.005409235661907977, $CellContext`s2 -> 
               0.5299857231405137, $CellContext`w0 -> 
               7.821459745717316*^-6, $CellContext`w1 -> 
               0.563646069659629, $CellContext`w2 -> 0.18439095300307037`}}, {
             "decr[1,1.2]", -1, 0, 
              0.5, {$CellContext`s1 -> 0.004553352016336992, $CellContext`s2 -> 
               0.5403242981054135, $CellContext`w0 -> 
               7.876383243348212*^-6, $CellContext`w1 -> 
               0.554784319869482, $CellContext`w2 -> 0.19323304088760285`}}, {
             "decr[1,1.2]", -1, 0, 
              1, {$CellContext`s1 -> -0.004506979280560176, $CellContext`s2 -> 
               0.5129216297443125, $CellContext`w0 -> 
               0.0003706991696689297, $CellContext`w1 -> 
               0.5656151234649542, $CellContext`w2 -> 
               0.17977472232143982`}}, {
             "decr[1,1.2]", -1, 0, 
              2, {$CellContext`s1 -> -0.0184086391051941, $CellContext`s2 -> 
               0.5618920844026988, $CellContext`w0 -> 
               0.26471514164729537`, $CellContext`w1 -> 
               0.26931191945946276`, $CellContext`w2 -> 0.21375}}, {
             "decr[1,1.2]", -1, 0, 
              3, {$CellContext`s1 -> -0.03564498769451779, $CellContext`s2 -> 
               0.560150340585125, $CellContext`w0 -> 
               0.26130091574867215`, $CellContext`w1 -> 
               0.26956377448325297`, $CellContext`w2 -> 
               0.21635721722666457`}}, {
             "decr[1,1.2]", -1, 0.5, 
              0.5, {$CellContext`s1 -> -0.008233711377249504, $CellContext`s2 -> 
               0.5200401607502841, $CellContext`w0 -> 
               0.00040295018252406206`, $CellContext`w1 -> 
               0.5688578324656757, $CellContext`w2 -> 
               0.17804235648106112`}}, {
             "decr[1,1.2]", -1, 0.5, 
              1, {$CellContext`s1 -> -0.007505422006079826, $CellContext`s2 -> 
               0.5101374650854261, $CellContext`w0 -> 
               0.037891773778508275`, $CellContext`w1 -> 
               0.5207452876040428, $CellContext`w2 -> 
               0.18603406054758181`}}, {
             "decr[1,1.2]", -1, 0.5, 
              2, {$CellContext`s1 -> 0.001453072145542218, $CellContext`s2 -> 
               0.42028117046253005`, $CellContext`w0 -> 
               0.04205838967910676, $CellContext`w1 -> 
               0.043934510407181965`, $CellContext`w2 -> 
               0.18338978053087351`}}, {
             "decr[1,1.2]", -1, 0.5, 
              3, {$CellContext`s1 -> -0.021086201960075518`, $CellContext`s2 -> 
               0.5645304853537109, $CellContext`w0 -> 
               0.2573533474342196, $CellContext`w1 -> 
               0.26551081086695105`, $CellContext`w2 -> 
               0.22523061793478155`}}, {
             "decr[1,1.2]", -1, 1, 
              1, {$CellContext`s1 -> -0.030897128137413, $CellContext`s2 -> 
               0.5415672496944237, $CellContext`w0 -> 
               0.20760605296328002`, $CellContext`w1 -> 
               0.33950224210112717`, $CellContext`w2 -> 
               0.19969647760809786`}}, {
             "decr[1,1.2]", -1, 1, 
              2, {$CellContext`s1 -> -39.74637676389558, $CellContext`s2 -> 
               0.02829454237192306, $CellContext`w0 -> 
               0.6524691868167046, $CellContext`w1 -> 
               0.0000653817973299023, $CellContext`w2 -> 
               0.062038311535416946`}}, {
             "decr[1,1.2]", -1, 1, 
              3, {$CellContext`s1 -> 0.006262857084945029, $CellContext`s2 -> 
               0.5873628003472259, $CellContext`w0 -> 
               0.0010424384692494424`, $CellContext`w1 -> 
               0.06660226056406414, $CellContext`w2 -> 
               0.25847964873817103`}}, {
             "decr[1,1.2]", -1, 2, 
              2, {$CellContext`s1 -> 0.013536572238703139`, $CellContext`s2 -> 
               0.6143216574498415, $CellContext`w0 -> 
               0.0005575977697260604, $CellContext`w1 -> 
               0.07827960892022687, $CellContext`w2 -> 0.2634917511123154}}, {
             "decr[1,1.2]", -1, 2, 
              3, {$CellContext`s1 -> 0.019824320527148876`, $CellContext`s2 -> 
               0.6725172778861136, $CellContext`w0 -> 
               0.00043324660627743833`, $CellContext`w1 -> 
               0.0899305198949399, $CellContext`w2 -> 0.2990875559527087}}, {
             "decr[1,1.2]", -1, 3, 
              3, {$CellContext`s1 -> 0.03421897116099539, $CellContext`s2 -> 
               0.7209152362887229, $CellContext`w0 -> 
               0.00028462841940756834`, $CellContext`w1 -> 
               0.1044080896294751, $CellContext`w2 -> 0.3295665781894031}}, {
             "decr[1,1.2]", -0.5, -0.5, -0.5, {$CellContext`s1 -> 
               0.011360833644925362`, $CellContext`s2 -> 
               0.5041216397709535, $CellContext`w0 -> 
               0.011605403837101822`, $CellContext`w1 -> 
               0.5632591211929151, $CellContext`w2 -> 0.1723901980201494}}, {
             "decr[1,1.2]", -0.5, -0.5, 
              0, {$CellContext`s1 -> 0.011898808547340486`, $CellContext`s2 -> 
               0.5206786943857773, $CellContext`w0 -> 
               0.0041960859886814705`, $CellContext`w1 -> 
               0.5571119827657539, $CellContext`w2 -> 
               0.18573524559029309`}}, {
             "decr[1,1.2]", -0.5, -0.5, 
              0.5, {$CellContext`s1 -> -0.0047204642571402776`, \
$CellContext`s2 -> 0.5086334259010531, $CellContext`w0 -> 
               0.00006582053841607899, $CellContext`w1 -> 
               0.577140879354224, $CellContext`w2 -> 0.17010836653574885`}}, {
             "decr[1,1.2]", -0.5, -0.5, 
              1, {$CellContext`s1 -> -0.010773747439963155`, $CellContext`s2 -> 
               0.532937402664262, $CellContext`w0 -> 
               0.0002932733670548172, $CellContext`w1 -> 
               0.566098801284336, $CellContext`w2 -> 0.1815939735981457}}, {
             "decr[1,1.2]", -0.5, -0.5, 
              2, {$CellContext`s1 -> -0.015578006731441272`, $CellContext`s2 -> 
               0.5514169552158652, $CellContext`w0 -> 
               0.0009594830685493107, $CellContext`w1 -> 
               0.5531552191091139, $CellContext`w2 -> 
               0.19358333555577967`}}, {
             "decr[1,1.2]", -0.5, -0.5, 
              3, {$CellContext`s1 -> -0.012560944144119332`, $CellContext`s2 -> 
               0.5685419328822343, $CellContext`w0 -> 
               0.25919564458043104`, $CellContext`w1 -> 
               0.2673495141433157, $CellContext`w2 -> 
               0.22106038227835617`}}, {
             "decr[1,1.2]", -0.5, 0, 
              0, {$CellContext`s1 -> 0.01228296983782235, $CellContext`s2 -> 
               0.5279386475051993, $CellContext`w0 -> 
               0.0012844431489914031`, $CellContext`w1 -> 
               0.5534178583718172, $CellContext`w2 -> 
               0.19217061117553158`}}, {
             "decr[1,1.2]", -0.5, 0, 
              0.5, {$CellContext`s1 -> -0.008033719881569173, $CellContext`s2 -> 
               0.5237640970207229, $CellContext`w0 -> 
               0.00014508865056235898`, $CellContext`w1 -> 
               0.5752121095850702, $CellContext`w2 -> 
               0.17307907895640406`}}, {
             "decr[1,1.2]", -0.5, 0, 
              1, {$CellContext`s1 -> -0.007644964419855811, $CellContext`s2 -> 
               0.5274562161728151, $CellContext`w0 -> 
               0.0035258066980718788`, $CellContext`w1 -> 
               0.5627067098638378, $CellContext`w2 -> 
               0.18109397847648845`}}, {
             "decr[1,1.2]", -0.5, 0, 
              2, {$CellContext`s1 -> -0.019436446420416725`, $CellContext`s2 -> 
               0.5616547622418868, $CellContext`w0 -> 
               0.26504981717291065`, $CellContext`w1 -> 
               0.26896355443539305`, $CellContext`w2 -> 0.21375}}, {
             "decr[1,1.2]", -0.5, 0, 
              3, {$CellContext`s1 -> -0.03648282713685948, $CellContext`s2 -> 
               0.5600259135299009, $CellContext`w0 -> 
               0.2638920728191443, $CellContext`w1 -> 
               0.2667683003417841, $CellContext`w2 -> 
               0.21656049982098075`}}, {
             "decr[1,1.2]", -0.5, 0.5, 
              0.5, {$CellContext`s1 -> -0.009110949537390462, $CellContext`s2 -> 
               0.5250956863588293, $CellContext`w0 -> 
               0.003920937450405842, $CellContext`w1 -> 
               0.565197013494244, $CellContext`w2 -> 0.17868369389064004`}}, {
             "decr[1,1.2]", -0.5, 0.5, 
              1, {$CellContext`s1 -> 0.0023964695738703428`, $CellContext`s2 -> 
               0.5554153835208416, $CellContext`w0 -> 
               0.018890396124018573`, $CellContext`w1 -> 
               0.5203871356805606, $CellContext`w2 -> 
               0.20875912104195024`}}, {
             "decr[1,1.2]", -0.5, 0.5, 
              2, {$CellContext`s1 -> 0.003735176960167071, $CellContext`s2 -> 
               0.4370191085327466, $CellContext`w0 -> 
               0.017819556681602886`, $CellContext`w1 -> 
               0.04686149128929478, $CellContext`w2 -> 
               0.18611708545647276`}}, {
             "decr[1,1.2]", -0.5, 0.5, 
              3, {$CellContext`s1 -> -0.029061114681104387`, $CellContext`s2 -> 
               0.5622333200408226, $CellContext`w0 -> 
               0.2572802205647909, $CellContext`w1 -> 
               0.2671570604923339, $CellContext`w2 -> 0.2234862375460482}}, {
             "decr[1,1.2]", -0.5, 1, 
              1, {$CellContext`s1 -> 0.0052921004450557484`, $CellContext`s2 -> 
               0.4014329804041969, $CellContext`w0 -> 
               0.009898753940346165, $CellContext`w1 -> 
               0.0484167509913207, $CellContext`w2 -> 
               0.16394843571850948`}}, {
             "decr[1,1.2]", -0.5, 1, 
              2, {$CellContext`s1 -> 0.012306148846870212`, $CellContext`s2 -> 
               0.5233787533139395, $CellContext`w0 -> 
               0.004307641365696722, $CellContext`w1 -> 
               0.060826361513096214`, $CellContext`w2 -> 
               0.21671695089259616`}}, {
             "decr[1,1.2]", -0.5, 1, 
              3, {$CellContext`s1 -> 0.015975393075704825`, $CellContext`s2 -> 
               0.5953752384999812, $CellContext`w0 -> 
               0.004205856723378376, $CellContext`w1 -> 
               0.06855906355478862, $CellContext`w2 -> 
               0.25789801310035254`}}, {
             "decr[1,1.2]", -0.5, 2, 
              2, {$CellContext`s1 -> 0.030478702878735685`, $CellContext`s2 -> 
               0.6194647341620245, $CellContext`w0 -> 
               0.003268352303676532, $CellContext`w1 -> 
               0.07955249169448964, $CellContext`w2 -> 0.2627024670738824}}, {
             "decr[1,1.2]", -0.5, 2, 
              3, {$CellContext`s1 -> 0.04437182319550271, $CellContext`s2 -> 
               0.67612919109705, $CellContext`w0 -> 
               0.0029584721784537203`, $CellContext`w1 -> 
               0.09109608216252393, $CellContext`w2 -> 0.2980466508273087}}, {
             "decr[1,1.2]", -0.5, 3, 
              3, {$CellContext`s1 -> 0.07019768667930537, $CellContext`s2 -> 
               0.7232267758571982, $CellContext`w0 -> 
               0.002507051164708878, $CellContext`w1 -> 
               0.1053402666987406, $CellContext`w2 -> 0.3283995969638904}}, {
             "decr[1,1.2]", 0, 0, 
              0, {$CellContext`s1 -> 0.019813240829716434`, $CellContext`s2 -> 
               0.5297890387475211, $CellContext`w0 -> 
               0.015784485442599895`, $CellContext`w1 -> 
               0.5303599085871998, $CellContext`w2 -> 0.1999384988540195}}, {
             "decr[1,1.2]", 0, 0, 
              0.5, {$CellContext`s1 -> 0.001534166084096198, $CellContext`s2 -> 
               0.5244267420775156, $CellContext`w0 -> 
               0.0010489773285644165`, $CellContext`w1 -> 
               0.5561016430976944, $CellContext`w2 -> 
               0.18939509416487096`}}, {
             "decr[1,1.2]", 0, 0, 
              1, {$CellContext`s1 -> -0.010668298492954453`, $CellContext`s2 -> 
               0.53870262151355, $CellContext`w0 -> 
               0.0076274838714554165`, $CellContext`w1 -> 
               0.5579798545879576, $CellContext`w2 -> 
               0.18292531807882803`}}, {
             "decr[1,1.2]", 0, 0, 
              2, {$CellContext`s1 -> -0.02204083494504861, $CellContext`s2 -> 
               0.5603488933087091, $CellContext`w0 -> 
               0.25875225716196215`, $CellContext`w1 -> 
               0.2752043663958851, $CellContext`w2 -> 0.21375}}, {
             "decr[1,1.2]", 0, 0, 
              3, {$CellContext`s1 -> -0.04206116105179937, $CellContext`s2 -> 
               0.5573737509656528, $CellContext`w0 -> 
               0.25398058269751445`, $CellContext`w1 -> 
               0.2771074018791328, $CellContext`w2 -> 
               0.21614790781161022`}}, {
             "decr[1,1.2]", 0, 0.5, 
              0.5, {$CellContext`s1 -> -0.006690104759686152, $CellContext`s2 -> 
               0.522140002936617, $CellContext`w0 -> 
               0.04770173872103596, $CellContext`w1 -> 
               0.5211328618679343, $CellContext`w2 -> 
               0.17849442539166094`}}, {
             "decr[1,1.2]", 0, 0.5, 
              1, {$CellContext`s1 -> 0.0066069148828895715`, $CellContext`s2 -> 
               0.3573592337918124, $CellContext`w0 -> 
               0.03616966084201875, $CellContext`w1 -> 
               0.047189464009091055`, $CellContext`w2 -> 
               0.13743903953757272`}}, {
             "decr[1,1.2]", 0, 0.5, 
              2, {$CellContext`s1 -> 0.016801423867784028`, $CellContext`s2 -> 
               0.49061668418606824`, $CellContext`w0 -> 
               0.014682886641136286`, $CellContext`w1 -> 
               0.05510006995679121, $CellContext`w2 -> 
               0.19224935493410256`}}, {
             "decr[1,1.2]", 0, 0.5, 
              3, {$CellContext`s1 -> -0.06358936957183298, $CellContext`s2 -> 
               0.5521796585751844, $CellContext`w0 -> 
               0.2685536825098566, $CellContext`w1 -> 
               0.2647811959609056, $CellContext`w2 -> 
               0.21272635996210312`}}, {
             "decr[1,1.2]", 0, 1, 
              1, {$CellContext`s1 -> -0.02855091333864293, $CellContext`s2 -> 
               0.545381070219323, $CellContext`w0 -> 
               0.27481045587112257`, $CellContext`w1 -> 
               0.27271854725944356`, $CellContext`w2 -> 
               0.19878041779797134`}}, {
             "decr[1,1.2]", 0, 1, 
              2, {$CellContext`s1 -> 0.03663370201303364, $CellContext`s2 -> 
               0.5581589255944447, $CellContext`w0 -> 
               0.015470176393701796`, $CellContext`w1 -> 
               0.06839372172073545, $CellContext`w2 -> 
               0.21736166109785388`}}, {
             "decr[1,1.2]", 0, 1, 
              3, {$CellContext`s1 -> 0.0498557442576441, $CellContext`s2 -> 
               0.6241619242575761, $CellContext`w0 -> 
               0.01590710151475683, $CellContext`w1 -> 
               0.07680261506571834, $CellContext`w2 -> 0.2566316776051947}}, {
             "decr[1,1.2]", 0, 2, 
              2, {$CellContext`s1 -> 0.07604152644605754, $CellContext`s2 -> 
               0.6426054914764419, $CellContext`w0 -> 
               0.015649924100378285`, $CellContext`w1 -> 
               0.08633583459054942, $CellContext`w2 -> 0.2598864793512791}}, {
             "decr[1,1.2]", 0, 2, 
              3, {$CellContext`s1 -> 0.1054244629961465, $CellContext`s2 -> 
               0.6941473022328337, $CellContext`w0 -> 
               0.01568926236804541, $CellContext`w1 -> 
               0.09782329422996772, $CellContext`w2 -> 0.2934274423112362}}, {
             "decr[1,1.2]", 0, 3, 
              3, {$CellContext`s1 -> 0.1474555600245437, $CellContext`s2 -> 
               0.7366809693100862, $CellContext`w0 -> 
               0.01543991255652449, $CellContext`w1 -> 
               0.1115248906957125, $CellContext`w2 -> 0.3221233090460213}}, {
             "decr[1,1.2]", 0.5, 0.5, 
              0.5, {$CellContext`s1 -> 0.009277049638759692, $CellContext`s2 -> 
               0.35624641071312996`, $CellContext`w0 -> 
               0.04908110461334684, $CellContext`w1 -> 
               0.05083847851669396, $CellContext`w2 -> 0.1279409023628261}}, {
             "decr[1,1.2]", 0.5, 0.5, 
              1, {$CellContext`s1 -> 0.02220065916679101, $CellContext`s2 -> 
               0.44613635127729534`, $CellContext`w0 -> 
               0.030127614824402623`, $CellContext`w1 -> 
               0.05808786494110742, $CellContext`w2 -> 
               0.15672739196030158`}}, {
             "decr[1,1.2]", 0.5, 0.5, 
              2, {$CellContext`s1 -> 0.04786938951842793, $CellContext`s2 -> 
               0.5587182834536323, $CellContext`w0 -> 
               0.024751698380218293`, $CellContext`w1 -> 
               0.06958353771243307, $CellContext`w2 -> 
               0.20643969254506023`}}, {
             "decr[1,1.2]", 0.5, 0.5, 
              3, {$CellContext`s1 -> 0.06507941874105284, $CellContext`s2 -> 
               0.6248171686255192, $CellContext`w0 -> 
               0.02588419269684816, $CellContext`w1 -> 
               0.0777049587713297, $CellContext`w2 -> 
               0.24558597480794725`}}, {
             "decr[1,1.2]", 0.5, 1, 
              1, {$CellContext`s1 -> 0.04624705033130494, $CellContext`s2 -> 
               0.5222211947237437, $CellContext`w0 -> 
               0.026679144620869722`, $CellContext`w1 -> 
               0.06744763934902062, $CellContext`w2 -> 0.1820545570456175}}, {
             "decr[1,1.2]", 0.5, 1, 
              2, {$CellContext`s1 -> 0.0857101038762427, $CellContext`s2 -> 
               0.6135296271004617, $CellContext`w0 -> 
               0.029964661808666592`, $CellContext`w1 -> 
               0.08230971106258748, $CellContext`w2 -> 
               0.22571662340876672`}}, {
             "decr[1,1.2]", 0.5, 1, 
              3, {$CellContext`s1 -> 0.11447220055760518`, $CellContext`s2 -> 
               0.6699737804186015, $CellContext`w0 -> 
               0.03120343860736446, $CellContext`w1 -> 
               0.09189226610840193, $CellContext`w2 -> 
               0.26140147967344085`}}, {
             "decr[1,1.2]", 0.5, 2, 
              2, {$CellContext`s1 -> 0.1464779704631482, $CellContext`s2 -> 
               0.6832768438855349, $CellContext`w0 -> 
               0.03396124113566232, $CellContext`w1 -> 
               0.09988224867254147, $CellContext`w2 -> 0.2613424894175575}}, {
             "decr[1,1.2]", 0.5, 2, 
              3, {$CellContext`s1 -> 0.188991859119555, $CellContext`s2 -> 
               0.7267636237773615, $CellContext`w0 -> 
               0.03536057120824127, $CellContext`w1 -> 
               0.11149109134005841`, $CellContext`w2 -> 
               0.2907580356604031}}, {
             "decr[1,1.2]", 0.5, 3, 
              3, {$CellContext`s1 -> 0.2394534955762588, $CellContext`s2 -> 
               0.7623889237598475, $CellContext`w0 -> 
               0.03682768840357072, $CellContext`w1 -> 
               0.1246043518534878, $CellContext`w2 -> 
               0.31517392419968143`}}, {
             "decr[1,1.2]", 1, 1, 
              1, {$CellContext`s1 -> 0.07994884967069338, $CellContext`s2 -> 
               0.5819402539214638, $CellContext`w0 -> 
               0.03322239070114904, $CellContext`w1 -> 
               0.07887049885252283, $CellContext`w2 -> 
               0.20205532995118042`}}, {
             "decr[1,1.2]", 1, 1, 
              2, {$CellContext`s1 -> 0.13453765525969713`, $CellContext`s2 -> 
               0.6587669255546628, $CellContext`w0 -> 
               0.03828322001813758, $CellContext`w1 -> 
               0.09470588908511829, $CellContext`w2 -> 
               0.24017893770451595`}}, {
             "decr[1,1.2]", 1, 1, 
              3, {$CellContext`s1 -> 0.1730465139475731, $CellContext`s2 -> 
               0.7066354558033651, $CellContext`w0 -> 
               0.04008335939485404, $CellContext`w1 -> 
               0.10514854599806808`, $CellContext`w2 -> 
               0.27196733442459947`}}, {
             "decr[1,1.2]", 1, 2, 
              2, {$CellContext`s1 -> 0.20449688205830785`, $CellContext`s2 -> 
               0.7167502631726812, $CellContext`w0 -> 
               0.04527663218782744, $CellContext`w1 -> 
               0.11198976621693685`, $CellContext`w2 -> 
               0.26925974254930296`}}, {
             "decr[1,1.2]", 1, 2, 
              3, {$CellContext`s1 -> 0.2516771714775326, $CellContext`s2 -> 
               0.7536021407281784, $CellContext`w0 -> 
               0.04792097541105584, $CellContext`w1 -> 
               0.12365965092683497`, $CellContext`w2 -> 0.294464617199431}}, {
             "decr[1,1.2]", 1, 3, 
              3, {$CellContext`s1 -> 0.3030557499703406, $CellContext`s2 -> 
               0.7838240099595098, $CellContext`w0 -> 
               0.05107808088473297, $CellContext`w1 -> 
               0.1363113102713374, $CellContext`w2 -> 0.3146345378514023}}, {
             "decr[1,1.2]", 2, 2, 
              2, {$CellContext`s1 -> 0.2802306987379479, $CellContext`s2 -> 
               0.7604517708603892, $CellContext`w0 -> 
               0.055741064984729416`, $CellContext`w1 -> 
               0.1291298451548669, $CellContext`w2 -> 
               0.28873915234201636`}}, {
             "decr[1,1.2]", 2, 2, 
              3, {$CellContext`s1 -> 0.3296971668434486, $CellContext`s2 -> 
               0.7890544669063991, $CellContext`w0 -> 
               0.06016990465016103, $CellContext`w1 -> 
               0.14100832367439362`, $CellContext`w2 -> 
               0.30734554687406096`}}, {
             "decr[1,1.2]", 2, 3, 
              3, {$CellContext`s1 -> 0.37958206588016014`, $CellContext`s2 -> 
               0.812667010078352, $CellContext`w0 -> 
               0.06572942314507979, $CellContext`w1 -> 
               0.15319642214425408`, $CellContext`w2 -> 0.321094288931916}}, {
             "decr[1,1.2]", 3, 3, 
              3, {$CellContext`s1 -> 0.4278737738244587, $CellContext`s2 -> 
               0.8322687802083737, $CellContext`w0 -> 
               0.07283409703600781, $CellContext`w1 -> 
               0.16524089983552165`, $CellContext`w2 -> 
               0.33021509628725126`}}}; $CellContext`powers = 
           Sort[{$CellContext`p, $CellContext`q, $CellContext`r}]; \
$CellContext`pp = Part[$CellContext`powers, 1]; $CellContext`qq = 
           Part[$CellContext`powers, 2]; $CellContext`rr = 
           Part[$CellContext`powers, 3]; Do[
            If[
             And[
             Part[$CellContext`SolsMatrix3, $CellContext`i, 
                1] == $CellContext`\[Mu], 
              Part[$CellContext`SolsMatrix3, $CellContext`i, 
                2] == $CellContext`pp, 
              Part[$CellContext`SolsMatrix3, $CellContext`i, 
                3] == $CellContext`qq, 
              Part[$CellContext`SolsMatrix3, $CellContext`i, 
                4] == $CellContext`rr], $CellContext`Sols = 
             Part[$CellContext`SolsMatrix3, $CellContext`i, 
               5]], {$CellContext`i, 1, 
             Length[$CellContext`SolsMatrix3]}]; $CellContext`SolsR = Round[
             
             ReplaceAll[{$CellContext`s1, $CellContext`s2, $CellContext`w0, \
$CellContext`w1, $CellContext`w2}, $CellContext`Sols], 
             0.0001]; $CellContext`c12opt = 
           ReplaceAll[$CellContext`c12, $CellContext`Sols]; 
          Plot[$CellContext`c12opt, {$CellContext`x, $CellContext`\[Epsilon], 
             1}, PlotRange -> {Automatic, 0}, 
            Frame -> {{None, None}, {None, True}}, FrameTicks -> All, 
            FrameLabel -> {{None, None}, {None, 
               Style["\!\(\*SubscriptBox[\(\[Xi]\), \(I\)]\):" MatrixForm[{{
                    N[
                    Round[$CellContext`\[Epsilon], 10^(-4)]], 
                    Part[$CellContext`SolsR, 1], 
                    Part[$CellContext`SolsR, 2], 1}, {
                    Part[$CellContext`SolsR, 3], 
                    Part[$CellContext`SolsR, 4], 
                    Part[$CellContext`SolsR, 5], 1 - 
                    Part[$CellContext`SolsR, 3] - Part[$CellContext`SolsR, 4] - 
                    Part[$CellContext`SolsR, 5]}}], FontSize -> 
                20]}}], {{$CellContext`p, 1}, {
           3, 2, 1, 0.5, 0, -0.5, -1, -2}}, {{$CellContext`q, 2}, {
           3, 2, 1, 0.5, 0, -0.5, -1, -2}}, {{$CellContext`r, 3}, {
           3, 2, 1, 0.5, 0, -0.5, -1, -2}}, {$CellContext`\[Mu], {
           "U[\[Epsilon],1]", "U[1,1.2]", "incr[1,1.2]", "decr[1,1.2]"}}]]), 
      "Specifications" :> {{$CellContext`Criteria$$, {
         "D-opt", "I-opt"}}, {{$CellContext`FP$$, 1}, {1, 2, 3}}}, 
      "Options" :> {}, "DefaultOptions" :> {}],
     ImageSizeCache->{466., {274., 279.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    SynchronousInitialization->True,
    UndoTrackedVariables:>{Typeset`show$$, Typeset`bookmarkMode$$},
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output",ExpressionUUID->"f5672735-\
c4d8-4cae-8707-da2d62caf16b"],

Cell[TextData[{
 StyleBox["\nThe analytical description of D-optimal designs for FP1(p) and \
FP2(p,q) models and I-optimal designs for FP1(p) model when a uniform measure \
is considered is presented in Casero-Alonso, L\[OAcute]pez-Fidalgo and Wong \
(submitted).",
  FontSize->16],
 StyleBox["\n",
  FontSize->16,
  FontWeight->"Bold"],
 StyleBox["Explicit formulae of D-optimal designs can not be obtained for FP3 \
models. Here they are computed and verified using the equivalence theorem. \n\
For I-optimal designs for FP2 and FP3 models we show the cases considered in \
Casero-Alonso, L\[OAcute]pez-Fidalgo and Wong (submitted).\n",
  FontSize->16],
 "To avoid computational problems, for example if one or more of the powers \
are negative, we consider \[Epsilon] a very small positive constant, say, \
\[Epsilon] =",
 Cell[BoxData[
  FormBox[
   SuperscriptBox["10", 
    RowBox[{"-", "4"}]], TraditionalForm]],ExpressionUUID->
  "a7540f16-acd7-4ed4-948c-98a755d1a741"],
 ".",
 StyleBox["\nAs an introduction to the FP models: The mean of a response \
modeled by a FP3(p,q,r) is given by ",
  FontSize->16],
 Cell[BoxData[
  FormBox[
   StyleBox[
    RowBox[{"Ey", "=", 
     RowBox[{
      SubscriptBox["\[Alpha]", "0"], "+", 
      RowBox[{
       SubscriptBox["\[Alpha]", "1"], 
       SuperscriptBox["x", "p"]}], "+", 
      RowBox[{
       SubscriptBox["\[Alpha]", "2"], 
       SuperscriptBox["x", "q"]}], "+", 
      RowBox[{
       SubscriptBox["\[Alpha]", "3"], 
       SuperscriptBox["x", "r"]}]}]}], "DisplayFormula",
    FontSize->16], TraditionalForm]],ExpressionUUID->
  "7a673176-d6b4-44e7-8cac-8aca64f7e356"],
 " ",
 StyleBox["with ",
  FontSize->16],
 StyleBox["p, q, r \[Element] {\[Minus]2,\[Minus]1,\[Minus]0.5, 0, 0.5, 1, 2, \
3} if all the powers are different and not 0 (for more details: Royston and \
Altman, 1994)", "DisplayFormula",
  FontSize->16]
}], "Text",
 FontSize->16,ExpressionUUID->"d6535ccf-64ac-4ec2-95af-50a4bb56276a"],

Cell["\<\
Acknowledgements: To Diego Urruchi Moh\[IAcute]no for his helpful assistance \
with the development of this code. \
\>", "Text",
 FontSize->16,ExpressionUUID->"316a5775-f09b-4411-b379-988639ea9053"],

Cell[TextData[{
 StyleBox["References:",
  FontVariations->{"Underline"->True}],
 "\nRoyston, P., and D. G. Altman. 1994. Regression using fractional \
polynomials of continuous covariates: Parsimonious parametric modelling (with \
discussion). Applied Statistics 43: 429\[Dash]467.\nCasero-Alonso, V., J. L\
\[OAcute]pez-Fidalgo and W.K. Wong. Optimal designs for health risk \
assessments using fractional polynomial models. Submitted."
}], "Text",
 FontSize->16,ExpressionUUID->"58962912-97ca-4408-96c7-5df7201694b9"]
}, Open  ]]
},
WindowSize->{1920, 997},
WindowMargins->{{-8, Automatic}, {Automatic, -8}},
Visible->True,
ScrollingOptions->{"VerticalScrollRange"->Fit},
ShowCellBracket->Automatic,
CellContext->Notebook,
TrackCellChangeTimes->False,
FrontEndVersion->"12.3 para Microsoft Windows (64-bit) (June 19, 2021)",
StyleDefinitions->"Default.nb",
ExpressionUUID->"8d75c51a-cef1-46db-94cb-608aa22f8dc7"
]
(* End of Notebook Content *)

(* Internal cache information *)
(*CellTagsOutline
CellTagsIndex->{}
*)
(*CellTagsIndex
CellTagsIndex->{}
*)
(*NotebookFileOutline
Notebook[{
Cell[CellGroupData[{
Cell[1510, 35, 205, 4, 133, "Title",ExpressionUUID->"23ba7f77-71fb-419c-b149-2c0195681a2c"],
Cell[1718, 41, 839, 15, 156, "Text",ExpressionUUID->"b12bb09b-dbd7-4916-9eaf-362a4109e7a6"],
Cell[2560, 58, 244548, 4323, 572, "Output",ExpressionUUID->"f5672735-c4d8-4cae-8707-da2d62caf16b"],
Cell[247111, 4383, 1966, 51, 156, "Text",ExpressionUUID->"d6535ccf-64ac-4ec2-95af-50a4bb56276a"],
Cell[249080, 4436, 208, 4, 36, "Text",ExpressionUUID->"316a5775-f09b-4411-b379-988639ea9053"],
Cell[249291, 4442, 520, 9, 84, "Text",ExpressionUUID->"58962912-97ca-4408-96c7-5df7201694b9"]
}, Open  ]]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature pu0sOkJMhtMwzCK9GIxUYyqX *)
