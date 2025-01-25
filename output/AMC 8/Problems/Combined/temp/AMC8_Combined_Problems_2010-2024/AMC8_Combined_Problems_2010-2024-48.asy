if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="AMC8_Combined_Problems_2010-2024-48";
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
size(7cm);
pair A,B,C,DD,EE,FF;
A = (0,0); B = (3,0); C = (0.5,2.5);
EE = (1,0);
DD = intersectionpoint(A--C,EE--EE+(C-B));
FF = intersectionpoint(B--C,EE--EE+(C-A));
draw(A--B--C--A--DD--EE--FF,black+1bp);
label("$A$",A,S); label("$B$",B,S); label("$C$",C,N);
label("$D$",DD,W); label("$E$",EE,S); label("$F$",FF,NE);
label("$1$",(A+EE)/2,S); label("$2$",(EE+B)/2,S);
