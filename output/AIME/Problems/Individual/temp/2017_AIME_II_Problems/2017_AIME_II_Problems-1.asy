if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="2017_AIME_II_Problems-1";
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
draw(Circle((0,0),125));
draw(Circle((25,0),100));
draw(Circle((25,20),80));
draw(Circle((9,20),64));
dot((125,0));
label("$A_0$",(125,0),E);
dot((25,100));
label("$A_1$",(25,100),SE);
dot((-55,20));
label("$A_2$",(-55,20),E);
