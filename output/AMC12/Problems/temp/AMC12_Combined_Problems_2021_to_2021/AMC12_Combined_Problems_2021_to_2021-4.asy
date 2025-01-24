if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="AMC12_Combined_Problems_2021_to_2021-4";
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
size(200);
defaultpen(linewidth(0.4)+fontsize(12));
pen s = linewidth(0.8)+fontsize(8);

pair O,X,Y;
O = origin;
X = (6,0);
Y = (0,5);
fill((1,0)--(3,5)--(5,0)--(3,2)--cycle, palegray+opacity(0.2));
for (int i=1; i<7; ++i)
{
draw((i,0)--(i,5), gray+dashed);
label("${"+string(i)+"}$", (i,0), 2*S);
if (i<6)
{
draw((0,i)--(6,i), gray+dashed);
label("${"+string(i)+"}$", (0,i), 2*W);
}
}
label("$0$", O, 2*SW);
draw(O--X+(0.35,0), black+1.5, EndArrow(10));
draw(O--Y+(0,0.35), black+1.5, EndArrow(10));
draw((1,0)--(3,5)--(5,0)--(3,2)--(1,0), black+1.5);
