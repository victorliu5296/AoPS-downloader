if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="2020_AMC_8_Problems-6";
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
// diagram by SirCalcsALot
draw(arc((0,0),17,180,0));
draw((-17,0)--(17,0));
fill((-8,0)--(-8,15)--(8,15)--(8,0)--cycle, 1.5*grey);
draw((-8,0)--(-8,15)--(8,15)--(8,0)--cycle);
dot("$A$",(8,0), 1.25*S);
dot("$B$",(8,15), 1.25*N);
dot("$C$",(-8,15), 1.25*N);
dot("$D$",(-8,0), 1.25*S);
dot("$E$",(17,0), 1.25*S);
dot("$F$",(-17,0), 1.25*S);
label("$16$",(0,0),N);
label("$9$",(12.5,0),N);
label("$9$",(-12.5,0),N);
