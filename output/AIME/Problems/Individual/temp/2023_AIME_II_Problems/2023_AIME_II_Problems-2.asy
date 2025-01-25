if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="2023_AIME_II_Problems-2";
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
//Made by Djmathman (orz)
size(250);
defaultpen(linewidth(0.6));
pair A = origin, B = (6,3), X = rotate(40)*B, Y = rotate(70)*X, C = X+Y, Z = X+B, D = B+C, W = B+Y;
pair P1 = 0.8*C+0.2*Y, P2 = 2/3*C+1/3*X, P3 = 0.2*D+0.8*Z, P4 = 0.63*D+0.37*W;
pair E = (-20,6), F = (-6,-5), G = (18,-2), H = (9,8);
filldraw(E--F--G--H--cycle,rgb(0.98,0.98,0.2));
fill(A--Y--P1--P4--P3--Z--B--cycle,rgb(0.35,0.7,0.9));
draw(A--B--Z--X--A--Y--C--X^^C--D--Z);
draw(P1--P2--P3--P4--cycle^^D--P4);
dot("$A$",A,S);
dot("$B$",B,S);
dot("$C$",C,N);
dot("$D$",D,N);
label("$\mathcal P$",(-13,4.5));
