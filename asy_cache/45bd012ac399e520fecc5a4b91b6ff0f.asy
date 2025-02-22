if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);
settings.outformat = "pdf";
settings.render = 0;
settings.prc = false;
import olympiad;
import cse5;
size(8cm);
size(6cm);
pair A,B,C,D,EE,F,G,H,I,J;
C = (0,0);
B = (-1,1);
D = (2,0.5);
A = B+D;
G = (0,2);
F = B+G;
H = G+D;
EE = G+B+D;
I = (D+H)/2; J = (B+F)/2;
filldraw(C--I--EE--J--cycle,lightgray,black);
draw(C--D--H--EE--F--B--cycle);
draw(G--F--G--C--G--H);
draw(A--B,dashed); draw(A--EE,dashed); draw(A--D,dashed);
dot(A); dot(B); dot(C); dot(D); dot(EE); dot(F); dot(G); dot(H); dot(I); dot(J);
label("$A$",A,E);
label("$B$",B,W);
label("$C$",C,S);
label("$D$",D,E);
label("$E$",EE,N);
label("$F$",F,W);
label("$G$",G,N);
label("$H$",H,E);
label("$I$",I,E);
label("$J$",J,W);