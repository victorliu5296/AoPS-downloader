if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="AMC8_Combined_Problems_2010-2024-34";
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
draw((0,4)--(0,0)--(6,0)--(6,8)--(0,8)--(0,4)--(6,8)--(0,0));
label("$A$", (0,0), SW);
label("$B$", (6, 0), SE);
label("$C$", (6,8), NE);
label("$D$", (0, 8), NW);
label("$M$", (0, 4), W);
label("$4$", (0, 2), W);
label("$6$", (3, 0), S);
