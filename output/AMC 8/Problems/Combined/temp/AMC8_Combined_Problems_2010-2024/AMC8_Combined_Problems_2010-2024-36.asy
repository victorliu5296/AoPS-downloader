if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="AMC8_Combined_Problems_2010-2024-36";
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
draw((0,0)--(3,0)--(3,4)--(0,4)--(0,0)--(2,4)--(3,0));
draw((3,0)--(1,4)--(0,0));
fill((0,0)--(1,4)--(1.5,3)--cycle, black);
fill((3,0)--(2,4)--(1.5,3)--cycle, black);
label("$A$",(3.05,4.2));
label("$B$",(2,4.2));
label("$C$",(1,4.2));
label("$D$",(0,4.2));
label("$E$", (0,-0.2));
label("$F$", (3,-0.2));
