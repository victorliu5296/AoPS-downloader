if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="AMC8_Combined_Problems_2010-2024-17";
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
unitsize(0.8cm);
draw((-1,0)--(1,0)--(1,-2)--(-1,-2)--cycle);
draw((-2,0)--(0,0)--(0,2)--(-2,2)--cycle);
draw((0,0)--(2,0)--(2,2)--(0,2)--cycle);
draw((-3,2)--(-1,2)--(-1,4)--(-3,4)--cycle);
draw((-1,2)--(1,2)--(1,4)--(-1,4)--cycle);
draw((1,2)--(1,4)--(3,4)--(3,2)--cycle);
label("600",(0,-1));
label("30",(-1,1));
label("6",(-2,3));
label("5",(0,3));
