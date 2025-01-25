if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="AMC8_Combined_Problems_2010-2024-70";
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
size(12.5cm);
draw((-1,0)--(1,0)); draw((0,-1)--(0,1)); label(rotate(90)*"$\textbf{\textsf{M}}$",(0.6,-0.25));
draw((-0.8,-0.8)--(0.8,0.8),linewidth(1.1));
label("$\textbf{(A)}$",(-1,1),W);
draw((2,0)--(4,0)); draw((3,-1)--(3,1)); label(rotate(270)*"$\textbf{\textsf{M}}$",(2.8,0.7));
draw((2.2,-0.8)--(3.8,0.8),linewidth(1.1));
label("$\textbf{(B)}$",(2,1),W);
draw((5,0)--(7,0)); draw((6,-1)--(6,1)); label(rotate(90)*"$\textbf{\textsf{M}}$",(5.4,0.2));
draw((5.2,-0.8)--(6.8,0.8),linewidth(1.1));
label("$\textbf{(C)}$",(5,1),W);
draw((-1,-2.5)--(1,-2.5)); draw((0,-3.5)--(0,-1.5)); label(rotate(180)*"$\textbf{\textsf{M}}$",(-0.25,-3.1));
draw((-0.8,-3.3)--(0.8,-1.7),linewidth(1.1));
label("$\textbf{(D)}$",(-1,-1.5),W);
draw((2,-2.5)--(4,-2.5)); draw((3,-3.5)--(3,-1.5)); label(rotate(270)*"$\textbf{\textsf{M}}$",(3.6,-2.75));
draw((2.2,-3.3)--(3.8,-1.7),linewidth(1.1));
label("$\textbf{(E)}$",(2,-1.5),W);
