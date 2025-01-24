if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="AMC12_Combined_Problems_2010_to_2024-11";
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
real r=5/7;
pair A=(10,sqrt(28^2-100)),B=origin,C=(20,0),D=(A.x*r,A.y*r);
pair bottom=(C.x+(D.x-A.x),C.y+(D.y-A.y));
pair E=extension(D,bottom,B,C);
pair top=(E.x+D.x,E.y+D.y);
pair F=extension(E,top,A,C);
draw(A--B--C--cycle^^D--E--F);
dot(A^^B^^C^^D^^E^^F);
label("$A$",A,NW);
label("$B$",B,SW);
label("$C$",C,SE);
label("$D$",D,W);
label("$E$",E,S);
label("$F$",F,dir(0));
