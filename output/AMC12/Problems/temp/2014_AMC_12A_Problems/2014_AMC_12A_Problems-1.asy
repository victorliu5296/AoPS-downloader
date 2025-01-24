if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="2014_AMC_12A_Problems-1";
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
import graph3;
import solids;
real h=2+2*sqrt(7);
currentprojection=orthographic((0.75,-5,h/2+1),target=(2,2,h/2));
currentlight=light(4,-4,4);
draw((0,0,0)--(4,0,0)--(4,4,0)--(0,4,0)--(0,0,0)\^\^(4,0,0)--(4,0,h)--(4,4,h)--(0,4,h)--(0,4,0));
draw(shift((1,3,1))*unitsphere,gray(0.85));
draw(shift((3,3,1))*unitsphere,gray(0.85));
draw(shift((3,1,1))*unitsphere,gray(0.85));
draw(shift((1,1,1))*unitsphere,gray(0.85));
draw(shift((2,2,h/2))*scale(2,2,2)*unitsphere,gray(0.85));
draw(shift((1,3,h-1))*unitsphere,gray(0.85));
draw(shift((3,3,h-1))*unitsphere,gray(0.85));
draw(shift((3,1,h-1))*unitsphere,gray(0.85));
draw(shift((1,1,h-1))*unitsphere,gray(0.85));
draw((0,0,0)--(0,0,h)--(4,0,h)\^\^(0,0,h)--(0,4,h));
