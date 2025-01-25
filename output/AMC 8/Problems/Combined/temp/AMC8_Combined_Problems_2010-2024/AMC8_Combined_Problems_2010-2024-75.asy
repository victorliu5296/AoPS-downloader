if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="AMC8_Combined_Problems_2010-2024-75";
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
unitsize(0.5cm);
draw((3,3)--(-3,3));
draw((3,1)--(-3,1));
draw((3,-3)--(-3,-3));
draw((3,-1)--(-3,-1));
draw((3,3)--(3,-3));
draw((1,3)--(1,-3));
draw((-3,3)--(-3,-3));
draw((-1,3)--(-1,-3));
label((-2,2),"$-2$");
label((0,2),"$9$");
label((2,2),"$5$");
label((2,0),"${-}1$");
label((2,-2),"$8$");
label((-2,-2),"$x$");
