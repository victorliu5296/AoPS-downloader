if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="AMC12_Combined_Problems_2010-2024-52";
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
size(150);
currentpen = black+1.25bp;
fill((3,2.5)--(3,4.5)--(5.3,4.5)--(5.3,2.5)--cycle,gray);
draw((0,0)--(7,0)--(7,7)--(0,7)--(0,0));
draw((3,0)--(3,4.5));
draw((0,4.5)--(5.3,4.5));
draw((5.3,7)--(5.3,2.5));
draw((7,2.5)--(3,2.5));
