if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="AMC12_Combined_Problems_2010_to_2024-60";
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
size(200);
defaultpen(linewidth(0.6pt)+fontsize(10pt));
real y = sqrt(3);
pair A,B,C,D,E,F,G,H;
A = (0,0);
B = (0,y);
C = (y,y);
D = (y,0);
E = ((y + 1)/2,y);
F = (y, (y - 1)/2);
G = ((y - 1)/2, 0);
H = (0,(y + 1)/2);
fill(H--B--E--cycle, gray);
draw(A--B--C--D--cycle);
draw(E--F--G--H--cycle);
