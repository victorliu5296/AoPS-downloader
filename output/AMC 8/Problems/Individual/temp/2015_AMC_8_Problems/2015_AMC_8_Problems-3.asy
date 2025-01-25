if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="2015_AMC_8_Problems-3";
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
size(3.85cm); label("$X$",(2.5,2.1),N); for (int i=0; i<=5; ++i) draw((i,0)--(i,5), linewidth(.5)); for (int j=0; j<=5; ++j) draw((0,j)--(5,j), linewidth(.5)); void draw_num(pair ll_corner, int num) { label(string(num), ll_corner + (0.5, 0.5), p = fontsize(19pt)); } draw_num((0,0), 17); draw_num((4, 0), 81); draw_num((0, 4), 1); draw_num((4,4), 25); void foo(int x, int y, string n) { label(n, (x+0.5,y+0.5), p = fontsize(19pt)); } foo(2, 4, " "); foo(3, 4, " "); foo(0, 3, " "); foo(2, 3, " "); foo(1, 2, " "); foo(3, 2, " "); foo(1, 1, " "); foo(2, 1, " "); foo(3, 1, " "); foo(4, 1, " "); foo(2, 0, " "); foo(3, 0, " "); foo(0, 1, " "); foo(0, 2, " "); foo(1, 0, " "); foo(1, 3, " "); foo(1, 4, " "); foo(3, 3, " "); foo(4, 2, " "); foo(4, 3, " ");
