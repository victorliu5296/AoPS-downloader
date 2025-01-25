if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="AIME_2015_II_Problems-2";
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
import cse5;
pathpen=black; pointpen=black;
size(6cm);

pair E = IP(L((-.2476,1.9689),(0.8,1.6),-3,5.5),CR((4,4),4)), D = (-.2476,1.9689);

filldraw(D--(0.8,1.6)--(0,0)--cycle,gray(0.7));
filldraw(E--(0.8,1.6)--(4,0)--cycle,gray(0.7));
D(CR((0,1),1)); D(CR((4,4),4,150,390));
D(L(MP("D",D(D),N),MP("A",D((0.8,1.6)),NE),1,5.5));
D((-1.2,0)--MP("B",D((0,0)),S)--MP("C",D((4,0)),S)--(8,0));
D(MP("E",E,N));
