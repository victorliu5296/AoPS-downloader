if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="AMC12_Combined_Problems_2010_to_2024-24";
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
size(100);
pair A, B, C, D, E, F;
A = (0,0);
B = (1,0);
C = (2,0);
D = rotate(60, A)*B;
E = B + D;
F = rotate(60, A)*C;
draw(Circle(A, 0.5));
draw(Circle(B, 0.5));
draw(Circle(C, 0.5));
draw(Circle(D, 0.5));
draw(Circle(E, 0.5));
draw(Circle(F, 0.5));
