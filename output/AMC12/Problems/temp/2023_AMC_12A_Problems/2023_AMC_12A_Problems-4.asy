if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="2023_AMC_12A_Problems-4";
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
size(4.5cm);
label("$1$", (0,0));
label("$1$", (-0.5,-2/3));
label("$1$", (0.5,-2/3));
label("$1$", (-1,-4/3));
label("$3$", (0,-4/3));
label("$1$", (1,-4/3));
label("$1$", (-1.5,-2));
label("$5$", (-0.5,-2));
label("$5$", (0.5,-2));
label("$1$", (1.5,-2));
label("$1$", (-2,-8/3));
label("$7$", (-1,-8/3));
label("$11$", (0,-8/3));
label("$7$", (1,-8/3));
label("$1$", (2,-8/3));
