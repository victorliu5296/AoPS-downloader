if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="AMC12_Combined_Problems_2010_to_2024-57";
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
import olympiad;
draw((-50,15)--(50,15));
draw((50,15)--(50,-15));
draw((50,-15)--(-50,-15));
draw((-50,-15)--(-50,15));
draw((-50,-15)--(-22.5,15));
draw((-22.5,15)--(5,-15));
draw((5,-15)--(32.5,15));
draw((32.5,15)--(50,-4.090909090909));
label("$\theta$", (-41.5,-10.5));
label("$\theta$", (-13,10.5));
label("$\theta$", (15.5,-10.5));
label("$\theta$", (43,10.5));
dot((-50,15));
dot((-50,-15));
dot((50,15));
dot((50,-15));
dot((50,-4.09090909090909));
label("$D$",(-58,15));
label("$A$",(-58,-15));
label("$C$",(58,15));
label("$B$",(58,-15));
label("$S$",(58,-4.0909090909));
dot((-22.5,15));
dot((5,-15));
dot((32.5,15));
label("$P$",(-22.5,23));
label("$Q$",(5,-23));
label("$R$",(32.5,23));
