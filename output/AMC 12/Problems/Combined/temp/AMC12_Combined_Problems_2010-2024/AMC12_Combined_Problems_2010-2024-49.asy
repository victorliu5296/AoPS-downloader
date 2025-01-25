if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="AMC12_Combined_Problems_2010-2024-49";
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
size(10cm);
usepackage("mathptmx");
import geometry;
void perp(picture pic=currentpicture,
pair O, pair M, pair B, real size=5,
pen p=currentpen, filltype filltype = NoFill){
perpendicularmark(pic, M,unit(unit(O-M)+unit(B-M)),size,p,filltype);
}
pen p=black+linewidth(1),q=black+linewidth(5);
pair C=(0,0),Y=(2,0),X=(3,0),A=(6,0),B=(2,sqrt(5.6)),D=(3,-sqrt(12.6));
draw(A--B--C--D--cycle,p);
draw(A--C,p);
draw(B--Y,p);
draw(D--X,p);
dot(A,q);
dot(B,q);
dot(C,q);
dot(D,q);
dot(X,q);
dot(Y,q);
label("2",C--Y,S);
label("1",Y--X,S);
label("3",X--A,S);
label("$A$",A,2*E);
label("$B$",B,2*N);
label("$C$",C,2*W);
label("$D$",D,2*S);
label("$Y$",Y,2*sqrt(2)*NE);
label("$X$",X,2*N);
perp(B,Y,C,8,p);
perp(A,X,D,8,p);
