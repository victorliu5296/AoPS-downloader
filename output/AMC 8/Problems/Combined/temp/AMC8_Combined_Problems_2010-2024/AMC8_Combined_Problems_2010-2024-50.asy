if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="AMC8_Combined_Problems_2010-2024-50";
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
size(3cm);
pair A[];
for (int i=0; i<9; ++i) {
A[i] = rotate(22.5+45*i)*(1,0);
}
filldraw(A[0]--A[1]--A[2]--A[3]--A[4]--A[5]--A[6]--A[7]--cycle,gray,black);
for (int i=0; i<8; ++i) { dot(A[i]); }
