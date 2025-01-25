if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="AMC12_Combined_Problems_2010-2024-67";
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
// Credit to shihan for this diagram.

defaultpen(fontsize(13)); size(200);
pair O=(0,0),A=dir(225),B=dir(-15),C=dir(105),D=rotate(38.21,O)*A,E=rotate(38.21,O)*B,F=rotate(38.21,O)*C;
draw(A--B--C--A,gray+0.4);draw(D--E--F--D,gray+0.4); draw(A--D--B--E--C--F--A,black+0.9); dot(O); dot("$A$",A,dir(A)); dot("$B$",B,dir(B)); dot("$C$",C,dir(C)); dot("$D$",D,dir(D)); dot("$E$",E,dir(E)); dot("$F$",F,dir(F));
