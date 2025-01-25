if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="AMC8_Combined_Problems_2010-2024-32";
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
draw((-4,6*sqrt(2))--(4,6*sqrt(2)));
draw((-4,-6*sqrt(2))--(4,-6*sqrt(2)));
draw((-8,0)--(-4,6*sqrt(2)));
draw((-8,0)--(-4,-6*sqrt(2)));
draw((4,6*sqrt(2))--(8,0));
draw((8,0)--(4,-6*sqrt(2)));
draw((-4,6*sqrt(2))--(4,6*sqrt(2))--(4,8+6*sqrt(2))--(-4,8+6*sqrt(2))--cycle);
draw((-8,0)--(-4,-6*sqrt(2))--(-4-6*sqrt(2),-4-6*sqrt(2))--(-8-6*sqrt(2),-4)--cycle);
label("$I$",(-4,8+6*sqrt(2)),dir(100)); label("$J$",(4,8+6*sqrt(2)),dir(80));
label("$A$",(-4,6*sqrt(2)),dir(280)); label("$B$",(4,6*sqrt(2)),dir(250));
label("$C$",(8,0),W); label("$D$",(4,-6*sqrt(2)),NW); label("$E$",(-4,-6*sqrt(2)),NE); label("$F$",(-8,0),E);
draw((4,8+6*sqrt(2))--(4,6*sqrt(2))--(4+4*sqrt(3),4+6*sqrt(2))--cycle);
label("$K$",(4+4*sqrt(3),4+6*sqrt(2)),E);
draw((4+4*sqrt(3),4+6*sqrt(2))--(8,0),dashed);
label("$H$",(-4-6*sqrt(2),-4-6*sqrt(2)),S);
label("$G$",(-8-6*sqrt(2),-4),W);
label("$32$",(-10,-8),N);
label("$18$",(0,6*sqrt(2)+2),N);
