if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="AMC12_Combined_Problems_2010_to_2024-21";
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
pair A = (0,0), B=(6,0), C=intersectionpoints(Circle(A,8),Circle(B,7))[0], F=incenter(A,B,C), D=extension(A,F,B,C),E=extension(B,F,A,C);
draw(A--B--C--A--D^^B--E);
label("$A$",A,SW);
label("$B$",B,SE);
label("$C$",C,N);
label("$D$",D,NE);
label("$E$",E,NW);
label("$F$",F,1.5*N);
