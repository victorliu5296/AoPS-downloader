if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="2024_AMC_8_Problems-5";
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
/* AMC8 P17 2024, revised by Teacher David */
unitsize(29pt);
import math;
add(grid(3,3));

pair [] a = {(0.5,0.5), (0.5, 1.5), (0.5, 2.5), (1.5, 2.5), (2.5,2.5), (2.5,1.5), (2.5,0.5), (1.5,0.5)};

for (int i=0; i<a.length; ++i) {
pair x = (1.5,1.5) + 0.4*dir(225-45*i);
draw(x -- a[i], arrow=EndArrow());
}

label("$K$", (1.5,1.5));
