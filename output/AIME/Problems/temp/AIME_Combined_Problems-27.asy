if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="AIME_Combined_Problems-27";
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
draw(unitcircle,black+linewidth(2));

for (int i = 0; i < 12; ++i) {
draw(0.9*dir(30*i)--dir(30*i));
}
for (int i = 0; i < 4; ++i) {
draw(0.85*dir(90*i)--dir(90*i),black+linewidth(2));
}
for (int i = 1; i < 13; ++i) {
label("\small" + (string) i, dir(90 - i * 30) * 0.75);
}
draw((0,0)--0.6*dir(90),black+linewidth(2),Arrow(TeXHead,2bp));
draw((0,0)--0.4*dir(90),black+linewidth(2),Arrow(TeXHead,2bp));
