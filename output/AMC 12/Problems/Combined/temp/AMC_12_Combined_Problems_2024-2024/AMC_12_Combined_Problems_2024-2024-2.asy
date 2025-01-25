if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="AMC_12_Combined_Problems_2024-2024-2";
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
size(6cm);
for (int i=0; i<9; ++i) {
draw((i,0)--(i,3),dotted);
}
for (int i=0; i<4; ++i){
draw((0,i)--(8,i),dotted);
}
for (int i=0; i<8; ++i) {
for (int j=0; j<3; ++j) {
if (j==1) {
label("1",(i+0.5,1.5));
}}}
