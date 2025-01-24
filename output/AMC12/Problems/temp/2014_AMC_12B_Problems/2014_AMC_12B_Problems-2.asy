if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="2014_AMC_12B_Problems-2";
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
pair A=(0,0), B=(-3,0), C=(-3,-4), D=(48/5,-36/5);
draw(A--B--C--D--A);
label("$A$",A,N); label("$B$",B,NW); label("$C$",C,SW); label("$D$",D,E);
draw(rightanglemark(A,B,C,25));
