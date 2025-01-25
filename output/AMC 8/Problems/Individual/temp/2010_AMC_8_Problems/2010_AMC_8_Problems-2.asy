if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="2010_AMC_8_Problems-2";
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
import graph; size(300);
real lsf = 0.5;
pen dp = linewidth(0.7) + fontsize(10);
defaultpen(dp);
pen ds = black;
pen xdxdff = rgb(0.49,0.49,1);
draw((0,0)--(6,0),linewidth(1.2pt));
draw((0,0)--(0,1),linewidth(1.2pt));
draw((0,1)--(1,1),linewidth(1.2pt));
draw((1,1)--(1,2),linewidth(1.2pt));
draw((1,2)--(5,2),linewidth(1.2pt));
draw((5,2)--(5,1),linewidth(1.2pt));
draw((5,1)--(6,1),linewidth(1.2pt));
draw((6,1)--(6,0),linewidth(1.2pt));
draw((1,1)--(5,1),linewidth(1.2pt));
draw((1,1)--(1,0),linewidth(1.2pt));
draw((2,2)--(2,0),linewidth(1.2pt));
draw((3,2)--(3,0),linewidth(1.2pt));
draw((4,2)--(4,0),linewidth(1.2pt));
draw((5,1)--(5,0),linewidth(1.2pt));
draw((0,0)--(5,1.5),linewidth(1.2pt));
dot((0,0),ds); label("$P$", (-0.23,-0.26),NE*lsf);
dot((0,1),ds);
dot((1,1),ds);
dot((1,2),ds);
dot((5,2),ds);
label("$X$", (5.14,2.02),NE*lsf); dot((5,1),ds);
label("$Y$", (5.12,1.14),NE*lsf); dot((6,1),ds);
dot((6,0),ds); dot((1,0),ds); dot((2,0),ds); dot((3,0),ds);
dot((4,0),ds); dot((5,0),ds); dot((2,2),ds); dot((3,2),ds);
dot((4,2),ds); dot((5,1.5),ds);
label("$Q$", (5.14,1.51),NE*lsf);
clip((-4.19,-5.52)--(-4.19,6.5)--(10.08,6.5)--(10.08,-5.52)--cycle);
