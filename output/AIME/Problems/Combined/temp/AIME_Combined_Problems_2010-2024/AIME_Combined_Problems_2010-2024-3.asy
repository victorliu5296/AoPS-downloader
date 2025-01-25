if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="AIME_Combined_Problems_2010-2024-3";
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
unitsize(6mm);
defaultpen(linewidth(.8pt));
dotfactor = 8;
pathpen=black;

pair A = (0,0);
pair B = 2*dir(54), C = 2*dir(126), D = 2*dir(198), E = 2*dir(270), F = 2*dir(342);
pair G = 3.6*dir(18), H = 3.6*dir(90), I = 3.6*dir(162), J = 3.6*dir(234), K = 3.6*dir(306);
pair M = 6.4*dir(54), N = 6.4*dir(126), O = 6.4*dir(198), P = 6.4*dir(270), L = 6.4*dir(342);
pair[] dotted = {A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P};

D(A--B--H--M);
D(A--C--H--N);
D(A--F--G--L);
D(A--E--K--P);
D(A--D--J--O);
D(B--G--M);
D(F--K--L);
D(E--J--P);
D(O--I--D);
D(C--I--N);
D(L--M--N--O--P--L);

dot(dotted);
