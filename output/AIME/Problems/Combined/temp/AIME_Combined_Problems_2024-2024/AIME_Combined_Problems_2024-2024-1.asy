if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="AIME_Combined_Problems_2024-2024-1";
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
unitsize(0.3 inch);
draw(ellipse((0,0), 3, 1.75));
draw((-1.2,0.1)..(-0.8,-0.03)..(-0.4,-0.11)..(0,-0.15)..(0.4,-0.11)..(0.8,-0.03)..(1.2,0.1));
draw((-1,0.04)..(-0.5,0.12)..(0,0.16)..(0.5,0.12)..(1,0.04));
draw((0,2.4)--(0,-0.15));
draw((0,-0.15)--(0,-1.75), dashed);
draw((0,-1.75)--(0,-2.25));
draw(ellipse((2,0), 1, 0.9));
draw((2.03,-0.02)--(2.9,-0.4));
