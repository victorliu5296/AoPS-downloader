if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="2020_AMC_12B_Problems-3";
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
real x=2sqrt(2);
real y=2sqrt(16-8sqrt(2))-4+2sqrt(2);
real z=2sqrt(8-4sqrt(2));
pair A, B, C, D, E, F, G, H, I, J;
A = (0,0);
B = (4,0);
C = (4,4);
D = (0,4);
E = (x,0);
F = (4,y);
G = (y,4);
H = (0,x);
I = F + z * dir(225);
J = G + z * dir(225);

draw(A--B--C--D--A);
draw(H--E);
draw(J--G^^F--I);
draw(rightanglemark(G, J, I), linewidth(.5));
draw(rightanglemark(F, I, E), linewidth(.5));

dot("$A$", A, S);
dot("$B$", B, S);
dot("$C$", C, dir(90));
dot("$D$", D, dir(90));
dot("$E$", E, S);
dot("$F$", F, dir(0));
dot("$G$", G, N);
dot("$H$", H, W);
dot("$I$", I, SW);
dot("$J$", J, SW);
