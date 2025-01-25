if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="AMC12_Combined_Problems_2010_to_2024-55";
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
size(5cm);
filldraw((4,0)--(8,3)--(8-3/4,4)--(1,4)--cycle,mediumgray);
draw((0,0)--(8,0)--(8,4)--(0,4)--cycle,linewidth(1.1));
draw((1,0)--(1,4)--(4,0)--(8,3)--(5,7)--(1,4),linewidth(1.1));
label("$4$", (8,2), E);
label("$8$", (4,0), S);
label("$5$", (3,11/2), NW);
draw((1,.35)--(1.35,.35)--(1.35,0),linewidth(1.1));
