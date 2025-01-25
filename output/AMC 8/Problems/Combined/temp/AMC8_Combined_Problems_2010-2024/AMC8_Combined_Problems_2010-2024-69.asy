if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="AMC8_Combined_Problems_2010-2024-69";
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
// pog diagram
usepackage("newtxtext");
size(3cm);
draw((-1,0)--(1,0)); draw((0,-1)--(0,1)); label("$\textbf{\textsf{M}}$",(0.25,0.6));
draw((-0.8,-0.8)--(0.8,0.8),linewidth(1.1)); label("$p$", (-1,0),NE); label("$q$", (-0.75,-0.75), N*1.5);
