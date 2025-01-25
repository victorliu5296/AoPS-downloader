if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="2023_AMC_8_Problems-7";
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
size(6cm);
draw(circle((3,3),3));
filldraw(circle((2,3),2),lightgrey);
filldraw(circle((3,3),1),white);
filldraw(circle((1,3),1),white);
filldraw(circle((5.5,3),0.5),lightgrey);
filldraw(circle((4.5,4.5),0.5),lightgrey);
filldraw(circle((4.5,1.5),0.5),lightgrey);
int i, j;
for(i=0; i<7; i=i+1)
{
draw((0,i)--(6,i), dashed+grey);
draw((i,0)--(i,6), dashed+grey);
}
