if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="2018_AMC_8_Problems-3";
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
size(4cm);
filldraw(scale(2)*unitcircle,gray,black);
filldraw(shift(-1,0)*unitcircle,white,black);
filldraw(shift(1,0)*unitcircle,white,black);
