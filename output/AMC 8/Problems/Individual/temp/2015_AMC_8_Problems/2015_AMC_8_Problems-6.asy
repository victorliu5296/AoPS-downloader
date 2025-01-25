if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="2015_AMC_8_Problems-6";
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
draw((0,0)--(0,5)--(5,5)--(5,0)--cycle);
filldraw((0,4)--(1,4)--(1,5)--(0,5)--cycle, gray);
filldraw((0,0)--(1,0)--(1,1)--(0,1)--cycle, gray);
filldraw((4,0)--(4,1)--(5,1)--(5,0)--cycle, gray);
filldraw((4,4)--(4,5)--(5,5)--(5,4)--cycle, gray);
