if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="2017_AMC_8_Problems-3";
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
draw((0,0)--(4,0)--(0,3)--(0,0));
label("$A$", (0,0), SW);
label("$B$", (4,0), ESE);
label("$C$", (0, 3), N);
label("$3$", (0, 1.5), W);
label("$4$", (2, 0), S);
label("$5$", (2, 1.5), NE);
