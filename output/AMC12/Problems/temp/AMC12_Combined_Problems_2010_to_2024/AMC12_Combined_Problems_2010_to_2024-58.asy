if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="AMC12_Combined_Problems_2010_to_2024-58";
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
unitsize(3cm);
draw(circle((0,0),1),linewidth(1.5));
for (int i = 0; i < 7; ++i) {
for (int j = 0; j < i; ++j) {
draw(dir(i * 360/7) -- dir(j * 360/7),linewidth(1.5));
}
}
for(int i = 0; i < 7; ++i) {
dot(dir(i * 360/7),5+black);
}
