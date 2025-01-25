if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="AMC12_Combined_Problems_2010-2024-43";
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
/* Made by samrocksnature */ pair A=(-2.4638,4.10658); pair B=(-4,2.6567453480756127); pair C=(-3.47132,0.6335248637894945); pair D=(-1.464483379039766,0.6335248637894945); pair E=(-0.956630463955801,2.6567453480756127); pair F=(-2,2); pair G=(-3,2); draw(A--B--C--D--E--A); draw(A--F--A--G); draw(B--F--C); draw(E--G--D); label("A",A,N); label("B",B,W); label("C",C,W); label("D",D,dir(0)); label("E",E,dir(0)); dot(A^^B^^C^^D^^E^^F^^G);
