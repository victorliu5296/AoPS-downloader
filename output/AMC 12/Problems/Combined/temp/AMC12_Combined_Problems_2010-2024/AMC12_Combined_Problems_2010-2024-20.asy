if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="AMC12_Combined_Problems_2010-2024-20";
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
real x=.369;
draw((0,0)--(0,1)--(1,1)--(1,0)--cycle);
filldraw((0,0)--(0,x)--(x,x)--(x,0)--cycle, gray);
filldraw((0,1)--(0,1-x)--(x,1-x)--(x,1)--cycle, gray);
filldraw((1,1)--(1,1-x)--(1-x,1-x)--(1-x,1)--cycle, gray);
filldraw((1,0)--(1,x)--(1-x,x)--(1-x,0)--cycle, gray);
filldraw((.5,.5-x*sqrt(2)/2)--(.5+x*sqrt(2)/2,.5)--(.5,.5+x*sqrt(2)/2)--(.5-x*sqrt(2)/2,.5)--cycle, gray);
