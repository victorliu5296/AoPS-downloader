if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="2019_AMC_8_Problems-3";
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
draw((0,0)--(0,8));
draw((0,8)--(8,8));
draw((8,8)--(8,0));
draw((8,0)--(0,0));
dot((0,0));
dot((0,1));
dot((0,2));
dot((0,3));
dot((0,4));
dot((0,5));
dot((0,6));
dot((0,7));
dot((0,8));

dot((1,0));
dot((1,1));
dot((1,2));
dot((1,3));
dot((1,4));
dot((1,5));
dot((1,6));
dot((1,7));
dot((1,8));

dot((2,0));
dot((2,1));
dot((2,2));
dot((2,3));
dot((2,4));
dot((2,5));
dot((2,6));
dot((2,7));
dot((2,8));

dot((3,0));
dot((3,1));
dot((3,2));
dot((3,3));
dot((3,4));
dot((3,5));
dot((3,6));
dot((3,7));
dot((3,8));

dot((4,0));
dot((4,1));
dot((4,2));
dot((4,3));
dot((4,4));
dot((4,5));
dot((4,6));
dot((4,7));
dot((4,8));

dot((5,0));
dot((5,1));
dot((5,2));
dot((5,3));
dot((5,4));
dot((5,5));
dot((5,6));
dot((5,7));
dot((5,8));

dot((6,0));
dot((6,1));
dot((6,2));
dot((6,3));
dot((6,4));
dot((6,5));
dot((6,6));
dot((6,7));
dot((6,8));

dot((7,0));
dot((7,1));
dot((7,2));
dot((7,3));
dot((7,4));
dot((7,5));
dot((7,6));
dot((7,7));
dot((7,8));

dot((8,0));
dot((8,1));
dot((8,2));
dot((8,3));
dot((8,4));
dot((8,5));
dot((8,6));
dot((8,7));
dot((8,8));
label("P",(4,4),NE);
