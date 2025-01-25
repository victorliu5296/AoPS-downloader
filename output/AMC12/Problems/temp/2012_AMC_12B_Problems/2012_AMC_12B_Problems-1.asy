if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="2012_AMC_12B_Problems-1";
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
draw((0,0)--(0,10)--(20,10)--(20,0)--cycle);
draw(circle((10,5),5));
