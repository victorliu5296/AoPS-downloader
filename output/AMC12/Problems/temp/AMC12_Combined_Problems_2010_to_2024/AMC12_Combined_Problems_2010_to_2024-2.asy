if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="AMC12_Combined_Problems_2010_to_2024-2";
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
unitsize(4mm);
defaultpen(linewidth(.8pt));

draw((0,0)--(5,0)--(5,2)--(2,2)--(2,8)--(0,8)--cycle);
label("8",(0,4),W);
label("5",(5/2,0),S);
label("2",(5,1),E);
label("2",(1,8),N);
