if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="2011_AMC_8_Problems-1";
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
filldraw((0,0)--(5,0)--(5,5)--(0,5)--cycle,white,black);
filldraw((1,1)--(4,1)--(4,4)--(1,4)--cycle,mediumgray,black);
filldraw((2,2)--(3,2)--(3,3)--(2,3)--cycle,white,black);
draw((4,0)--(4,5));
draw((3,0)--(3,5));
draw((2,0)--(2,5));
draw((1,0)--(1,5));
draw((0,4)--(5,4));
draw((0,3)--(5,3));
draw((0,2)--(5,2));
draw((0,1)--(5,1));
