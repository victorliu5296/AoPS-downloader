if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="2018_AMC_8_Problems-4";
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
unitsize(2cm);
path box = (-0.5,-0.2)--(-0.5,0.2)--(0.5,0.2)--(0.5,-0.2)--cycle;
draw(box); label("$+$",(0,0));
draw(shift(1,0)*box); label("$-$",(1,0));
draw(shift(2,0)*box); label("$+$",(2,0));
draw(shift(3,0)*box); label("$-$",(3,0));
draw(shift(0.5,0.4)*box); label("$-$",(0.5,0.4));
draw(shift(1.5,0.4)*box); label("$-$",(1.5,0.4));
draw(shift(2.5,0.4)*box); label("$-$",(2.5,0.4));
draw(shift(1,0.8)*box); label("$+$",(1,0.8));
draw(shift(2,0.8)*box); label("$+$",(2,0.8));
draw(shift(1.5,1.2)*box); label("$+$",(1.5,1.2));
