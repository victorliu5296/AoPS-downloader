if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="2019_AMC_12A_Problems-2";
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
unitsize(20);filldraw(circle((0,0),2*sqrt(3)+1),rgb(0.5,0.5,0.5));filldraw(circle((-2,0),1),white);filldraw(circle((0,0),1),white);filldraw(circle((2,0),1),white);filldraw(circle((1,sqrt(3)),1),white);filldraw(circle((3,sqrt(3)),1),white);filldraw(circle((-1,sqrt(3)),1),white);filldraw(circle((-3,sqrt(3)),1),white);filldraw(circle((1,-1*sqrt(3)),1),white);filldraw(circle((3,-1*sqrt(3)),1),white);filldraw(circle((-1,-1*sqrt(3)),1),white);filldraw(circle((-3,-1*sqrt(3)),1),white);filldraw(circle((0,2*sqrt(3)),1),white);filldraw(circle((0,-2*sqrt(3)),1),white);
