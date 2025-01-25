if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="AMC12_Combined_Problems_2010-2024-32";
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
size(300);
defaultpen(linewidth(0.8));
real r = 0.35;
path P = (0,0)--(0,1)--(1,1)--(1,0), Q = (1,1)--(1+r,1+r);
path Pp = (0,0)--(0,-1)--(1,-1)--(1,0), Qp = (-1,-1)--(-1-r,-1-r);
for(int i=0;i <= 4;i=i+1)
{
draw(shift((4*i,0)) * P);
draw(shift((4*i,0)) * Q);
}
for(int i=1;i <= 4;i=i+1)
{
draw(shift((4*i-2,0)) * Pp);
draw(shift((4*i-1,0)) * Qp);
}
draw((-1,0)--(18.5,0));
