if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="AMC8_Combined_Problems_2010-2024-92";
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
size(2cm);

fill((1,0)--(0,1)--(0,2)--(1,1)--cycle,mediumgray);
fill((2,0)--(3,1)--(2,2)--(1,1)--cycle,mediumgray);
fill((1,2)--(1,3)--(0,3)--cycle,mediumgray);
fill((1,2)--(2,2)--(2,3)--cycle,mediumgray);
fill((3,2)--(3,3)--(2,3)--cycle,mediumgray);

draw((0,0)--(3,0)--(3,3)--(0,3)--cycle,gray);
draw((1,0)--(1,3)--(2,3)--(2,0),gray);
draw((0,1)--(3,1)--(3,2)--(0,2),gray);
