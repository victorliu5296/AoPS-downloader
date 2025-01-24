if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="2021_AMC_12B_Problems-2";
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
unitsize(100);
pair A=(-1, 0), B=(1, 0), C=(0.3, 0.9), D=(-0.3, 0.9), P=(0.2, 0.5), E=(0.1, 0.75), F=(0.4, 0.5), G=(0.15, 0.2), H=(-0.3, 0.5);
draw(A--B--C--D--cycle, black);
draw(A--P, black);
draw(B--P, black);
draw(C--P, black);
draw(D--P, black);
label("$A$",A,(-1,0));
label("$B$",B,(1,0));
label("$C$",C,(1,-0));
label("$D$",D,(-1,0));
label("$2$",E,(0,0));
label("$3$",F,(0,0));
label("$4$",G,(0,0));
label("$5$",H,(0,0));
dot(A^^B^^C^^D^^P);
