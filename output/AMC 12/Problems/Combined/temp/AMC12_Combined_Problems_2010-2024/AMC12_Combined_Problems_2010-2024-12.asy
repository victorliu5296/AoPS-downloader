if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="AMC12_Combined_Problems_2010-2024-12";
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
size(180);
pen dps = linewidth(0.7) + fontsize(10); defaultpen(dps);
real s=1/2,m=5/6,l=1;
pair A=origin,B=(l,0),C=rotate(60)*l,D=(s,0),E=rotate(60)*s,F=m,G=rotate(60)*m;
draw(A--B--C--cycle^^D--E^^F--G);
dot(A^^B^^C^^D^^E^^F^^G);
label("$A$",A,SW);
label("$B$",B,SE);
label("$C$",C,N);
label("$D$",D,S);
label("$E$",E,NW);
label("$F$",F,S);
label("$G$",G,NW);
