if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="AMC8_Combined_Problems_2010-2024-91";
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
size(5.663333333cm);
draw((0,0)--(3,0)--(3,3)--(0,3)--cycle,gray);
draw((1,0)--(1,3)--(2,3)--(2,0),gray);
draw((0,1)--(3,1)--(3,2)--(0,2),gray);

fill((6,.33)--(7,.33)--(7,1.33)--cycle,mediumgray);
draw((6,.33)--(7,.33)--(7,1.33)--(6,1.33)--cycle,gray);
fill((6,1.67)--(7,2.67)--(6,2.67)--cycle,mediumgray);
draw((6,1.67)--(7,1.67)--(7,2.67)--(6,2.67)--cycle,gray);
fill((7.33,.33)--(8.33,.33)--(7.33,1.33)--cycle,mediumgray);
draw((7.33,.33)--(8.33,.33)--(8.33,1.33)--(7.33,1.33)--cycle,gray);
fill((8.33,1.67)--(8.33,2.67)--(7.33,2.67)--cycle,mediumgray);
draw((7.33,1.67)--(8.33,1.67)--(8.33,2.67)--(7.33,2.67)--cycle,gray);
