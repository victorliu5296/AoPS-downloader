if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="AMC12_Combined_Problems_2010-2024-8";
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
size(200);
defaultpen(linewidth(1));
pair A=origin,B=(2.5,0),C=B+2.5*dir(60), D=C+1.75*dir(120),E=D-(3.19,0),F=E-1.8*dir(60);
pair X=waypoint(B--C,0.345),Z=rotate(90,A)*X,Y=rotate(90,Z)*A;
draw(A--B--C--D--E--F--cycle);
draw(A--X--Y--Z--cycle,linewidth(0.9)+linetype("2 2"));
dot("$A$",A,W,linewidth(4));
dot("$B$",B,dir(0),linewidth(4));
dot("$C$",C,dir(0),linewidth(4));
dot("$D$",D,dir(20),linewidth(4));
dot("$E$",E,dir(100),linewidth(4));
dot("$F$",F,W,linewidth(4));
dot("$X$",X,dir(0),linewidth(4));
dot("$Y$",Y,N,linewidth(4));
dot("$Z$",Z,W,linewidth(4));
