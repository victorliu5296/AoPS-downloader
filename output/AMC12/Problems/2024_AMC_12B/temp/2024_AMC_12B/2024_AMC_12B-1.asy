if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="2024_AMC_12B-1";
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
pair X = (0, 0);
pair W = (0, 4);
pair Y = (8, 0);
pair Z = (8, 4);
label("$X$", X, dir(180));
label("$W$", W, dir(180));
label("$Y$", Y, dir(0));
label("$Z$", Z, dir(0));

draw(W--X--Y--Z--cycle);
dot(X);
dot(Y);
dot(W);
dot(Z);
pair M = (2, 0);
pair A = (8, 3);
label("$A$", A, dir(0));
dot(M);
dot(A);
draw(W--M--A--cycle);
markscalefactor = 0.05;
draw(rightanglemark(W, M, A));
label("$M$", M, dir(-90));
