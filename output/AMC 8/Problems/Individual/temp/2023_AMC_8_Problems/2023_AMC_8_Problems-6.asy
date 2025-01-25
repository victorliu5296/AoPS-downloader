if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="2023_AMC_8_Problems-6";
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
// Diagram by TheMathGuyd. Found cubic, so graph is perfect.
import graph;
size(8cm);
int i;
for(i=1; i<9; i=i+1)
{
draw((-0.2,2i-1)--(16.2,2i-1), mediumgrey);
draw((2i-1,-0.2)--(2i-1,16.2), mediumgrey);
draw((-0.2,2i)--(16.2,2i), grey);
draw((2i,-0.2)--(2i,16.2), grey);
}
Label f;
f.p=fontsize(6);
xaxis(-0.5,17.8,Ticks(f, 2.0),Arrow());
yaxis(-0.5,17.8,Ticks(f, 2.0),Arrow());
real f(real x)
{
return -0.03125 x^(3) + 0.75x^(2) - 5.125 x + 14.5;
}
draw(graph(f,0,15.225),currentpen+1);
real dpt=2;
real ts=0.75;
transform st=scale(ts);
label(rotate(90)*st*"Elevation (meters)",(-dpt,8));
label(st*"Time (seconds)",(8,-dpt));
