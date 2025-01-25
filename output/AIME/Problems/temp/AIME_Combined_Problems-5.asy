if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="AIME_Combined_Problems-5";
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
draw((0,0)--(1,0)--(1,1)--(0,1)--(0,0));
draw((2,0)--(2,2)--(3,2)--(3,0)--(3,1)--(2,1)--(4,1)--(4,0)--(2,0));
draw((1,2)--(1,4)--(0,4)--(0,2)--(0,3)--(1,3)--(-1,3)--(-1,2)--(1,2));
draw((-1,1)--(-3,1)--(-3,0)--(-1,0)--(-2,0)--(-2,1)--(-2,-1)--(-1,-1)--(-1,1));
draw((0,-1)--(0,-3)--(1,-3)--(1,-1)--(1,-2)--(0,-2)--(2,-2)--(2,-1)--(0,-1));
size(100);
