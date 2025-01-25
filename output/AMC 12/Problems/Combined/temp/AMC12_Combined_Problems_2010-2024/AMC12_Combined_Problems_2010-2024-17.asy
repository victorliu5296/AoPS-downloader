if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="AMC12_Combined_Problems_2010-2024-17";
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
pair A=(1,0), B=(0,0), C=(0,1), D=(1,1), E=(2-sqrt(3),0), F=(2-sqrt(3),1), G=(1,sqrt(3)/2), H=(2.5-sqrt(3),1), J=(.5,0), K=(2-sqrt(3),1-sqrt(3)/2);
draw(A--B--C--D--cycle);
draw(K--H--G--J--cycle);
draw(F--E);
label("$A$",A,SE); label("$B$",B,SW); label("$C$",C,NW); label("$D$",D,NE); label("$E$",E,S); label("$F$",F,N);
label("$G$",G,E); label("$H$",H,N); label("$J$",J,S); label("$K$",K,W);
