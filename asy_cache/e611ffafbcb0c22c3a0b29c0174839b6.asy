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
size(200);
int[] x = {6, 5, 4, 5, 6, 5, 6};
int[] y = {1, 2, 3, 4, 5, 6, 7};
int N = 7;
for (int i = 0; i < 8; ++i) {
for (int j = 0; j < 8; ++j) {
draw((i,j)--(i+1,j)--(i+1,j+1)--(i,j+1)--(i,j));
if ((i+j) % 2 == 0) {
filldraw((i,j)--(i+1,j)--(i+1,j+1)--(i,j+1)--(i,j)--cycle,black);
}
}
}
for (int i = 0; i < N; ++i) {
draw(circle((x[i],y[i])+(0.5,0.5),0.35),grey);
}
label("$P$", (5.5, 0.5));
label("$Q$", (6.5, 7.5));