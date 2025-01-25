if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="AMC8_Combined_Problems_2010-2024-16";
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
draw((0,2)--(2,2)--(2,0)--(0,0)--cycle);
draw((0,0.3)--(0.3,2)--(2,1.7)--(1.7,0)--cycle);
label("$a$",(-0.1,0.15));
label("$b$",(-0.1,1.15));
