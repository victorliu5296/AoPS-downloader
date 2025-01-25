if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="AMC8_Combined_Problems_2010-2024-28";
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
pair A,B,C,D,E,F,G,H,O,X;
A=dir(45);
B=dir(90);
C=dir(135);
D=dir(180);
E=dir(-135);
F=dir(-90);
G=dir(-45);
H=dir(0);
O=(0,0);
X=midpoint(A--B);

fill(X--B--C--D--E--O--cycle,rgb(0.75,0.75,0.75));
draw(A--B--C--D--E--F--G--H--cycle);

dot("$A$",A,dir(45));
dot("$B$",B,dir(90));
dot("$C$",C,dir(135));
dot("$D$",D,dir(180));
dot("$E$",E,dir(-135));
dot("$F$",F,dir(-90));
dot("$G$",G,dir(-45));
dot("$H$",H,dir(0));
dot("$X$",X,dir(135/2));
dot("$O$",O,dir(0));
draw(E--O--X);
