if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="2023_AMC_8_Problems-5";
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
usepackage("mathptmx");
size(9cm);
draw((0,-.5)--(0,11),EndArrow(size=.15cm));
draw((1,0)--(1,11),mediumgray);
draw((2,0)--(2,11),mediumgray);
draw((3,0)--(3,11),mediumgray);
draw((4,0)--(4,11),mediumgray);
draw((5,0)--(5,11),mediumgray);
draw((6,0)--(6,11),mediumgray);
draw((7,0)--(7,11),mediumgray);
draw((8,0)--(8,11),mediumgray);
draw((9,0)--(9,11),mediumgray);
draw((10,0)--(10,11),mediumgray);
draw((11,0)--(11,11),mediumgray);
draw((12,0)--(12,11),mediumgray);
draw((13,0)--(13,11),mediumgray);
draw((14,0)--(14,11),mediumgray);
draw((15,0)--(15,11),mediumgray);
draw((16,0)--(16,11),mediumgray);

draw((-.5,0)--(17,0),EndArrow(size=.15cm));
draw((0,1)--(17,1),mediumgray);
draw((0,2)--(17,2),mediumgray);
draw((0,3)--(17,3),mediumgray);
draw((0,4)--(17,4),mediumgray);
draw((0,5)--(17,5),mediumgray);
draw((0,6)--(17,6),mediumgray);
draw((0,7)--(17,7),mediumgray);
draw((0,8)--(17,8),mediumgray);
draw((0,9)--(17,9),mediumgray);
draw((0,10)--(17,10),mediumgray);

draw((-.13,1)--(.13,1));
draw((-.13,2)--(.13,2));
draw((-.13,3)--(.13,3));
draw((-.13,4)--(.13,4));
draw((-.13,5)--(.13,5));
draw((-.13,6)--(.13,6));
draw((-.13,7)--(.13,7));
draw((-.13,8)--(.13,8));
draw((-.13,9)--(.13,9));
draw((-.13,10)--(.13,10));

draw((1,-.13)--(1,.13));
draw((2,-.13)--(2,.13));
draw((3,-.13)--(3,.13));
draw((4,-.13)--(4,.13));
draw((5,-.13)--(5,.13));
draw((6,-.13)--(6,.13));
draw((7,-.13)--(7,.13));
draw((8,-.13)--(8,.13));
draw((9,-.13)--(9,.13));
draw((10,-.13)--(10,.13));
draw((11,-.13)--(11,.13));
draw((12,-.13)--(12,.13));
draw((13,-.13)--(13,.13));
draw((14,-.13)--(14,.13));
draw((15,-.13)--(15,.13));
draw((16,-.13)--(16,.13));

label(scale(.7)*"$1$", (1,-.13), S);
label(scale(.7)*"$2$", (2,-.13), S);
label(scale(.7)*"$3$", (3,-.13), S);
label(scale(.7)*"$4$", (4,-.13), S);
label(scale(.7)*"$5$", (5,-.13), S);
label(scale(.7)*"$6$", (6,-.13), S);
label(scale(.7)*"$7$", (7,-.13), S);
label(scale(.7)*"$8$", (8,-.13), S);
label(scale(.7)*"$9$", (9,-.13), S);
label(scale(.7)*"$10$", (10,-.13), S);
label(scale(.7)*"$11$", (11,-.13), S);
label(scale(.7)*"$12$", (12,-.13), S);
label(scale(.7)*"$13$", (13,-.13), S);
label(scale(.7)*"$14$", (14,-.13), S);
label(scale(.7)*"$15$", (15,-.13), S);
label(scale(.7)*"$16$", (16,-.13), S);

label(scale(.7)*"$1$", (-.13,1), W);
label(scale(.7)*"$2$", (-.13,2), W);
label(scale(.7)*"$3$", (-.13,3), W);
label(scale(.7)*"$4$", (-.13,4), W);
label(scale(.7)*"$5$", (-.13,5), W);
label(scale(.7)*"$6$", (-.13,6), W);
label(scale(.7)*"$7$", (-.13,7), W);
label(scale(.7)*"$8$", (-.13,8), W);
label(scale(.7)*"$9$", (-.13,9), W);
label(scale(.7)*"$10$", (-.13,10), W);


dot((0,0),linewidth(4));
label(scale(.75)*"$A$", (0,0), NE);
dot((3,1),linewidth(4));
label(scale(.75)*"$B$", (3,1), NE);

dot((0,10),linewidth(4));
label(scale(.75)*"$C$", (0,10), NE);
dot((2,9),linewidth(4));
label(scale(.75)*"$D$", (2,9), NE);

draw((15,3)--(16,3)--(16,5)--(15,5)--cycle,linewidth(1.125));
dot((15,3),linewidth(4));
dot((16,3),linewidth(4));
dot((16,5),linewidth(4));
dot((15,5),linewidth(4));
