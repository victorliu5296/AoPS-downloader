if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="2022_AMC_12B_Problems-1";
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
import olympiad;
size(180);
real r = 3, s = 5, t = sqrt(r*r+s*s);
defaultpen(linewidth(0.6) + fontsize(10));
pair A = (0,0), B = (r,s), C = (r+t,s), D = (t,0), P = (r,0);
draw(A--B--C--D--A^^B--P^^rightanglemark(B,P,D));
label("$A$",A,SW);
label("$B$", B, NW);
label("$C$",C,NE);
label("$D$",D,SE);
label("$P$",P,S);
