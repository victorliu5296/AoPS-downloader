if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="AMC12_Combined_Problems_2010-2024-42";
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
size(350);
defaultpen(linewidth(0.8));
real h1 = 10, r = 3.1, s=0.75;
pair P = (r,h1), Q = (-r,h1), Pp = s * P, Qp = s * Q;
path e = ellipse((0,h1),r,0.9), ep = ellipse((0,h1*s),r*s,0.9);
draw(ellipse(origin,r*(s-0.1),0.8));
fill(ep,gray(0.8));
fill(origin--Pp--Qp--cycle,gray(0.8));
draw((-r,h1)--(0,0)--(r,h1)^^e);
draw(subpath(ep,0,reltime(ep,0.5)),linetype("4 4"));
draw(subpath(ep,reltime(ep,0.5),reltime(ep,1)));
draw(Qp--(0,Qp.y),Arrows(size=8));
draw(origin--(0,12),linetype("4 4"));
draw(origin--(r*(s-0.1),0));
label("$3$",(-0.9,h1*s),N,fontsize(10));

real h2 = 7.5, r = 6, s=0.6, d = 14;
pair P = (d+r-0.05,h2-0.15), Q = (d-r+0.05,h2-0.15), Pp = s * P + (1-s)*(d,0), Qp = s * Q + (1-s)*(d,0);
path e = ellipse((d,h2),r,1), ep = ellipse((d,h2*s+0.09),r*s,1);
draw(ellipse((d,0),r*(s-0.1),0.8));
fill(ep,gray(0.8));
fill((d,0)--Pp--Qp--cycle,gray(0.8));
draw(P--(d,0)--Q^^e);
draw(subpath(ep,0,reltime(ep,0.5)),linetype("4 4"));
draw(subpath(ep,reltime(ep,0.5),reltime(ep,1)));
draw(Qp--(d,Qp.y),Arrows(size=8));
draw((d,0)--(d,10),linetype("4 4"));
draw((d,0)--(d+r*(s-0.1),0));
label("$6$",(d-r/4,h2*s-0.06),N,fontsize(10));
