if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="2012_AIME_I_Problems-2";
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
import cse5;
unitsize(10mm);
pathpen=black;
dotfactor=3;

pair A = (0,0), B = (3.8,0), C = (5.876,1.564), D = (2.076,1.564), E = (0,3.8), F = (3.8,3.8), G = (5.876,5.364), H = (2.076,5.364), M = (1.9,0), N = (5.876,3.465);
pair[] dotted = {A,B,C,D,E,F,G,H,M,N};

D(A--B--C--G--H--E--A);
D(E--F--B);
D(F--G);
pathpen=dashed;
D(A--D--H);
D(D--C);

dot(dotted);
label("$A$",A,SW);
label("$B$",B,S);
label("$C$",C,SE);
label("$D$",D,NW);
label("$E$",E,W);
label("$F$",F,SE);
label("$G$",G,NE);
label("$H$",H,NW);
label("$M$",M,S);
label("$N$",N,NE);
