if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="AMC8_Combined_Problems_2010-2024-53";
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
draw((-13,0)--(0,5));
draw((0,5)--(13,0));
draw((13,0)--(0,-5));
draw((0,-5)--(-13,0));
dot((-13,0));
dot((0,5));
dot((13,0));
dot((0,-5));
label("A",(-13,0),W);
label("B",(0,5),N);
label("C",(13,0),E);
label("D",(0,-5),S);
