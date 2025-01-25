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
size(5.5cm); draw((0,0)--(0,2)--(2,2)--(2,0)--cycle); draw((2,0)--(8,0)--(8,2)--(2,2)--cycle); draw((8,0)--(12,0)--(12,2)--(8,2)--cycle); draw((0,2)--(6,2)--(6,4)--(0,4)--cycle); draw((6,2)--(12,2)--(12,4)--(6,4)--cycle);
