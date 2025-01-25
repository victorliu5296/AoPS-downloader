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
size(300);
pen shortdashed=linetype(new real[] {6,6});
for (int i = 2000; i < 9000; i = i + 2000) {
draw((0,i)--(11550,i), linewidth(0.5)+1.5*grey);
label(string(i), (0,i), W);
}
for (int i = 500; i < 9300; i=i+500) {
draw((0,i)--(150,i),linewidth(1.25));
if (i % 2000 == 0) {
draw((0,i)--(250,i),linewidth(1.25));
}
}
int[] data = {8750, 3800, 5000, 2900, 6400, 7500, 4100, 1400, 2600, 1470, 2600, 7100, 4070, 7500, 7000, 8100, 1900, 1600, 5850, 5750};
int data_length = 20;
int r = 550;
for (int i = 0; i < data_length; ++i) {
fill(((i+1)*r,0)--((i+1)*r, data[i])--((i+1)*r,0)--((i+1)*r, data[i])--((i+1)*r,0)--((i+1)*r, data[i])--((i+2)*r-100, data[i])--((i+2)*r-100,0)--cycle, 1.5*grey);
draw(((i+1)*r,0)--((i+1)*r, data[i])--((i+1)*r,0)--((i+1)*r, data[i])--((i+1)*r,0)--((i+1)*r, data[i])--((i+2)*r-100, data[i])--((i+2)*r-100,0));
}
draw((0,4750)--(11450,4750),shortdashed);
label("Cities", (11450*0.5,0), S);
label(rotate(90)*"Population", (0,9000*0.5), 10*W);
draw((0,0)--(0,9300), linewidth(1.25));
draw((0,0)--(11550,0), linewidth(1.25));