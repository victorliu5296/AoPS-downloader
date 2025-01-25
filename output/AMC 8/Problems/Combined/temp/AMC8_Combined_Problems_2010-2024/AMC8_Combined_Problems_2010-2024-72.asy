if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="AMC8_Combined_Problems_2010-2024-72";
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
//diagram by pog give me 1 billion dollars for this
size(6cm);
usepackage("mathptmx");
filldraw(arc((0,0), r=4, angle1=0, angle2=90)--(0,0)--cycle,mediumgray*0.5+gray*0.5);
filldraw(arc((0,0), r=4, angle1=90, angle2=180)--(0,0)--cycle,lightgray);
filldraw(arc((0,0), r=4, angle1=180, angle2=270)--(0,0)--cycle,mediumgray);
filldraw(arc((0,0), r=4, angle1=270, angle2=360)--(0,0)--cycle,lightgray*0.5+mediumgray*0.5);
label("$5$", (-1.5,1.7));
label("$6$", (1.5,1.7));
label("$7$", (1.5,-1.7));
label("$8$", (-1.5,-1.7));
label("Spinner A", (0, -5.5));
filldraw(arc((12,0), r=4, angle1=0, angle2=90)--(12,0)--cycle,mediumgray*0.5+gray*0.5);
filldraw(arc((12,0), r=4, angle1=90, angle2=180)--(12,0)--cycle,lightgray);
filldraw(arc((12,0), r=4, angle1=180, angle2=270)--(12,0)--cycle,mediumgray);
filldraw(arc((12,0), r=4, angle1=270, angle2=360)--(12,0)--cycle,lightgray*0.5+mediumgray*0.5);
label("$1$", (10.5,1.7));
label("$2$", (13.5,1.7));
label("$3$", (13.5,-1.7));
label("$4$", (10.5,-1.7));
label("Spinner B", (12, -5.5));
