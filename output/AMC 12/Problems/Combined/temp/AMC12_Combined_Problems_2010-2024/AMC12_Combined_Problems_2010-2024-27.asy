if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="AMC12_Combined_Problems_2010-2024-27";
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
draw((0,0)--(4,0)--(4,3)--(0,0));
label("$A$", (0,0), SW);
label("$B$", (4,3), NE);
label("$C$", (4,0), SE);
label("$4$", (2,0), S);
label("$3$", (4,1.5), E);
label("$5$", (2,1.5), NW);
fill(origin--(0,0)--(4,3)--(4,0)--cycle, gray);
