if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="2021_Fall_AMC_12A_Problems-1";
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
size(6cm);
pair A = (0,10);
label("$A$", A, N);
pair B = (0,0);
label("$B$", B, S);
pair C = (10,0);
label("$C$", C, S);
pair D = (10,10);
label("$D$", D, SW);
pair EE = (15,11.8);
label("$E$", EE, N);
pair F = (3,10);
label("$F$", F, N);
filldraw(D--arc(D,2.5,270,380)--cycle,lightgray);
dot(A\^\^B\^\^C\^\^D\^\^EE\^\^F);
draw(A--B--C--D--cycle);
draw(D--EE--F--cycle);
label("$110^\circ$", (15,9), SW);
