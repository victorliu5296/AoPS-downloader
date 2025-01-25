if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="AIME_Combined_Problems_2010-2024-31";
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
unitsize(0.6 inch);
for(int i=0; i<360; i+=30) {
dot(dir(i), 4+black);
draw(dir(i)--dir(i+30));
}
draw(dir(120)--dir(330));
filldraw(dir(210)--dir(240)--dir(30)--dir(60)--cycle, mediumgray, linewidth(1.5));
draw((0,0.366)--(0.366,0), linewidth(1.5));
