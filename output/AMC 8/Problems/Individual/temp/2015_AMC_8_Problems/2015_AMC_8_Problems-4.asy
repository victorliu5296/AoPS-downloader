if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="2015_AMC_8_Problems-4";
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
draw((1,0)--(1,5),linewidth(.5));
draw((2,0)--(2,5),linewidth(.5));
draw((3,0)--(3,5),linewidth(.5));
draw((4,0)--(4,5),linewidth(.5));
draw((5,0)--(5,5),linewidth(.5));
draw((6,0)--(6,5),linewidth(.5));
draw((0,1)--(6,1),linewidth(.5));
draw((0,2)--(6,2),linewidth(.5));
draw((0,3)--(6,3),linewidth(.5));
draw((0,4)--(6,4),linewidth(.5));
draw((0,5)--(6,5),linewidth(.5));
draw((0,0)--(0,6),EndArrow);
draw((0,0)--(7,0),EndArrow);
draw((1,3)--(4,4)--(5,1)--cycle);
label("$y$",(0,6),W); label("$x$",(7,0),S);
label("$A$",(1,3),dir(210)); label("$B$",(5,1),SE); label("$C$",(4,4),dir(100));
