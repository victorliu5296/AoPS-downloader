if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="2018_AMC_12A_Problems-3";
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
/* Edited by MRENTHUSIASM */
size(160);
pair A, B, C, D, F;
A = origin;
B = (4,0);
C = (0,3);
D = (2/7,2/7);
F = foot(D,B,C);
fill(A--(2/7,0)--D--(0,2/7)--cycle, lightgray);
draw(A--B--C--cycle);
draw((2/7,0)--D--(0,2/7));
label("$4$", midpoint(A--B), N);
label("$3$", midpoint(A--C), E);
label("$2$", midpoint(D--F), SE);
label("$S$", midpoint(A--D));
draw(D--F, dashed);
