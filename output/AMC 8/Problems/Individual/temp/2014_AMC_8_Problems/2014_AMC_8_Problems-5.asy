if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="2014_AMC_8_Problems-5";
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
size(10cm); pathpen=black; pointpen=black;
D(arc((-2,0),1,300,360));
D(arc((0,0),1,0,180));
D(arc((2,0),1,180,360));
D(arc((4,0),1,0,180));
D(arc((6,0),1,180,240));
D((-1.5,-1)--(5.5,-1));
