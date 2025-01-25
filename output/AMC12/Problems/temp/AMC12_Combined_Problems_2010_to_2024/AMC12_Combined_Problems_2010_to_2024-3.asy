if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="AMC12_Combined_Problems_2010_to_2024-3";
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
size(100); defaultpen(linewidth(.8pt)+fontsize(8pt));
draw(arc((0,1), 1.2, 25, 214));
draw(arc((.951,.309), 1.2, 0, 360));
draw(arc((.588,-.809), 1.2, 132, 370));
draw(arc((-.588,-.809), 1.2, 75, 300));
draw(arc((-.951,.309), 1.2, 96, 228));
label("$A$",(0,1),NW); label("$B$",(-1.1,.309),NW); label("$C$",(.951,.309),E); label("$D$",(-.588,-.809),W); label("$E$",(.588,-.809),S);
