if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="AMC8_Combined_Problems_2010-2024-62";
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
// made by SirCalcsALot

size(200);
dotfactor = 10;

pair p1 = (-28,0);
pair p2 = (-111,213);
draw(p1--p2,linewidth(1));

pair p3 = (-160,0);
pair p4 = (-244,213);
draw(p3--p4,linewidth(1));

pair p5 = (-316,0);
pair p6 = (-67,213);
draw(p5--p6,linewidth(1));

pair p7 = (0, 68);
pair p8 = (-350,10);
draw(p7--p8,linewidth(1));

pair p9 = (0, 150);
pair p10 = (-350, 62);
draw(p9--p10,linewidth(1));

pair A = intersectionpoint(p1--p2, p5--p6);
dot("$A$", A, 2*W);

pair B = intersectionpoint(p5--p6, p3--p4);
dot("$B$", B, 2*WNW);

pair C = intersectionpoint(p7--p8, p5--p6);
dot("$C$", C, 1.5*NW);

pair D = intersectionpoint(p3--p4, p7--p8);
dot("$D$", D, 2*NNE);

pair EE = intersectionpoint(p1--p2, p7--p8);
dot("$E$", EE, 2*NNE);

pair F = intersectionpoint(p1--p2, p9--p10);
dot("$F$", F, 2*NNE);
