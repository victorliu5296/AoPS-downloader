if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="2022_AMC_12B_Problems-3";
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
import geometry;
unitsize(0.6cm);

void ds(pair x) {
filldraw(x -- (1,0) + x -- (1,1) + x -- (0,1)+x -- cycle,mediumgray,invisible);
}

ds((1,1));
ds((2,1));
ds((3,1));
ds((1,3));

for (int i = 0; i <= 5; ++i) {
draw((0,i)--(5,i));
draw((i,0)--(i,5));
}

label("Initial", (2.5,-1));
draw((6,2.5)--(8,2.5),Arrow);

ds((10,2));
ds((11,1));
ds((11,0));

for (int i = 0; i <= 5; ++i) {
draw((9,i)--(14,i));
draw((i+9,0)--(i+9,5));
}

label("Transformed", (11.5,-1));
