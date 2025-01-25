if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="AMC12_Combined_Problems_2010-2024-60";
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
import geometry;
unitsize(3cm);
draw((0,0) -- (1,0) -- (1,1) -- (0,1) -- cycle);
draw(shift((1/2,1-sqrt(3)/2))*polygon(6));
draw(shift((1/2,sqrt(3)/2))*polygon(6));
draw(shift((sqrt(3)/2,1/2))*rotate(90)*polygon(6));
draw(shift((1-sqrt(3)/2,1/2))*rotate(90)*polygon(6));
draw((0,1-sqrt(3))--(1,1-sqrt(3))--(3-sqrt(3),sqrt(3)-2)--(sqrt(3),0)--(sqrt(3),1)--(3-sqrt(3),3-sqrt(3))--(1,sqrt(3))--(0,sqrt(3))--(sqrt(3)-2,3-sqrt(3))--(1-sqrt(3),1)--(1-sqrt(3),0)--(sqrt(3)-2,sqrt(3)-2)--cycle,linewidth(2));
