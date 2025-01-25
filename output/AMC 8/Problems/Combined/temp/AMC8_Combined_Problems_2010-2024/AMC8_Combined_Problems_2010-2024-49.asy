if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="AMC8_Combined_Problems_2010-2024-49";
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
draw((0,0)--(6,0)--(6,6)--(0,6)--cycle);
draw((0,6)--(6,0)); draw((3,0)--(6,6));
label("$A$",(0,6),NW);
label("$B$",(6,6),NE);
label("$C$",(6,0),SE);
label("$D$",(0,0),SW);
label("$E$",(3,0),S);
label("$F$",(4,2),E);
