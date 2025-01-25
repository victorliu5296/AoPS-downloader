if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="AIME_Combined_Problems-26";
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
unitsize(2cm);
pair o = (0, 0), u = (1, 0), v = 0.8*dir(40), w = dir(70);

draw(o--u--(u+v));
draw(o--v--(u+v), dotted);
draw(shift(w)*(o--u--(u+v)--v--cycle));
draw(o--w);
draw(u--(u+w));
draw(v--(v+w), dotted);
draw((u+v)--(u+v+w));
