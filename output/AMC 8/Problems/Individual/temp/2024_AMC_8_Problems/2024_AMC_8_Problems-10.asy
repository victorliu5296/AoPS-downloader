if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="2024_AMC_8_Problems-10";
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
unitsize(.3cm);
filldraw((0,0)--(8,8)--(11,5)--(18,12)--(30,0)--cycle,gray(0.7),linewidth(1));
draw((-1,0)--(-1,8),linewidth(.75));
draw((-1.4,0)--(-.6,0),linewidth(.75));
draw((-1.4,8)--(-.6,8),linewidth(.75));
label("$8$",(-1,4),W);
label("$12$",(31,6),E);
draw((-1,8)--(8,8),dashed);
draw((31,0)--(31,12),linewidth(.75));
draw((30.6,0)--(31.4,0),linewidth(.75));
draw((30.6,12)--(31.4,12),linewidth(.75));
draw((31,12)--(18,12),dashed);
label("$45^{\circ}$",(.75,0),NE,fontsize(10pt));
label("$45^{\circ}$",(29.25,0),NW,fontsize(10pt));
draw((8,8)--(7.5,7.5)--(8,7)--(8.5,7.5)--cycle);
draw((18,12)--(17.5,11.5)--(18,11)--(18.5,11.5)--cycle);
draw((11,5)--(11,0),dashed);
label("$h$",(11,2.5),E);
