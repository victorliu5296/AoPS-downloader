if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="AIME_2015_II_Problems-1";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

// Global Asymptote settings
settings.outformat = "pdf";
settings.render = 0;
settings.prc = false;
import olympiad;
import cse5;
size(8cm);

import olympiad;
import cse5;
import three; import solids;
size(5cm);
currentprojection=orthographic(1,-1/6,1/6);

draw(surface(revolution((0,0,0),(-2,-2*sqrt(3),0)--(-2,-2*sqrt(3),-10),Z,0,360)),white,nolight);

triple A =(8*sqrt(6)/3,0,8*sqrt(3)/3), B = (-4*sqrt(6)/3,4*sqrt(2),8*sqrt(3)/3), C = (-4*sqrt(6)/3,-4*sqrt(2),8*sqrt(3)/3), X = (0,0,-2*sqrt(2));

draw(X--X+A--X+A+B--X+A+B+C);
draw(X--X+B--X+A+B);
draw(X--X+C--X+A+C--X+A+B+C);
draw(X+A--X+A+C);
draw(X+C--X+C+B--X+A+B+C,linetype("2 4"));
draw(X+B--X+C+B,linetype("2 4"));

draw(surface(revolution((0,0,0),(-2,-2*sqrt(3),0)--(-2,-2*sqrt(3),-10),Z,0,240)),white,nolight);
draw((-2,-2*sqrt(3),0)..(4,0,0)..(-2,2*sqrt(3),0));
draw((-4*cos(atan(5)),-4*sin(atan(5)),0)--(-4*cos(atan(5)),-4*sin(atan(5)),-10)..(4,0,-10)..(4*cos(atan(5)),4*sin(atan(5)),-10)--(4*cos(atan(5)),4*sin(atan(5)),0));
draw((-2,-2*sqrt(3),0)..(-4,0,0)..(-2,2*sqrt(3),0),linetype("2 4"));
