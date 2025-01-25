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
unitsize(10mm);
defaultpen(linewidth(1.2pt)+fontsize(10pt));
dotfactor=4;
pair A=(1,0), B=(4.24,0), C=(5.24,3.08), D=(2.62,4.98), E=(0,3.08);
dot (A);
dot (B);
dot (C);
dot (D);
dot (E);
label("$A$",A,S);
label("$B$",B,SE);
label("$C$",C,E);
label("$D$",D,N);
label("$E$",E,W);
guide squiggly(path g, real stepsize, real slope=45)
{
real len = arclength(g);
real step = len / round(len / stepsize);
guide squig;
for (real u = 0; u < len; u += step){
real a = arctime(g, u);
real b = arctime(g, u + step / 2);
pair p = point(g, a);
pair q = point(g, b);
pair np = unit( rotate(slope) * dir(g,a));
pair nq = unit( rotate(0 - slope) * dir(g,b));
squig = squig .. p{np} .. q{nq};
}
squig = squig .. point(g, length(g)){unit(rotate(slope)*dir(g,length(g)))};
return squig;
}
pen pp = defaultpen + 2.718;
draw(squiggly(A--B, 4.04, 30), pp);
draw(squiggly(A--D, 7.777, 20), pp);
draw(squiggly(A--E, 5.050, 15), pp);
draw(squiggly(B--C, 5.050, 15), pp);
draw(squiggly(B--D, 4.04, 20), pp);
draw(squiggly(C--D, 2.718, 20), pp);
draw(squiggly(D--E, 2.718, -60), pp);