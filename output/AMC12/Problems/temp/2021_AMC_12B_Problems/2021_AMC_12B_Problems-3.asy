if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="2021_AMC_12B_Problems-3";
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
unitsize(4mm); real[] boxes = {0,1,2,3,5,6,13,14,15,17,18,21,22,24,26,27,30,31,32,33}; for(real i:boxes){ draw(box((i,0),(i+1,3))); } draw((8,1.5)--(12,1.5),Arrow()); defaultpen(fontsize(20pt)); label(",",(20,0)); label(",",(29,0)); label(",...",(35.5,0));
