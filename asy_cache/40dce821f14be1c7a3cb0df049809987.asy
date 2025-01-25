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
real r=(3+sqrt(5))/2;
real s=sqrt(r);
real Brad=r;
real brad=1;
real Fht = 2*s;
import graph3;
import solids;
currentprojection=orthographic(1,0,.2);
currentlight=(10,10,5);
revolution sph=sphere((0,0,Fht/2),Fht/2);
triple f(pair t) {
triple v0 = Brad*(cos(t.x),sin(t.x),0);
triple v1 = brad*(cos(t.x),sin(t.x),0)+(0,0,Fht);
return (v0 + t.y*(v1-v0));
}
triple g(pair t) {
return (t.y*cos(t.x),t.y*sin(t.x),0);
}
surface sback=surface(f,(3pi/4,0),(7pi/4,1),80,2);
surface sfront=surface(f,(7pi/4,0),(11pi/4,1),80,2);
surface base = surface(g,(0,0),(2pi,Brad),80,2);
draw(sback,gray(0.9));
draw(sfront,gray(0.5));
draw(base,gray(0.9));
draw(surface(sph),gray(0.4));