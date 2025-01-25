if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="AIME_Combined_Problems_2010-2024-14";
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
size(8cm);
currentprojection=orthographic(-1,-5,3);

picture lpic, rpic;


size(lpic,5cm);
draw(lpic,surface(revolution((0,0,0),(-3,3*sqrt(3),0)..(0,6,4)..(3,3*sqrt(3),8),Z,0,120)),gray(0.7),nolight);
draw(lpic,surface(revolution((0,0,0),(-3*sqrt(3),-3,8)..(-6,0,4)..(-3*sqrt(3),3,0),Z,0,90)),gray(0.7),nolight);
draw(lpic,surface((3,3*sqrt(3),8)..(-6,0,8)..(3,-3*sqrt(3),8)--cycle),gray(0.7),nolight);
draw(lpic,(3,-3*sqrt(3),8)..(-6,0,8)..(3,3*sqrt(3),8));
draw(lpic,(-3,3*sqrt(3),0)--(-3,-3*sqrt(3),0),dashed);
draw(lpic,(3,3*sqrt(3),8)..(0,6,4)..(-3,3*sqrt(3),0)--(-3,3*sqrt(3),0)..(-3*sqrt(3),3,0)..(-6,0,0),dashed);
draw(lpic,(3,3*sqrt(3),8)--(3,-3*sqrt(3),8)..(0,-6,4)..(-3,-3*sqrt(3),0)--(-3,-3*sqrt(3),0)..(-3*sqrt(3),-3,0)..(-6,0,0));
draw(lpic,(6*cos(atan(-1/5)+3.14159),6*sin(atan(-1/5)+3.14159),0)--(6*cos(atan(-1/5)+3.14159),6*sin(atan(-1/5)+3.14159),8));

size(rpic,5cm);
draw(rpic,surface(revolution((0,0,0),(3,3*sqrt(3),8)..(0,6,4)..(-3,3*sqrt(3),0),Z,230,360)),gray(0.7),nolight);
draw(rpic,surface((-3,3*sqrt(3),0)..(6,0,0)..(-3,-3*sqrt(3),0)--cycle),gray(0.7),nolight);
draw(rpic,surface((-3,3*sqrt(3),0)..(0,6,4)..(3,3*sqrt(3),8)--(3,3*sqrt(3),8)--(3,-3*sqrt(3),8)--(3,-3*sqrt(3),8)..(0,-6,4)..(-3,-3*sqrt(3),0)--cycle),white,nolight);
draw(rpic,(-3,-3*sqrt(3),0)..(-6*cos(atan(-1/5)+3.14159),-6*sin(atan(-1/5)+3.14159),0)..(6,0,0));
draw(rpic,(-6*cos(atan(-1/5)+3.14159),-6*sin(atan(-1/5)+3.14159),0)..(6,0,0)..(-3,3*sqrt(3),0),dashed);
draw(rpic,(3,3*sqrt(3),8)--(3,-3*sqrt(3),8));
draw(rpic,(-3,3*sqrt(3),0)..(0,6,4)..(3,3*sqrt(3),8)--(3,3*sqrt(3),8)..(3*sqrt(3),3,8)..(6,0,8));
draw(rpic,(-3,3*sqrt(3),0)--(-3,-3*sqrt(3),0)..(0,-6,4)..(3,-3*sqrt(3),8)--(3,-3*sqrt(3),8)..(3*sqrt(3),-3,8)..(6,0,8));
draw(rpic,(-6*cos(atan(-1/5)+3.14159),-6*sin(atan(-1/5)+3.14159),0)--(-6*cos(atan(-1/5)+3.14159),-6*sin(atan(-1/5)+3.14159),8));
label(rpic,"$A$",(-3,3*sqrt(3),0),W);
label(rpic,"$B$",(-3,-3*sqrt(3),0),W);

add(lpic.fit(),(0,0));
add(rpic.fit(),(1,0));
