if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="AIME_2022_I_Problems-1";
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
defaultpen(linewidth(0.6)+fontsize(11));
size(8cm);
pair A,B,C,D,P,Q;
A=(0,0);
label("$A$", A, SW);
B=(6,15);
label("$B$", B, NW);
C=(30,15);
label("$C$", C, NE);
D=(24,0);
label("$D$", D, SE);
P=(5.2,2.6);
label("$P$", (5.8,2.6), N);
Q=(18.3,9.1);
label("$Q$", (18.1,9.7), W);
draw(A--B--C--D--cycle);
draw(C--A);
draw(Circle((10.95,7.45), 7.45));
dot(A^^B^^C^^D^^P^^Q);
