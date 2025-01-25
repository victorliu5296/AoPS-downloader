if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="2014_AMC_8_Problems-1";
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
size(300);
defaultpen(linewidth(0.8));
pair A=(-1,0),C=(1,0),B=dir(40),D=origin;
draw(A--B--C--A);
draw(D--B);
dot("$A$", A, SW);
dot("$B$", B, NE);
dot("$C$", C, SE);
dot("$D$", D, S);
label("$70^\circ$",C,2*dir(180-35));
