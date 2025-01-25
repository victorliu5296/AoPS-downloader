if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="2024_AMC_8_Problems-6";
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
size(100);
import graph;



draw(circle((0,0),3));
real radius = 3;
real angleStart = -54; // starting angle of the sector
real angleEnd = 54; // ending angle of the sector
label("$O$",(0,0),W);
pair O = (0, 0);
filldraw(arc(O, radius, angleStart, angleEnd)--O--cycle, lightgray);
filldraw(circle((0,0),2),lightgray);
filldraw(circle((0,0),1),white);
draw((1.763,2.427)--(0,0)--(1.763,-2.427));
label("$B$",(1.763,2.427),NE);
label("$C$",(1.763,-2.427),SE);
