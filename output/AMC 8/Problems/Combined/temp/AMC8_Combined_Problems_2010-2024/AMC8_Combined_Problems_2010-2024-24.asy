if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="AMC8_Combined_Problems_2010-2024-24";
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
size(250);
defaultpen(linewidth(0.8));
pair A=(0,5),B=origin,C=(6,0),D=(6,5),E=(18,0);
draw(A--B--E--D--cycle^^C--D);
draw(rightanglemark(D,C,E,30));
label("$A$",A,NW);
label("$B$",B,SW);
label("$C$",C,S);
label("$D$",D,N);
label("$E$",E,S);
label("$5$",A/2,W);
label("$6$",(A+D)/2,N);
