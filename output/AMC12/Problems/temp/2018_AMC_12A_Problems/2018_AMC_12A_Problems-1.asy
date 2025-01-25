if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="2018_AMC_12A_Problems-1";
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
unitsize(5);
dot((0,0));
dot((60,0));
dot((50,10));
dot((10,10));
dot((30,30));
draw((0,0)--(60,0)--(50,10)--(30,30)--(10,10)--(0,0));
draw((10,10)--(50,10));
label("$B$",(0,0),SW);
label("$C$",(60,0),SE);
label("$E$",(50,10),E);
label("$D$",(10,10),W);
label("$A$",(30,30),N);
draw((10,10)--(15,15)--(20,10)--(25,15)--(30,10)--(35,15)--(40,10)--(45,15)--(50,10));
draw((15,15)--(45,15));
