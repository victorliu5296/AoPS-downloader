if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="AMC12_Combined_Problems_2010-2024-10";
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
pair A,B,C,D,E;
A=(0,0);
B=(0,50);
C=(50,50);
D=(50,0);
E = (40,50);
draw(A--B);
draw(B--E);
draw(E--C);
draw(C--D);
draw(D--A);
draw(A--E);
dot(A);
dot(B);
dot(C);
dot(D);
dot(E);
label("A",A,SW);
label("B",B,NW);
label("C",C,NE);
label("D",D,SE);
label("E",E,N);
