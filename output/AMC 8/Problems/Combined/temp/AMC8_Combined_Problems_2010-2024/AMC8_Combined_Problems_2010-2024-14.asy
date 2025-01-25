if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="AMC8_Combined_Problems_2010-2024-14";
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
pair A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R;
A=(4,0);
B=(7,0);
C=(7,4);
D=(8,4);
E=(8,5);
F=(10,5);
G=(10,7);
H=(7,7);
I=(7,8);
J=(5,8);
K=(5,7);
L=(4,7);
M=(4,6);
N=(0,6);
O=(0,5);
P=(2,5);
Q=(2,3);
R=(4,3);
draw(A--B--C--D--E--F--G--H--I--J--K--L--M--N--O--P--Q--R--cycle);
label("$X$",(3.4,1.5));
label("6",(7.6,1.5));
label("1",(7.6,3.5));
label("1",(8.4,4.6));
label("2",(9.4,4.6));
label("2",(10.4,6));
label("3",(8.4,7.4));
label("1",(7.5,7.8));
label("2",(6,8.5));
label("1",(4.7,7.8));
label("1",(4.3,7.5));
label("1",(3.5,6.5));
label("4",(1.8,6.5));
label("1",(-0.5,5.5));
label("2",(0.8,4.5));
label("2",(1.5,3.8));
label("2",(2.8,2.6));
