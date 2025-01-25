if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="2011_AMC_8_Problems-6";
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
pair A,B,C,D,E,F,G,H,I,J,K,L;
A=(0,0);
B=(20,0);
C=(20,20);
D=(0,20);
draw(A--B--C--D--cycle);
E=(-10,-5);
F=(13,-5);
G=(13,5);
H=(-10,5);
draw(E--F--G--H--cycle);
I=(10,-20);
J=(18,-20);
K=(18,13);
L=(10,13);
draw(I--J--K--L--cycle);
