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
for (int i = 0; i < 3; ++i) {
for (int j = 0; j < 9; ++j) {
pair A = (j,i);
}
}
for (int i = 0; i < 3; ++i) {
for (int j = 0; j < 9; ++j) {
if (j != 8) {
draw((j,i)--(j+1,i), dashed);
}
if (i != 2) {
draw((j,i)--(j,i+1), dashed);
}
}
}
draw((0,0)--(2,2),linewidth(2));
draw((2,0)--(2,2),linewidth(2));
draw((1,1)--(2,1),linewidth(2));
draw((3,0)--(3,2),linewidth(2));
draw((5,0)--(5,2),linewidth(2));
draw((4,1)--(3,2),linewidth(2));
draw((4,1)--(5,2),linewidth(2));
draw((6,0)--(8,0),linewidth(2));
draw((6,2)--(8,2),linewidth(2));
draw((6,0)--(6,2),linewidth(2));