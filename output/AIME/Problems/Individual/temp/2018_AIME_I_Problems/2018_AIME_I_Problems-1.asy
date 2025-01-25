if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="2018_AIME_I_Problems-1";
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

draw(unitcircle);
draw(scale(2) * unitcircle);
for(int d = 90; d < 360 + 90; d += 72){
draw(2 * dir(d) -- dir(d));
}

dot(1 * dir( 90), linewidth(5));
dot(1 * dir(162), linewidth(5));
dot(1 * dir(234), linewidth(5));
dot(1 * dir(306), linewidth(5));
dot(1 * dir(378), linewidth(5));
dot(2 * dir(378), linewidth(5));
dot(2 * dir(306), linewidth(5));
dot(2 * dir(234), linewidth(5));
dot(2 * dir(162), linewidth(5));
dot(2 * dir( 90), linewidth(5));

label("$A$", 1 * dir( 90), -dir( 90));
label("$B$", 1 * dir(162), -dir(162));
label("$C$", 1 * dir(234), -dir(234));
label("$D$", 1 * dir(306), -dir(306));
label("$E$", 1 * dir(378), -dir(378));
label("$F$", 2 * dir(378), dir(378));
label("$G$", 2 * dir(306), dir(306));
label("$H$", 2 * dir(234), dir(234));
label("$I$", 2 * dir(162), dir(162));
label("$J$", 2 * dir( 90), dir( 90));
