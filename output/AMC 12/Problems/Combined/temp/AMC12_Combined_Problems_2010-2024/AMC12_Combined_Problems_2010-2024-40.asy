if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="AMC12_Combined_Problems_2010-2024-40";
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
size(140);
fill((1,0)--(3,0)--(4,sqrt(3))--(3,2sqrt(3))--(1,2sqrt(3))--(0,sqrt(3))--cycle,gray(0.4));
fill(arc((2,0),1,180,0)--(2,0)--cycle,white);
fill(arc((3.5,sqrt(3)/2),1,60,240)--(3.5,sqrt(3)/2)--cycle,white);
fill(arc((3.5,3sqrt(3)/2),1,120,300)--(3.5,3sqrt(3)/2)--cycle,white);
fill(arc((2,2sqrt(3)),1,180,360)--(2,2sqrt(3))--cycle,white);
fill(arc((0.5,3sqrt(3)/2),1,240,420)--(0.5,3sqrt(3)/2)--cycle,white);
fill(arc((0.5,sqrt(3)/2),1,300,480)--(0.5,sqrt(3)/2)--cycle,white);
draw((1,0)--(3,0)--(4,sqrt(3))--(3,2sqrt(3))--(1,2sqrt(3))--(0,sqrt(3))--(1,0));
draw(arc((2,0),1,180,0)--(2,0)--cycle);
draw(arc((3.5,sqrt(3)/2),1,60,240)--(3.5,sqrt(3)/2)--cycle);
draw(arc((3.5,3sqrt(3)/2),1,120,300)--(3.5,3sqrt(3)/2)--cycle);
draw(arc((2,2sqrt(3)),1,180,360)--(2,2sqrt(3))--cycle);
draw(arc((0.5,3sqrt(3)/2),1,240,420)--(0.5,3sqrt(3)/2)--cycle);
draw(arc((0.5,sqrt(3)/2),1,300,480)--(0.5,sqrt(3)/2)--cycle);
label("$2$",(3.5,3sqrt(3)/2),NE);
