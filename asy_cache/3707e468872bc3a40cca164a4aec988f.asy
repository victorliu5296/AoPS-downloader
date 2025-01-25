if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);
settings.outformat = "pdf";
settings.render = 0;
settings.prc = false;
import olympiad;
import cse5;
size(8cm);
size(300);
defaultpen(linewidth(0.8)+fontsize(13));
real r = 0.05;
draw((0.9,0)--(3.5,0),EndArrow(size=7));
filldraw((4,2.5)--(7,2.5)--(7,-2.5)--(4,-2.5)--cycle,gray(0.65));
fill(circle((5.5,1.25),0.8),white);
fill(circle((5.5,1.25),0.5),gray(0.65));
fill((4.3,-r)--(6.7,-r)--(6.7,-1-r)--(4.3,-1-r)--cycle,white);
fill((4.3,-1.25+r)--(6.7,-1.25+r)--(6.7,-2.25+r)--(4.3,-2.25+r)--cycle,white);
fill((4.6,-0.25-r)--(6.4,-0.25-r)--(6.4,-0.75-r)--(4.6,-0.75-r)--cycle,gray(0.65));
fill((4.6,-1.5+r)--(6.4,-1.5+r)--(6.4,-2+r)--(4.6,-2+r)--cycle,gray(0.65));
label("$N$",(0.45,0));
draw((7.5,1.25)--(11.25,1.25),EndArrow(size=7));
draw((7.5,-1.25)--(11.25,-1.25),EndArrow(size=7));
label("if $N$ is even",(9.25,1.25),N);
label("if $N$ is odd",(9.25,-1.25),N);
label("$\frac N2$",(12,1.25));
label("$3N+1$",(12.6,-1.25));