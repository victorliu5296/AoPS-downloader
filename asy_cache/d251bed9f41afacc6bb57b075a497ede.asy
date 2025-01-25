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
size(8cm);
void drawbar(real x, real h) {
fill((x-0.15,0.5)--(x+0.15,0.5)--(x+0.15,h)--(x-0.15,h)--cycle,gray);
}
draw((0.5,0.5)--(7.5,0.5)--(7.5,5)--(0.5,5)--cycle);
for (real i=1; i<5; i=i+0.5) {
draw((0.5,i)--(7.5,i),gray);
}
drawbar(1.0,1.0);
drawbar(2.0,2.0);
drawbar(3.0,1.5);
drawbar(4.0,3.5);
drawbar(5.0,4.5);
drawbar(6.0,2.0);
drawbar(7.0,1.5);
for (int i=1; i<8; ++i) {
label("$"+string(i)+"$",(i,0.25));
}
for (int i=1; i<9; ++i) {
label("$"+string(i)+"$",(0.5,0.5*(i+1)),W);
}
label("Number of Days of Exercise",(4,-0.1));
label(rotate(90)*"Number of Students",(-0.1,2.75));