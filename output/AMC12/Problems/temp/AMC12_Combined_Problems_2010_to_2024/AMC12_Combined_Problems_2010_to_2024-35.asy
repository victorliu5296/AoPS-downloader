if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="AMC12_Combined_Problems_2010_to_2024-35";
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
size(6cm);
filldraw(circle((0,0),2), gray(0.7));
filldraw(arc((0,-1),1,0,180) -- cycle, gray(1.0));
filldraw(arc((-2,-1),1,0,180) -- cycle, gray(1.0));
filldraw(arc((2,-1),1,0,180) -- cycle, gray(1.0));
dot((-3,-1));
label("$A$",(-3,-1),S);
dot((-2,0));
label("$E$",(-2,0),NW);
dot((-1,-1));
label("$B$",(-1,-1),S);
dot((0,0));
label("$F$",(0,0),N);
dot((1,-1));
label("$C$",(1,-1), S);
dot((2,0));
label("$G$", (2,0),NE);
dot((3,-1));
label("$D$", (3,-1), S);
