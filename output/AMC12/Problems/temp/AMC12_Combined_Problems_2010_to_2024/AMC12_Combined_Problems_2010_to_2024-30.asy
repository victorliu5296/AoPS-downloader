if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="AMC12_Combined_Problems_2010_to_2024-30";
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
unitsize(12);
pair A = (0, 8/sqrt(3)), B = rotate(-120)*A, C = rotate(120)*A;
real theta = 41.5;
pair P1 = rotate(theta)*(2+2*sqrt(7/3), 0), P2 = rotate(-120)*P1, P3 = rotate(120)*P1;
filldraw(P1--P2--P3--cycle, gray(0.9));
draw(Circle(A, 4));
draw(Circle(B, 4));
draw(Circle(C, 4));
dot(P1);
dot(P2);
dot(P3);
defaultpen(fontsize(10pt));
label("$P_1$", P1, E*1.5);
label("$P_2$", P2, SW*1.5);
label("$P_3$", P3, N);
label("$\omega_1$", A, W*17);
label("$\omega_2$", B, E*17);
label("$\omega_3$", C, W*17);
