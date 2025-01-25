if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="AMC12_Combined_Problems_2010-2024-15";
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
fill((0,0)--(2,0)--(2,26)--(0,26)--cycle,gray);
fill((6,0)--(8,0)--(8,26)--(6,26)--cycle,gray);
fill((12,0)--(14,0)--(14,26)--(12,26)--cycle,gray);
fill((18,0)--(20,0)--(20,26)--(18,26)--cycle,gray);
fill((24,0)--(26,0)--(26,26)--(24,26)--cycle,gray);
fill((0,0)--(26,0)--(26,2)--(0,2)--cycle,gray);
fill((0,12)--(26,12)--(26,14)--(0,14)--cycle,gray);
fill((0,24)--(26,24)--(26,26)--(0,26)--cycle,gray);
