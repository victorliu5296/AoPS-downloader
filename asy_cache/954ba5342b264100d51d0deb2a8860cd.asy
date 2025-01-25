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
size(175);
void ds(pair p) {
filldraw((0.5,0.5)+p--(-0.5,0.5)+p--(-0.5,-0.5)+p--(0.5,-0.5)+p--cycle,mediumgrey);
}
ds((0.5,4.5));
ds((1.5,3.5));
ds((3.5,1.5));
ds((4.5,0.5));
add(grid(7,7,grey+linewidth(1.25)));
int adj = 1;
int curUp = 2;
int curLeft = 4;
int curDown = 6;
label("$1$",(3.5,3.5));
for (int len = 3; len<=3; len+=2)
{
for (int i=1; i<=len-1; ++i)
{
label("$"+string(curUp)+"$",(3.5+adj,3.5-adj+i));
label("$"+string(curLeft)+"$",(3.5+adj-i,3.5+adj));
label("$"+string(curDown)+"$",(3.5-adj,3.5+adj-i));
++curDown;
++curLeft;
++curUp;
}
++adj;
curUp = len^2 + 1;
curLeft = len^2 + len + 2;
curDown = len^2 + 2*len + 3;
}
draw((4,4)--(3,4)--(3,3)--(5,3)--(5,5)--(2,5)--(2,2)--(6,2)--(6,6)--(1,6)--(1,1)--(7,1)--(7,7)--(0,7)--(0,0)--(7,0),linewidth(2));