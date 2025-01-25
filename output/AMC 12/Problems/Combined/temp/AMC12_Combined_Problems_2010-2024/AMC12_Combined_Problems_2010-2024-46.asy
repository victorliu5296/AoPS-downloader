if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="AMC12_Combined_Problems_2010-2024-46";
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
size(350);
defaultpen(linewidth(0.8)+fontsize(11));
real theta = aTan(1.25/2);
pair A = 2.5*dir(180+theta), B = (3.35,0), C = -A, D = -B, P = foot(A,B,D), Q = -P, R = foot(B,A,C), S = -R;
draw(A--B--C--D--A^^B--D^^R--S^^rightanglemark(A,P,D,6)^^rightanglemark(C,Q,D,6));
draw(B--R^^C--Q^^A--P^^D--S,linetype("4 4"));
dot("$A$",A,dir(270));
dot("$B$",B,E);
dot("$C$",C,N);
dot("$D$",D,W);
dot("$P$",P,SE);
dot("$Q$",Q,NE);
dot("$R$",R,N);
dot("$S$",S,dir(270));
