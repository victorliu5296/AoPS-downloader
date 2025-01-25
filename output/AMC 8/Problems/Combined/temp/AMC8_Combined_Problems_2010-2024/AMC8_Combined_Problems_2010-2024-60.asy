if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="AMC8_Combined_Problems_2010-2024-60";
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
// diagram by SirCalcsALot
unitsize(1.25cm);
dotfactor = 10;
pen shortdashed=linetype(new real[] {2.7,2.7});

for (int i = 0; i < 6; ++i) {
for (int j = 0; j < 6; ++j) {
draw((i,0)--(i,6), grey);
draw((0,j)--(6,j), grey);
}
}

for (int i = 1; i <= 6; ++i) {
draw((-0.1,i)--(0.1,i),linewidth(1.25));
draw((i,-0.1)--(i,0.1),linewidth(1.25));
label(string(5*i), (i,0), 2*S);
label(string(i), (0, i), 2*W);
}

draw((0,0)--(0,6)--(6,6)--(6,0)--(0,0)--cycle,linewidth(1.25));

label(rotate(90) * "Distance (miles)", (-0.5,3), W);
label("Time (minutes)", (3,-0.5), S);

dot("Naomi", (2,6), 3*dir(305));
dot((6,6));

label("Maya", (4.45,3.5));

draw((0,0)--(1.15,1.3)--(1.55,1.3)--(3.15,3.2)--(3.65,3.2)--(5.2,5.2)--(5.4,5.2)--(6,6),linewidth(1.35));
draw((0,0)--(0.4,0.1)--(1.15,3.7)--(1.6,3.7)--(2,6),linewidth(1.35)+shortdashed);
