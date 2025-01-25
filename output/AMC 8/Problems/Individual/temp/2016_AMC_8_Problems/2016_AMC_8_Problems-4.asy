if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="2016_AMC_8_Problems-4";
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
draw((0,0)--(8,15)--(16,0)--(0,0));
draw(arc((8,0),7.0588,0,180));
