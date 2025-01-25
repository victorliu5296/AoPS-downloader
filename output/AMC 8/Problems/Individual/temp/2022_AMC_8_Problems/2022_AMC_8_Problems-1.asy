if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="2022_AMC_8_Problems-1";
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
defaultpen(linewidth(0.5));
size(5cm);
defaultpen(fontsize(14pt));
label("$\textbf{Math}$", (2.1,3.7)--(3.9,3.7));
label("$\textbf{Team}$", (2.1,3)--(3.9,3));
filldraw((1,2)--(2,1)--(3,2)--(4,1)--(5,2)--(4,3)--(5,4)--(4,5)--(3,4)--(2,5)--(1,4)--(2,3)--(1,2)--cycle, mediumgray*0.5 + lightgray*0.5);

draw((0,0)--(6,0), gray);
draw((0,1)--(6,1), gray);
draw((0,2)--(6,2), gray);
draw((0,3)--(6,3), gray);
draw((0,4)--(6,4), gray);
draw((0,5)--(6,5), gray);
draw((0,6)--(6,6), gray);

draw((0,0)--(0,6), gray);
draw((1,0)--(1,6), gray);
draw((2,0)--(2,6), gray);
draw((3,0)--(3,6), gray);
draw((4,0)--(4,6), gray);
draw((5,0)--(5,6), gray);
draw((6,0)--(6,6), gray);
