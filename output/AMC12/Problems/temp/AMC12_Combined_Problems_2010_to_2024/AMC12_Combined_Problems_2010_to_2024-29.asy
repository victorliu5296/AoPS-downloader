if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="AMC12_Combined_Problems_2010_to_2024-29";
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
unitsize(120);
pair B = (0, 0), A = (0, 1), D = (1, 1), C = (1, 0), P = (1/4, 2/3);
draw(A--B--C--D--cycle);
dot(P);
defaultpen(fontsize(10pt));
draw(A--P--B);
draw(C--P--D);
label("$A$", A, W);
label("$B$", B, W);
label("$C$", C, E);
label("$D$", D, E);
label("$P$", P, N*1.5+E*0.5);
dot(A);
dot(B);
dot(C);
dot(D);
