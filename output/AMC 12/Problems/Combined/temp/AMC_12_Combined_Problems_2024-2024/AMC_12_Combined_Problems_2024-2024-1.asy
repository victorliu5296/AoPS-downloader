if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="AMC_12_Combined_Problems_2024-2024-1";
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
defaultpen(fontsize(12)+0.85); size(150);
real h=2.25;
pair C=origin,B=(0,h),A=(1,h),D=(1,0),Dp=reflect(A,C)*D,Bp=reflect(A,C)*B;
pair L=extension(A,Dp,B,C),R=extension(Bp,C,A,D);
draw(L--B--A--Dp--C--Bp--A);
draw(C--D--R);
draw(L--C^^R--A,dashed+0.6);
draw(A--C,black+0.6);
dot("$C$",C,2*dir(C-R)); dot("$A$",A,1.5*dir(A-L)); dot("$B$",B,dir(B-R));
