if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="2016_AMC_8_Problems-2";
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
unitsize(0.9cm);
draw((-0.5,0)--(10,0), linewidth(1.5));
draw((-0.5,1)--(10,1));
draw((-0.5,2)--(10,2));
draw((-0.5,3)--(10,3));
draw((-0.5,4)--(10,4));
draw((-0.5,5)--(10,5));
draw((-0.5,6)--(10,6));
draw((-0.5,7)--(10,7));
label("frequency",(-0.5,8));
label("0", (-1, 0));
label("1", (-1, 1));
label("2", (-1, 2));
label("3", (-1, 3));
label("4", (-1, 4));
label("5", (-1, 5));
label("6", (-1, 6));
label("7", (-1, 7));
filldraw((0,0)--(0,7)--(1,7)--(1,0)--cycle, black);
filldraw((2,0)--(2,3)--(3,3)--(3,0)--cycle, black);
filldraw((4,0)--(4,1)--(5,1)--(5,0)--cycle, black);
filldraw((6,0)--(6,4)--(7,4)--(7,0)--cycle, black);
filldraw((8,0)--(8,4)--(9,4)--(9,0)--cycle, black);
label("3", (0.5, -0.5));
label("4", (2.5, -0.5));
label("5", (4.5, -0.5));
label("6", (6.5, -0.5));
label("7", (8.5, -0.5));
label("name length", (4.5, -1));
