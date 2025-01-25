if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="AMC8_Combined_Problems_2010-2024-29";
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
import three; currentprojection=orthographic(1/2,-1,1/2); /* three - currentprojection, orthographic */ draw((0,0,0)--(1,0,0)--(1,1,0)--(0,1,0)--cycle); draw((0,0,0)--(0,0,1)); draw((0,1,0)--(0,1,1)); draw((1,1,0)--(1,1,1)); draw((1,0,0)--(1,0,1)); draw((0,0,1)--(1,0,1)--(1,1,1)--(0,1,1)--cycle); label("$D$",(0,0,0),S); label("$A$",(0,0,1),N); label("$H$",(0,1,0),S); label("$E$",(0,1,1),N); label("$C$",(1,0,0),S); label("$B$",(1,0,1),N); label("$G$",(1,1,0),S); label("$F$",(1,1,1),N);
