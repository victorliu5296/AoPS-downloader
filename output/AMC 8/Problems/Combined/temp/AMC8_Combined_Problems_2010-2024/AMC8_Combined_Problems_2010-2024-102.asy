if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="AMC8_Combined_Problems_2010-2024-102";
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
filldraw((0,4)--(1,4)--(1,3)--(0,3)--cycle, gray(.75), gray(.5)+linewidth(1));
filldraw((0,3)--(1,3)--(1,2)--(0,2)--cycle, gray(.75), gray(.5)+linewidth(1));
filldraw((1,2)--(2,2)--(2,1)--(1,1)--cycle, gray(.75), gray(.5)+linewidth(1));
filldraw((1,1)--(2,1)--(2,0)--(1,0)--cycle, gray(.75), gray(.5)+linewidth(1));

draw((-1,5)--(-1,-1),gray(.9));
draw((0,5)--(0,-1),gray(.9));
draw((1,5)--(1,-1),gray(.9));
draw((2,5)--(2,-1),gray(.9));
draw((3,5)--(3,-1),gray(.9));
draw((4,5)--(4,-1),gray(.9));
draw((5,5)--(5,-1),gray(.9));

draw((-1,5)--(5, 5),gray(.9));
draw((-1,4)--(5,4),gray(.9));
draw((-1,3)--(5,3),gray(.9));
draw((-1,2)--(5,2),gray(.9));
draw((-1,1)--(5,1),gray(.9));
draw((-1,0)--(5,0),gray(.9));
draw((-1,-1)--(5,-1),gray(.9));


dot((0,4));
label("$(0,4)$",(0,4),NW);

dot((2,0));
label("$(2,0)$",(2,0),SE);

draw((0,4)--(2,0));

draw((-1,0) -- (5,0), arrow=Arrow);
draw((0,-1) -- (0,5), arrow=Arrow);
