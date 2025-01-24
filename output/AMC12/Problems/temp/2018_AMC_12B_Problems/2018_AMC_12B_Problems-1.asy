if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="2018_AMC_12B_Problems-1";
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
size(270pt);
defaultpen(fontsize(10pt));
filldraw(((3,3)--(-3,3)--(-3,-3)--(3,-3)--cycle),lightgrey);
dot((-3,3));
label("$A$",(-3,3),NW);
draw((1,3)--(-3,-1),dashed+linewidth(.5));
draw((-1,3)--(3,-1),dashed+linewidth(.5));
draw((-1,-3)--(3,1),dashed+linewidth(.5));
draw((1,-3)--(-3,1),dashed+linewidth(.5));
draw((0,2)--(2,0)--(0,-2)--(-2,0)--cycle,linewidth(.5));
draw((0,3)--(0,-3),linetype("2.5 2.5")+linewidth(.5));
draw((3,0)--(-3,0),linetype("2.5 2.5")+linewidth(.5));
label('$w$',(-1,-1),SW);
label('$w$',(1,-1),SE);
draw((4.5,0)--(6.5,2)--(8.5,0)--(6.5,-2)--cycle);
draw((4.5,0)--(8.5,0));
draw((6.5,2)--(6.5,-2));
label("$A$",(6.5,0),NW);
dot((6.5,0));
