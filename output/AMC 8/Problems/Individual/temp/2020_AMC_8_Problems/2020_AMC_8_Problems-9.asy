if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="2020_AMC_8_Problems-9";
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
draw((0,0)--(13,0)--(13,13)--(0,13)--cycle);
filldraw((1,1)--(4,1)--(4,4)--(1,4)--cycle, mediumgray);
filldraw((1,5)--(4,5)--(4,8)--(1,8)--cycle, mediumgray);
filldraw((1,9)--(4,9)--(4,12)--(1,12)--cycle, mediumgray);
filldraw((5,1)--(8,1)--(8,4)--(5,4)--cycle, mediumgray);
filldraw((5,5)--(8,5)--(8,8)--(5,8)--cycle, mediumgray);
filldraw((5,9)--(8,9)--(8,12)--(5,12)--cycle, mediumgray);
filldraw((9,1)--(12,1)--(12,4)--(9,4)--cycle, mediumgray);
filldraw((9,5)--(12,5)--(12,8)--(9,8)--cycle, mediumgray);
filldraw((9,9)--(12,9)--(12,12)--(9,12)--cycle, mediumgray);
