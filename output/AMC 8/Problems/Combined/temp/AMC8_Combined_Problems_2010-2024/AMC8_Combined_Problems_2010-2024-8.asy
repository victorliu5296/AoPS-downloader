if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="AMC8_Combined_Problems_2010-2024-8";
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
import graph; size(8.76cm); real lsf=0.5; pen dps=linewidth(0.7)+fontsize(10); defaultpen(dps); pen ds=black; real xmin=-3.58,xmax=10.19,ymin=-4.43,ymax=9.63;
draw((0,0)--(0,8)); draw((0,0)--(8,0)); draw((0,1)--(8,1)); draw((0,2)--(8,2)); draw((0,3)--(8,3)); draw((0,4)--(8,4)); draw((0,5)--(8,5)); draw((0,6)--(8,6)); draw((0,7)--(8,7)); draw((1,0)--(1,8)); draw((2,0)--(2,8)); draw((3,0)--(3,8)); draw((4,0)--(4,8)); draw((5,0)--(5,8)); draw((6,0)--(6,8)); draw((7,0)--(7,8)); label("$1$",(0.95,-0.24),SE*lsf); label("$2$",(1.92,-0.26),SE*lsf); label("$3$",(2.92,-0.31),SE*lsf); label("$4$",(3.93,-0.26),SE*lsf); label("$5$",(4.92,-0.27),SE*lsf); label("$6$",(5.95,-0.29),SE*lsf); label("$7$",(6.94,-0.27),SE*lsf); label("$5$",(-0.49,1.22),SE*lsf); label("$10$",(-0.59,2.23),SE*lsf); label("$15$",(-0.61,3.22),SE*lsf); label("$20$",(-0.61,4.23),SE*lsf); label("$25$",(-0.59,5.22),SE*lsf); label("$30$",(-0.59,6.2),SE*lsf); label("$35$",(-0.56,7.18),SE*lsf); draw((0,0)--(1,1),linewidth(1.6)); draw((1,1)--(2,3),linewidth(1.6)); draw((2,3)--(4,4),linewidth(1.6)); draw((4,4)--(7,7),linewidth(1.6)); label("HOURS",(3.41,-0.85),SE*lsf); label("M",(-1.39,5.32),SE*lsf); label("I",(-1.34,4.93),SE*lsf); label("L",(-1.36,4.51),SE*lsf); label("E",(-1.37,4.11),SE*lsf); label("S",(-1.39,3.7),SE*lsf);
clip((xmin,ymin)--(xmin,ymax)--(xmax,ymax)--(xmax,ymin)--cycle);
