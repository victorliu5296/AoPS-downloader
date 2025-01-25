if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="AMC8_Combined_Problems_2010-2024-89";
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
// Diagram by TheMathGuyd
import graph;
// The Solid
// To save processing time, do not use three (dimensions)
// Project (roughly) to two
size(15cm);
pair Fr, Lf, Rt, Tp, Bt, Bk;
Lf=(0,0);
Rt=(12,1);
Fr=(7,-1);
Bk=(5,2);
Tp=(6,6.7);
Bt=(6,-5.2);
draw(Lf--Fr--Rt);
draw(Lf--Tp--Rt);
draw(Lf--Bt--Rt);
draw(Tp--Fr--Bt);
draw(Lf--Bk--Rt,dashed);
draw(Tp--Bk--Bt,dashed);
label(rotate(-8.13010235)*slant(0.1)*"$Q$", (4.2,1.6));
label(rotate(21.8014095)*slant(-0.2)*"$?$", (8.5,2.05));
pair g = (-8,0); // Define Gap transform
real a = 8;
draw(g+(-a/2,1)--g+(a/2,1), Arrow()); // Make arrow
// Time for the NET
pair DA,DB,DC,CD,O;
DA = (4*sqrt(3),0);
DB = (2*sqrt(3),6);
DC = (DA+DB)/3;
CD = conj(DC);
O=(0,0);
transform trf=shift(3g+(0,3));
path NET = O--(-2*DA)--(-2DB)--(-DB)--(2DA-DB)--DB--O--DA--(DA-DB)--O--(-DB)--(-DA)--(-DA-DB)--(-DB);
draw(trf*NET);
label("$7$",trf*DC);
label("$Q$",trf*DC+DA-DB);
label("$5$",trf*DC-DB);
label("$3$",trf*DC-DA-DB);
label("$6$",trf*CD);
label("$4$",trf*CD-DA);
label("$2$",trf*CD-DA-DB);
label("$1$",trf*CD-2DA);
