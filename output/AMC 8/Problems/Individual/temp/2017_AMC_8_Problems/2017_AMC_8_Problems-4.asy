if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="2017_AMC_8_Problems-4";
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
draw((0,0)--(2.4,3.6)--(0,5)--(12,0)--(0,0));
label("$B$", (0, 0), SW);
label("$A$", (12, 0), ESE);
label("$C$", (2.4, 3.6), SE);
label("$D$", (0, 5), N);
