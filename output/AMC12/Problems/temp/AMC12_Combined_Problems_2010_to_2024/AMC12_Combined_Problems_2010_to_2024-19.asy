if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="AMC12_Combined_Problems_2010_to_2024-19";
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
size(6cm);
defaultpen(fontsize(9pt));
draw((0,0)--(8,0)--(8,5)--(0,5)--cycle);
filldraw((7,0)--(8,0)--(8,1)--(0,4)--(0,5)--(1,5)--cycle,gray(0.8));

label("$1$",(1/2,5),dir(90));
label("$7$",(9/2,5),dir(90));

label("$1$",(8,1/2),dir(0));
label("$4$",(8,3),dir(0));

label("$1$",(15/2,0),dir(270));
label("$7$",(7/2,0),dir(270));

label("$1$",(0,9/2),dir(180));
label("$4$",(0,2),dir(180));
