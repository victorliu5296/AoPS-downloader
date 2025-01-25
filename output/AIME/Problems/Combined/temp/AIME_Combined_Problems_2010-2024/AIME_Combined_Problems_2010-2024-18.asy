if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="AIME_Combined_Problems_2010-2024-18";
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
size(5cm);
pair C=(0,0),B=(0,2*sqrt(3)),A=(5,0);
real t = .385, s = 3.5*t-1;
pair R = A*t+B*(1-t), P=B*s;
pair Q = dir(-60) * (R-P) + P;
fill(P--Q--R--cycle,gray);
draw(A--B--C--A^^P--Q--R--P);
dot(A--B--C--P--Q--R);
