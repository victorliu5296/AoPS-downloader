if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="AMC12_Combined_Problems_2010_to_2024-42";
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
size(10cm);
pen p=black+linewidth(1),q=black+linewidth(5);
pair C=(0,0),D=(cos(pi/12),sin(pi/12)),E=rotate(150,D)*C,F=rotate(-30,E)*D,A=rotate(150,F)*E,B=rotate(-30,A)*F;
draw(C--D--E--F--A--B--cycle,p);
dot(A,q);
dot(B,q);
dot(C,q);
dot(D,q);
dot(E,q);
dot(F,q);
label("$C$",C,2*S);
label("$D$",D,2*S);
label("$E$",E,2*S);
label("$F$",F,2*dir(0));
label("$A$",A,2*N);
label("$B$",B,2*W);
