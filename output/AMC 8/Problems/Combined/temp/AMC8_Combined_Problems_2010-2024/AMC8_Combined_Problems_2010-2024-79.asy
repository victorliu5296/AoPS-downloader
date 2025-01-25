if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="AMC8_Combined_Problems_2010-2024-79";
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
//Restored original diagram. Alter it if you would like, but it was made by TheMathGuyd,
// Diagram by TheMathGuyd. I even put the lined texture :)
// Thank you Kante314 for inspiring thicker arrows. They do look much better
size(0,3cm);
path sq = (-0.5,-0.5)--(0.5,-0.5)--(0.5,0.5)--(-0.5,0.5)--cycle;
path rh = (-0.125,-0.125)--(0.5,-0.5)--(0.5,0.5)--(-0.125,0.875)--cycle;
path sqA = (-0.5,-0.5)--(-0.25,-0.5)--(0,-0.25)--(0.25,-0.5)--(0.5,-0.5)--(0.5,-0.25)--(0.25,0)--(0.5,0.25)--(0.5,0.5)--(0.25,0.5)--(0,0.25)--(-0.25,0.5)--(-0.5,0.5)--(-0.5,0.25)--(-0.25,0)--(-0.5,-0.25)--cycle;
path sqB = (-0.5,-0.5)--(-0.25,-0.5)--(0,-0.25)--(0.25,-0.5)--(0.5,-0.5)--(0.5,0.5)--(0.25,0.5)--(0,0.25)--(-0.25,0.5)--(-0.5,0.5)--cycle;
path sqC = (-0.25,-0.25)--(0.25,-0.25)--(0.25,0.25)--(-0.25,0.25)--cycle;
path trD = (-0.25,0)--(0.25,0)--(0,0.25)--cycle;
path sqE = (-0.25,0)--(0,-0.25)--(0.25,0)--(0,0.25)--cycle;
filldraw(sq,mediumgrey,black);
draw((0.75,0)--(1.25,0),currentpen+1,Arrow(size=6));
//folding
path sqside = (-0.5,-0.5)--(0.5,-0.5);
path rhside = (-0.125,-0.125)--(0.5,-0.5);
transform fld = shift((1.75,0))*scale(0.5);
draw(fld*sq,black);
int i;
for(i=0; i<10; i=i+1)
{
draw(shift(0,0.05*i)*fld*sqside,deepblue);
}
path rhedge = (-0.125,-0.125)--(-0.125,0.8)--(-0.2,0.85)--cycle;
filldraw(fld*rhedge,grey);
path sqedge = (-0.5,-0.5)--(-0.5,0.4475)--(-0.575,0.45)--cycle;
filldraw(fld*sqedge,grey);
filldraw(fld*rh,white,black);
int i;
for(i=0; i<10; i=i+1)
{
draw(shift(0,0.05*i)*fld*rhside,deepblue);
}
draw((2.25,0)--(2.75,0),currentpen+1,Arrow(size=6));
//cutting
transform cut = shift((3.25,0))*scale(0.5);
draw(shift((-0.01,+0.01))*cut*sq);
draw(cut*sq);
filldraw(shift((0.01,-0.01))*cut*sq,white,black);
int j;
for(j=0; j<10; j=j+1)
{
draw(shift(0,0.05*j)*cut*sqside,deepblue);
}
draw(shift((0.01,-0.01))*cut*(0,-0.5)--shift((0.01,-0.01))*cut*(0.5,0),dashed);
//Answers Below, but already Separated
//filldraw(sqA,grey,black);
//filldraw(sqB,grey,black);
//filldraw(sq,grey,black);
//filldraw(sqC,white,black);
//filldraw(sq,grey,black);
//filldraw(trD,white,black);
//filldraw(sq,grey,black);
//filldraw(sqE,white,black);
