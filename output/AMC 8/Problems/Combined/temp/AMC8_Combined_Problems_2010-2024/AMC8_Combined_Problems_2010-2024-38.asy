if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="AMC8_Combined_Problems_2010-2024-38";
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
draw((-1,0)--(0,0)--(0,1));
draw((0,0)--(0.309, -0.951));
filldraw(arc((0,0), (0,1), (-1,0))--(0,0)--cycle, lightgray);
filldraw(arc((0,0), (0.309, -0.951), (0,1))--(0,0)--cycle, gray);
draw(arc((0,0), (-1,0), (0.309, -0.951)));
label("Colby", (-0.5, 0.5));
label("25\%", (-0.5, 0.3));
label("Alicia", (0.7, 0.2));
label("45\%", (0.7, 0));
label("Brenda", (-0.5, -0.4));
label("30\%", (-0.5, -0.6));
