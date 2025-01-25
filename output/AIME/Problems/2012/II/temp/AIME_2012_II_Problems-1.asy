if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="AIME_2012_II_Problems-1";
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
pair S1 = (20, 20), S2 = (-20, 20), S3 = (-20, -20), S4 = (20, -20);
pair M1 = (S1+S2)/2, M2 = (S2+S3)/2, M3=(S3+S4)/2, M4=(S4+S1)/2;
pair Sp1 = (7.5, 7.5), Sp2=(-7.5, 7.5), Sp3 = (-7.5, -7.5), Sp4 = (7.5, -7.5);

draw(S1--S2--S3--S4--cycle);
draw(Sp1--Sp2--Sp3--Sp4--cycle);
draw(Sp1--M1--Sp2--M2--Sp3--M3--Sp4--M4--cycle);
