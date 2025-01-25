if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="AMC8_Combined_Problems_2010-2024-95";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

// Global Asymptote settings
settings.outformat = "pdf";
settings.render = 0;
settings.prc = false;
import olympiad;
import cse5;
size(8cm);

import olympiad;
import cse5;
// Diagram inaccurate to prevent measuring with ruler.
size(10cm);
draw((3,10)--(11,7)--(5,7)--(3,10));

dot((5,7));
label("$A(5,7)$",(5,7),S);
dot((11,7));
label("$B(11,7)$",(11,7),S);

dot((3,10));
label("$C(3,y)$",(3,10),NW);

// Problem 11: put on here by Andrei.martynau
