if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="AMC12_Combined_Problems_2010-2024-57";
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

for (int i = 1; i < 4; ++ i) {
for (int j = 1; j < 4; ++j) {
label("?",(i + 0.5, j + 0.5));
}
}

for (int i = 0; i <= 5; ++i) {
draw((0,i)--(5,i));
draw((i,0)--(i,5));
}

label("Initial", (2.5,-1));
draw((6,2.5)--(8,2.5),Arrow);

ds((11,2));

for (int i = 0; i <= 5; ++i) {
draw((9,i)--(14,i));
draw((i+9,0)--(i+9,5));
}

label("Transformed", (11.5,-1));
