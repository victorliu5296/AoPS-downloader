if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="AMC8_Combined_Problems_2010-2024-20";
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
import graph;
pair A,B,C;
A=(0,8);
B=(0,0);
C=(15,0);
draw((0,8)..(-4,4)..(0,0)--(0,8));
draw((0,0)..(7.5,-7.5)..(15,0)--(0,0));
real theta = aTan(8/15);
draw(arc((15/2,4),17/2,-theta,180-theta));
draw((0,8)--(15,0));
dot(A);
dot(B);
dot(C);
label("$A$", A, NW);
label("$B$", B, SW);
label("$C$", C, SE);
