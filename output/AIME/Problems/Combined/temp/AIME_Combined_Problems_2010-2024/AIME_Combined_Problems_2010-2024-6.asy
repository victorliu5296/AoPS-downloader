if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="AIME_Combined_Problems_2010-2024-6";
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
import cse5;
size(12cm);
pen tpen = defaultpen + 1.337;
real a = 39/5.0;
real b = 39/7.0;
pair B = MP("B", (0,0), dir(200));
pair A = MP("A", (9,0), dir(-80));
pair C = MP("C", (12,0), dir(-20));
pair K = (6,10.392);
pair M = (a*B+(12-a)*K) / 12;
pair N = (b*C+(12-b)*K) / 12;
draw(B--M--N--C--cycle, tpen);
draw(M--A--N--cycle);
fill(M--A--N--cycle, mediumgrey);
pair shift = (-20.13, 0);
pair B1 = MP("B", B+shift, dir(200));
pair A1 = MP("A", K+shift, dir(90));
pair C1 = MP("C", C+shift, dir(-20));
draw(A1--B1--C1--cycle, tpen);
