if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="AMC8_Combined_Problems_2010-2024-15";
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
size(0,50);
draw((-1,1)..(-2,2)..(-3,1)..(-2,0)..cycle);
dot((-1,1));
dot((-2,2));
dot((-3,1));
dot((-2,0));
draw((1,0){up}..{left}(0,1));
dot((1,0));
dot((0,1));
draw((0,1){right}..{up}(1,2));
dot((1,2));
draw((1,2){down}..{right}(2,1));
dot((2,1));
draw((2,1){left}..{down}(1,0));
