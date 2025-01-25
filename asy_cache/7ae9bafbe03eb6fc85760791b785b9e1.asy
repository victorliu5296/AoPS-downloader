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
unitsize(8mm);
for (int i=0; i<7; ++i) {
draw((i,0)--(i,7),gray);
draw((0,i+1)--(7,i+1),gray);
}
draw((1,3)--(2,4)--(2,5)--(3,6)--(4,5)--(5,5)--(6,4)--(5,3)--(5,2)--(4,1)--(3,2)--(2,2)--cycle,black+2bp);