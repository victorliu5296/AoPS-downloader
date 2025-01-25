if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="AMC8_Combined_Problems_2010-2024-77";
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
//diagram by kante314
size(3.3cm);
defaultpen(linewidth(1));
real r = 0.37;
path equi = r * dir(-30) -- (r+0.03) * dir(90) -- r * dir(210) -- cycle;
draw((0,0)--(0,3)--(3,3)--(3,0)--cycle);
draw((0,1)--(3,1)--(3,2)--(0,2)--cycle);
draw((1,0)--(1,3)--(2,3)--(2,0)--cycle);
draw(circle((3/2,5/2),1/3));
draw(circle((5/2,1/2),1/3));
draw(circle((3/2,3/2),1/3));
draw(shift(0.5,0.38) * equi);
draw(shift(1.5,0.38) * equi);
draw(shift(0.5,1.38) * equi);
draw(shift(2.5,1.38) * equi);
draw(shift(0.5,2.38) * equi);
draw(shift(2.5,2.38) * equi);
