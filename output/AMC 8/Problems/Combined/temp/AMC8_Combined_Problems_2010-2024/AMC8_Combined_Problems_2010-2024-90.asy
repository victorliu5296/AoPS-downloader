if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="AMC8_Combined_Problems_2010-2024-90";
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
// Diagram by TheMathGuyd
pair A,B,C;
A=(0,1);
B=(sqrt(3)/2,-1/2);
C=-conj(B);
fill(2B--3B--3C--2C--cycle,grey);
dot(3A);
dot(3B);
dot(3C);
dot(2A);
dot(2B);
dot(2C);
draw(2A--2B--2C--cycle);
draw(3A--3B--3C--cycle);
draw(2A--3A);
draw(2B--3B);
draw(2C--3C);
