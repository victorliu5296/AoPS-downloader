if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="2015_AIME_I_Problems-1";
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
pair A,B,C,D,E,F,G,H,I,O;
O=(0,0);
C=dir(90);
B=dir(70);
A=dir(50);
D=dir(110);
E=dir(130);
draw(arc(O,1,50,130));
real x=2*sin(20*pi/180);
F=x*dir(228)+C;
G=x*dir(256)+C;
H=x*dir(284)+C;
I=x*dir(312)+C;
draw(arc(C,x,200,340));
label("$A$",A,dir(0));
label("$B$",B,dir(75));
label("$C$",C,dir(90));
label("$D$",D,dir(105));
label("$E$",E,dir(180));
label("$F$",F,dir(225));
label("$G$",G,dir(260));
label("$H$",H,dir(280));
label("$I$",I,dir(315));
