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
size(12cm);
real h = 2.5;
real g=4;
real s = 0.65;
real adj = 0.08;
pair A,B,C;
B=(0,h);
C=(1,0);
A=-conj(C);
pair PONE=(s,h*(1-s));
pair PTWO=(s+adj,h*(1-s-adj));
path LONE=PONE--(-conj(PONE));
path LTWO=PTWO--(-conj(PTWO));
path T=A--B--C--cycle;
fill (shift(g,0)*(LTWO--B--cycle),mediumgrey);
fill (LONE--A--C--cycle,mediumgrey);
draw(LONE);
draw(T);
label("$A$",A,SW);
label("$B$",B,N);
label("$C$",C,SE);
draw(shift(g,0)*LTWO);
draw(shift(g,0)*T);
label("$A$",shift(g,0)*A,SW);
label("$B$",shift(g,0)*B,N);
label("$C$",shift(g,0)*C,SE);
draw(B--shift(g,0)*B,dashed);
draw(C--shift(g,0)*A,dashed);
draw((g/2,0)--(g/2,h),dashed);
draw((0,h*(1-s))--B,dashed);
draw((g,h*(1-s-adj))--(g,0),dashed);
label("$5$", midpoint((g,h*(1-s-adj))--(g,0)),UnFill);
label("$h$", midpoint((g/2,0)--(g/2,h)),UnFill);
label("$11$", midpoint((0,h*(1-s))--B),UnFill);