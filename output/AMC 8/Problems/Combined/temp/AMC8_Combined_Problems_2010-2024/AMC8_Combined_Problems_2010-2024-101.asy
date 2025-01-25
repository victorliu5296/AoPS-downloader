if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="AMC8_Combined_Problems_2010-2024-101";
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
/* AMC8 P22 2024, revised by Teacher David */
size(150);

pair o = (0,0);
real r1 = 1;
real r2 = 2;

filldraw(circle(o, r2), mediumgray, linewidth(1pt));
filldraw(circle(o, r1), white, linewidth(1pt));

draw((-2,-2.6)--(-2,-2.4));
draw((2,-2.6)--(2,-2.4));
draw((-2,-2.5)--(2,-2.5), L=Label("4 in."));

draw((-1,0)--(1,0), L=Label("2 in.", align=(0,1)), arrow=Arrows());

draw((2,0)--(2,-1.3), linewidth(1pt));
