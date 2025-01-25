if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="AMC8_Combined_Problems_2010-2024-73";
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
//diagram by pog
size(5.5cm);
usepackage("mathptmx");
defaultpen(mediumgray*0.5+gray*0.5+linewidth(0.63));
add(grid(6,6));
label(scale(0.7)*"$1$", (1,-0.3), black);
label(scale(0.7)*"$2$", (2,-0.3), black);
label(scale(0.7)*"$3$", (3,-0.3), black);
label(scale(0.7)*"$4$", (4,-0.3), black);
label(scale(0.7)*"$5$", (5,-0.3), black);
label(scale(0.7)*"$1$", (-0.3,1), black);
label(scale(0.7)*"$2$", (-0.3,2), black);
label(scale(0.7)*"$3$", (-0.3,3), black);
label(scale(0.7)*"$4$", (-0.3,4), black);
label(scale(0.7)*"$5$", (-0.3,5), black);
label(scale(0.8)*rotate(90)*"Price (dollars)", (-1,3.2), black);
label(scale(0.8)*"Weight (ounces)", (3.2,-1), black);
dot((1,1.2),black);
dot((1,1.7),black);
dot((1,2),black);
dot((1,2.8),black);

dot((1.5,2.1),black);
dot((1.5,3),black);
dot((1.5,3.3),black);
dot((1.5,3.75),black);

dot((2,2),black);
dot((2,2.9),black);
dot((2,3),black);
dot((2,4),black);
dot((2,4.35),black);
dot((2,4.8),black);

dot((2.5,2.7),black);
dot((2.5,3.7),black);
dot((2.5,4.2),black);
dot((2.5,4.4),black);

dot((3,2.5),black);
dot((3,3.4),black);
dot((3,4.2),black);

dot((3.5,3.8),black);
dot((3.5,4.5),black);
dot((3.5,4.8),black);

dot((4,3.9),black);
dot((4,5.1),black);

dot((4.5,4.75),black);
dot((4.5,5),black);

dot((5,4.5),black);
dot((5,5),black);
