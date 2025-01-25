if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="2017_AMC_8_Problems-5";
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
draw((0,0)--(12,0)--(12,5)--(0,0));
draw(arc((8.67,0),(12,0),(5.33,0)));
label("$A$", (0,0), W);
label("$C$", (12,0), E);
label("$B$", (12,5), NE);
label("$12$", (6, 0), S);
label("$5$", (12, 2.5), E);
