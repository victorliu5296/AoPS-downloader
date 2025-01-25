if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="AIME_Combined_Problems-30";
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
import graph;
unitsize(0.1cm);

pair A = (0,0);pair B = (70,0);pair C = (70,16);pair D = (0,16);pair E = (3,16);pair F = (90,16);pair G = (90,33);pair H = (3,33);
dot(A^^B^^C^^D^^E^^F^^G^^H);
label("$A$", A, S);label("$B$", B, S);label("$C$", C, N);label("$D$", D, N);label("$E$", E, S);label("$F$", F, S);label("$G$", G, N);label("$H$", H, N);
draw(E--D--A--B--C--E--H--G--F--C);
