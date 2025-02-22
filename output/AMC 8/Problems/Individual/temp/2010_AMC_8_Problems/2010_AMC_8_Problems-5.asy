if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="2010_AMC_8_Problems-5";
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
import graph; size(7.5cm); real lsf=0.5; pen dps=linewidth(0.7)+fontsize(10); defaultpen(dps); pen ds=black; real xmin=-6.27,xmax=10.01,ymin=-5.65,ymax=10.98; draw(circle((0,0),2)); draw((-3,0)--(3,0),EndArrow(6)); draw((0,-3)--(0,3),EndArrow(6)); draw(shift((0.01,1.42))*xscale(1.41)*yscale(1.41)*arc((0,0),1,179.76,359.76)); draw(shift((-0.01,-1.42))*xscale(1.41)*yscale(1.41)*arc((0,0),1,-0.38,179.62)); draw((-1.4,1.43)--(1.41,1.41)); draw((-1.42,-1.41)--(1.4,-1.42)); label("$ P(-1,1) $",(-2.57,2.17),SE*lsf); label("$ Q(1,1) $",(1.55,2.21),SE*lsf); label("$ R(-1,-1) $",(-2.72,-1.45),SE*lsf); label("$S(1,-1)$",(1.59,-1.49),SE*lsf);
dot((0,0),ds); label("$O$",(-0.24,-0.35),NE*lsf); dot((1.41,1.41),ds); dot((-1.4,1.43),ds); dot((1.4,-1.42),ds); dot((-1.42,-1.41),ds);
clip((xmin,ymin)--(xmin,ymax)--(xmax,ymax)--(xmax,ymin)--cycle);
