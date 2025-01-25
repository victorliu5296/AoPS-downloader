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
import olympiad;
unitsize(25);
filldraw((1,3)--(1,4)--(2,4)--(2,3)--cycle, gray(0.7));
filldraw((2,1)--(2,2)--(3,2)--(3,1)--cycle, gray(0.7));
filldraw((4,0)--(5,0)--(5,1)--(4,1)--cycle, gray(0.7));
for (int i = 0; i < 5; ++i) {
for (int j = 0; j < 6; ++j) {
pair A = (j,i);
}
}
for (int i = 0; i < 5; ++i) {
for (int j = 0; j < 6; ++j) {
if (j != 5) {
draw((j,i)--(j+1,i));
}
if (i != 4) {
draw((j,i)--(j,i+1));
}
}
}