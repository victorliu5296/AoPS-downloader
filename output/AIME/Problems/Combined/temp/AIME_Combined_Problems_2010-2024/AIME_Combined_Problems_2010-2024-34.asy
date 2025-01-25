if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="AIME_Combined_Problems_2010-2024-34";
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
pair A = (2,1); pair B = (0,0); pair C = (3,0);
dot(A^^B^^C);
label("$A$", A, N); label("$B$", B, S); label("$C$", C, S);
draw(A--B--C--cycle);
for(real i=0.62; i<2.7; i+=0.29){
draw(circle((i,0.145), 0.145));
}
