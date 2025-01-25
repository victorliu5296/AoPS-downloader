if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="2011_AMC_8_Problems-8";
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
filldraw((-1,-1)--(-1,1)--(1,1)--(1,-1)--cycle,gray,black);
filldraw(Circle((0,0),1), mediumgray,black);
filldraw((-1,0)--(0,1)--(1,0)--(0,-1)--cycle,white,black);
