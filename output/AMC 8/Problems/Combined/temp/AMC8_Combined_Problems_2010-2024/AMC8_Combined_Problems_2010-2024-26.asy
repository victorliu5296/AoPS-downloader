if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="AMC8_Combined_Problems_2010-2024-26";
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
draw((0,0)--(5,0)--(5,3)--(0,3)--(0,0));
draw(Circle((0,0),1));
draw(Circle((0,3),2));
draw(Circle((5,3),3));
label("A",(0.2,0),W);
label("B",(0.2,2.8),NW);
label("C",(4.8,2.8),NE);
label("D",(5,0),SE);
label("5",(2.5,0),N);
label("3",(5,1.5),E);
