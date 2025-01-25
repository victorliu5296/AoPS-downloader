if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="AMC12_Combined_Problems_2010_to_2024-23";
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
size(5cm);
draw(arc((0,0),3,0,180));
draw(arc((2,0),1,0,180));
draw(arc((-1,0),2,0,180));
draw((-3,0)--(3,0));
pair P = (-1,0)+(2+6/7)*dir(36.86989);
draw(circle(P,6/7));
dot((-1,0)); dot((2,0)); dot(P);
