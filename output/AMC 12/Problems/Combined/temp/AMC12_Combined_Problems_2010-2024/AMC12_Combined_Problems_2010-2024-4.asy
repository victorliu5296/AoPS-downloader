if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="AMC12_Combined_Problems_2010-2024-4";
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
unitsize(10mm);
defaultpen(linewidth(.8pt)+fontsize(10pt));
dotfactor=4;
pair A=(0,1), B=(1,0), C=(1+sqrt(2),0), D=(2+sqrt(2),1), E=(2+sqrt(2),1+sqrt(2)), F=(1+sqrt(2),2+sqrt(2)), G=(1,2+sqrt(2)), H=(0,1+sqrt(2));
draw(A--B--C--D--E--F--G--H--cycle);
draw(A--D);
draw(B--G);
draw(C--F);
draw(E--H);
