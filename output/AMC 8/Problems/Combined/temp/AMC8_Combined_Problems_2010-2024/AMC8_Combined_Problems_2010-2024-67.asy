if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="AMC8_Combined_Problems_2010-2024-67";
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
draw((0,0)--(5,0)--(5,3)--(0,3)--(0,0));
draw((3,0)--(3,1)--(0,1));
draw((3,1)--(3,2)--(5,2));
draw((3,2)--(2,2)--(2,1)--(2,3));
label("$R_1$",(3/2,1/2));
label("$S_3$",(4,1));
label("$S_2$",(5/2,3/2));
label("$S_1$",(1,2));
label("$R_2$",(7/2,5/2));
