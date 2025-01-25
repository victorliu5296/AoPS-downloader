if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="2017_AMC_8_Problems-6";
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
draw((1,1.732)--(2,3.464)--(3,1.732)); draw(arc((0,0),(2,0),(1,1.732))); draw(arc((4,0),(3,1.732),(2,0))); label("$U$", (2,3.464), N); label("$S$", (1,1.732), W); label("$T$", (3,1.732), E); label("$R$", (2,0), S);
