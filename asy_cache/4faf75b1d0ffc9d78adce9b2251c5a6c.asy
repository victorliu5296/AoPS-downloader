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
size(13cm);
pair C=midpoint((-0.5,0.5)--(-0.6,0.05));
draw((-0.5,0.5)--(-0.6,0.05));
draw((-0.64,0.16)--(-0.7,0.2)--C--(-0.47,0.2)--(-0.4,0.22));
draw((-0.6,0.05)--(-0.55,-0.1)--(-0.57,-0.25));
draw((-0.6,0.05)--(-0.68,-0.12)--(-0.8,-0.20));
filldraw(circle((-0.5,0.5),0.1),white,black);
int i;
real d,s;
d=0.2; s=1-2*d;
for(i=0; i<10; i=i+1)
{
filldraw((i+d,d)--(i+1-d,d)--(i+1-d,1-d)--(i+d,1-d)--cycle, lightgrey, black);
filldraw(conj((i+d,d))--conj((i+1-d,d))--conj((i+1-d,1-d))--conj((i+d,1-d))--cycle,lightgrey,black);
}
fill((5+d,-d/2)--(6-d,-d/2)--(6-d,d/2)--(5+d,d/2)--cycle,lightred);
draw((0,0)--(5,0)--(5,1)--(6,1)--(6,0)--(10.1,0),deepblue+linewidth(1.25));
label("School", (10,0),E, Draw());