if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="AMC8_Combined_Problems_2010-2024-52";
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
draw((0,0)--(3,0));
draw((0,0)--(0,2));
draw((0,2)--(3,2));
draw((3,2)--(3,0));
dot((0,0));
dot((0,2));
dot((3,0));
dot((3,2));
draw((2,0)--(2,2));
draw((0,1)--(2,1));
label("A",(0,0),S);
label("B",(3,0),S);
label("C",(3,2),N);
label("D",(0,2),N);
