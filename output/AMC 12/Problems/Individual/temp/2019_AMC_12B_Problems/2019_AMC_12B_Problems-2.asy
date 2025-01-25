if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="2019_AMC_12B_Problems-2";
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
/* Geogebra to Asymptote conversion, documentation at artofproblemsolving.com/Wiki go to User:Azjps/geogebra */
import graph; size(8.016233639805293cm);
real labelscalefactor = 0.5; /* changes label-to-point distance */
pen dps = linewidth(0.7) + fontsize(10); defaultpen(dps); /* default pen style */
pen dotstyle = black; /* point style */
real xmin = -4.001920114613276, xmax = 4.014313525192017, ymin = -2.552570341575814, ymax = 5.6249093771911145; /* image dimensions */


draw((-1.6742337260757447,-1.)--(-1.6742337260757445,-0.6742337260757447)--(-2.,-0.6742337260757447)--(-2.,-1.)--cycle, linewidth(2.));
draw((-1.7696484586262846,2.7696484586262846)--(-1.5392969172525692,3.)--(-1.7696484586262846,3.2303515413737154)--(-2.,3.)--cycle, linewidth(2.));
/* draw figures */
draw((-2.,3.)--(-2.,-1.), linewidth(2.));
draw((-2.,-1.)--(2.,-1.), linewidth(2.));
draw((2.,-1.)--(-2.,3.), linewidth(2.));
draw((-0.6404058554606791,4.3595941445393205)--(-2.,3.), linewidth(2.));
draw((-0.6404058554606791,4.3595941445393205)--(2.,-1.), linewidth(2.));
label("$D$",(-0.9382446143428628,4.887784444795223),SE*labelscalefactor,fontsize(14));
label("$A$",(1.9411496528285788,-1.0783204767840298),SE*labelscalefactor,fontsize(14));
label("$B$",(-2.5046350956841272,-0.9861798602345433),SE*labelscalefactor,fontsize(14));
label("$C$",(-2.5737405580962416,3.5747806589650395),SE*labelscalefactor,fontsize(14));
label("$1$",(-2.665881174645728,1.2712652452278765),SE*labelscalefactor,fontsize(14));
label("$1$",(-0.3393306067712029,-1.3547423264324894),SE*labelscalefactor,fontsize(14));
/* dots and labels */
dot((-2.,3.),linewidth(4.pt) + dotstyle);
dot((-2.,-1.),linewidth(4.pt) + dotstyle);
dot((2.,-1.),linewidth(4.pt) + dotstyle);
dot((-0.6404058554606791,4.3595941445393205),linewidth(4.pt) + dotstyle);
clip((xmin,ymin)--(xmin,ymax)--(xmax,ymax)--(xmax,ymin)--cycle);
/* end of picture */
