if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="AMC8_Combined_Problems_2010-2024-22";
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
pair A,B;
size(8cm);
A=(0,0);
B=(480,0);
draw((0,0)--(480,0),linetype("3 4"));
filldraw(circle((8,0),8),black);
draw((0,0)..(100,-100)..(200,0));
draw((200,0)..(260,60)..(320,0));
draw((320,0)..(400,-80)..(480,0));
draw((100,0)--(150,-50sqrt(3)),Arrow(size=4));
draw((260,0)--(290,30sqrt(3)),Arrow(size=4));
draw((400,0)--(440,-40sqrt(3)),Arrow(size=4));
label("$A$", A, SW);
label("$B$", B, SE);
label("$R_1$", (100,-40), W);
label("$R_2$", (260,40), SW);
label("$R_3$", (400,-40), W);
