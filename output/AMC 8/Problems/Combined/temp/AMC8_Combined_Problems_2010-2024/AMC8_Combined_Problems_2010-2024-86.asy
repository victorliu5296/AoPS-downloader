if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="AMC8_Combined_Problems_2010-2024-86";
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
// Credits given to Themathguyd and Kante314
usepackage("mathptmx");
size(10cm);
filldraw((11,4.5)--(171,4.5)--(171,17.5)--(11,17.5)--cycle,mediumgray*0.4 + lightgray*0.6);
draw((11,11)--(171,11),linetype("2 2")+white+linewidth(1.2));
draw((0,0)--(11,0)--(11,22)--(0,22)--cycle);
draw((171,0)--(182,0)--(182,22)--(171,22)--cycle);

draw((31,4.5)--(31,0));
draw((51,4.5)--(51,0));
draw((151,4.5)--(151,0));

label(scale(.85)*rotate(45)*"Water 1", (23,-13.5));
label(scale(.85)*rotate(45)*"Water 2", (43,-13.5));
label(scale(.85)*rotate(45)*"Water 7", (143,-13.5));

filldraw(circle((103,-13.5),.2));
filldraw(circle((98,-13.5),.2));
filldraw(circle((93,-13.5),.2));
filldraw(circle((88,-13.5),.2));
filldraw(circle((83,-13.5),.2));

label(scale(.85)*rotate(90)*"Start", (5.5,11));
label(scale(.85)*rotate(270)*"Finish", (176.5,11));
