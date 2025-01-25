if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="AMC8_Combined_Problems_2010-2024-21";
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
pair A,B,C,D,E,F,G,H,I,J;

A = (0.5,2);
B = (1.5,2);
C = (1.5,1);
D = (0.5,1);
E = (0,1);
F = (0,0);
G = (1,0);
H = (1,1);
I = (2,1);
J = (2,0);
draw(A--B);
draw(C--B);
draw(D--A);
draw(F--E);
draw(I--J);
draw(J--F);
draw(G--H);
draw(A--J);
filldraw(A--B--C--I--J--cycle,grey);
draw(E--I);
label("$A$", A, NW);
label("$B$", B, NE);
label("$C$", C, NE);
label("$D$", D, NW);
label("$E$", E, NW);
label("$F$", F, SW);
label("$G$", G, S);
label("$H$", H, N);
label("$I$", I, NE);
label("$J$", J, SE);
