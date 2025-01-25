if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="2023_AMC_8_Problems-10";
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
/* Made by MRENTHUSIASM, Edited by Kante314 */
usepackage("mathdots");
size(5cm);
draw((0,0)--(6,0),linewidth(1.5)+mediumgray);
draw((0,1)--(6,1),linewidth(1.5)+mediumgray);
draw((0,2)--(6,2),linewidth(1.5)+mediumgray);
draw((0,3)--(6,3),linewidth(1.5)+mediumgray);
draw((0,4)--(6,4),linewidth(1.5)+mediumgray);
draw((0,5)--(6,5),linewidth(1.5)+mediumgray);

draw((0,0)--(0,6),linewidth(1.5)+mediumgray);
draw((1,0)--(1,6),linewidth(1.5)+mediumgray);
draw((2,0)--(2,6),linewidth(1.5)+mediumgray);
draw((3,0)--(3,6),linewidth(1.5)+mediumgray);
draw((4,0)--(4,6),linewidth(1.5)+mediumgray);
draw((5,0)--(5,6),linewidth(1.5)+mediumgray);

label(scale(.9)*"\textsf{P}", (.5,.5));
label(scale(.9)*"\textsf{Q}", (.5,1.5));
label(scale(.9)*"\textsf{R}", (.5,2.5));
label(scale(.9)*"\textsf{P}", (.5,3.5));
label(scale(.9)*"\textsf{Q}", (.5,4.5));
label("$\vdots$", (.5,5.6));

label(scale(.9)*"\textsf{Q}", (1.5,.5));
label(scale(.9)*"\textsf{R}", (1.5,1.5));
label(scale(.9)*"\textsf{P}", (1.5,2.5));
label(scale(.9)*"\textsf{Q}", (1.5,3.5));
label(scale(.9)*"\textsf{R}", (1.5,4.5));
label("$\vdots$", (1.5,5.6));

label(scale(.9)*"\textsf{R}", (2.5,.5));
label(scale(.9)*"\textsf{P}", (2.5,1.5));
label(scale(.9)*"\textsf{Q}", (2.5,2.5));
label(scale(.9)*"\textsf{R}", (2.5,3.5));
label(scale(.9)*"\textsf{P}", (2.5,4.5));
label("$\vdots$", (2.5,5.6));

label(scale(.9)*"\textsf{P}", (3.5,.5));
label(scale(.9)*"\textsf{Q}", (3.5,1.5));
label(scale(.9)*"\textsf{R}", (3.5,2.5));
label(scale(.9)*"\textsf{P}", (3.5,3.5));
label(scale(.9)*"\textsf{Q}", (3.5,4.5));
label("$\vdots$", (3.5,5.6));

label(scale(.9)*"\textsf{Q}", (4.5,.5));
label(scale(.9)*"\textsf{R}", (4.5,1.5));
label(scale(.9)*"\textsf{P}", (4.5,2.5));
label(scale(.9)*"\textsf{Q}", (4.5,3.5));
label(scale(.9)*"\textsf{R}", (4.5,4.5));
label("$\vdots$", (4.5,5.6));

label(scale(.9)*"$\dots$", (5.5,.5));
label(scale(.9)*"$\dots$", (5.5,1.5));
label(scale(.9)*"$\dots$", (5.5,2.5));
label(scale(.9)*"$\dots$", (5.5,3.5));
label(scale(.9)*"$\dots$", (5.5,4.5));
label(scale(.9)*"$\iddots$", (5.5,5.6));
