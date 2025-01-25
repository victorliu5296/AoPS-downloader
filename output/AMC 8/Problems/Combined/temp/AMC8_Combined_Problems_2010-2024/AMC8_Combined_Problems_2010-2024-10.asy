if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="AMC8_Combined_Problems_2010-2024-10";
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
filldraw((0,0)--(25,0)--(25,15)--(0,15)--cycle,white,black);
label("D",(0,0),S);
label("R",(25,0),S);
label("Q",(25,15),N);
label("A",(0,15),N);
filldraw((10,0)--(15,0)--(15,15)--(10,15)--cycle,mediumgrey,black);
label("S",(10,0),S);
label("C",(15,0),S);
label("B",(15,15),N);
label("P",(10,15),N);
