if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="AIME_Combined_Problems_2010-2024-22";
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
pair A, B, C, D, E, F;
A = (0,3);
B=(0,0);
C=(11,0);
D=(11,3);
E=foot(C, A, (9/4,0));
F=foot(A, C, (35/4,3));
draw(A--B--C--D--cycle);
draw(A--E--C--F--cycle);
filldraw(A--(9/4,0)--C--(35/4,3)--cycle,gray*0.5+0.5*lightgray);
dot(A^^B^^C^^D^^E^^F);
label("$A$", A, W);
label("$B$", B, W);
label("$C$", C, (1,0));
label("$D$", D, (1,0));
label("$F$", F, N);
label("$E$", E, S);
