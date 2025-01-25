if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);
settings.outformat = "pdf";
settings.render = 0;
settings.prc = false;
import olympiad;
import cse5;
size(8cm);
import olympiad;
import cse5;
defaultpen(fontsize(8)+0.8); size(150);
pair O,A1,B1,C1,A2,B2,C2,A3,B3,C3,A4,B4,C4;
real x=45, y=90, z=60; O=origin;
A1=dir(x); A2=dir(x+y); A3=dir(x+2y); A4=dir(x+3y);
B1=dir(x-z); B2=dir(x+y-z); B3=dir(x+2y-z); B4=dir(x+3y-z);
C1=dir(x-2z); C2=dir(x+y-2z); C3=dir(x+2y-2z); C4=dir(x+3y-2z);
draw(A1--A2--A3--A4--A1, gray+0.25+dashed);
filldraw(B1--B2--B3--B4--cycle, white, gray+dashed+linewidth(0.25));
filldraw(C1--C2--C3--C4--cycle, white, gray+dashed+linewidth(0.25));
dot(O);
pair P1,P2,P3,P4,Q1,Q2,Q3,Q4,R1,R2,R3,R4;
P1=extension(A1,A2,B1,B2); Q1=extension(A1,A2,C3,C4);
P2=extension(A2,A3,B2,B3); Q2=extension(A2,A3,C4,C1);
P3=extension(A3,A4,B3,B4); Q3=extension(A3,A4,C1,C2);
P4=extension(A4,A1,B4,B1); Q4=extension(A4,A1,C2,C3);
R1=extension(C2,C3,B2,B3); R2=extension(C3,C4,B3,B4);
R3=extension(C4,C1,B4,B1); R4=extension(C1,C2,B1,B2);
draw(A1--P1--B2--R1--C3--Q1--A2);
draw(A2--P2--B3--R2--C4--Q2--A3);
draw(A3--P3--B4--R3--C1--Q3--A4);
draw(A4--P4--B1--R4--C2--Q4--A1);