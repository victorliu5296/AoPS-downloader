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
import olympiad;
import cse5;
draw(Circle((0,0), 4));
draw(Circle((0,0), 3));
draw((0,4)--(0,3));
draw((0,-4)--(0,-3));
draw((-2.598, 1.5)--(-3.4641, 2));
draw((-2.598, -1.5)--(-3.4641, -2));
draw((2.598, -1.5)--(3.4641, -2));
draw((2.598, 1.5)--(3.4641, 2));