if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="AMC8_Combined_Problems_2010-2024-80";
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
// Diagram by TheMathGuyd.
size(0,7.5cm);
path sq = (-0.5,-0.5)--(0.5,-0.5)--(0.5,0.5)--(-0.5,0.5)--cycle;
path rh = (-0.125,-0.125)--(0.5,-0.5)--(0.5,0.5)--(-0.125,0.875)--cycle;
path sqA = (-0.5,-0.5)--(-0.25,-0.5)--(0,-0.25)--(0.25,-0.5)--(0.5,-0.5)--(0.5,-0.25)--(0.25,0)--(0.5,0.25)--(0.5,0.5)--(0.25,0.5)--(0,0.25)--(-0.25,0.5)--(-0.5,0.5)--(-0.5,0.25)--(-0.25,0)--(-0.5,-0.25)--cycle;
path sqB = (-0.5,-0.5)--(-0.25,-0.5)--(0,-0.25)--(0.25,-0.5)--(0.5,-0.5)--(0.5,0.5)--(0.25,0.5)--(0,0.25)--(-0.25,0.5)--(-0.5,0.5)--cycle;
path sqC = (-0.25,-0.25)--(0.25,-0.25)--(0.25,0.25)--(-0.25,0.25)--cycle;
path trD = (-0.25,0)--(0.25,0)--(0,0.25)--cycle;
path sqE = (-0.25,0)--(0,-0.25)--(0.25,0)--(0,0.25)--cycle;

//ANSWERS
real sh = 1.5;
label("$\textbf{(A)}$",(-0.5,0.5),SW);
label("$\textbf{(B)}$",shift((sh,0))*(-0.5,0.5),SW);
label("$\textbf{(C)}$",shift((2sh,0))*(-0.5,0.5),SW);
label("$\textbf{(D)}$",shift((0,-sh))*(-0.5,0.5),SW);
label("$\textbf{(E)}$",shift((sh,-sh))*(-0.5,0.5),SW);
filldraw(sqA,mediumgrey,black);
filldraw(shift((sh,0))*sqB,mediumgrey,black);
filldraw(shift((2*sh,0))*sq,mediumgrey,black);
filldraw(shift((2*sh,0))*sqC,white,black);
filldraw(shift((0,-sh))*sq,mediumgrey,black);
filldraw(shift((0,-sh))*trD,white,black);
filldraw(shift((sh,-sh))*sq,mediumgrey,black);
filldraw(shift((sh,-sh))*sqE,white,black);
