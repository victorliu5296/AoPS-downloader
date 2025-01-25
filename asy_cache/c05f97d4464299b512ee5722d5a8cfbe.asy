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
size(250);
path p = scale(0.8)*unitcircle;
pair[] A;
pen grey1 = rgb(100/256, 100/256, 100/256);
pen grey2 = rgb(183/256, 183/256, 183/256);
for (int i=0; i<7; ++i) { A[i] = rotate(60*i)*(1,0);}
path hex = A[0]--A[1]--A[2]--A[3]--A[4]--A[5]--cycle;
fill(p,grey1);
draw(scale(1.25)*hex,black+linewidth(1.25));
pair S = 6A[0]+2A[1];
fill(shift(S)*p,grey1);
for (int i=0; i<6; ++i) { fill(shift(S+2*A[i])*p,grey2);}
draw(shift(S)*scale(3.25)*hex,black+linewidth(1.25));
pair T = 16A[0]+4A[1];
fill(shift(T)*p,grey1);
for (int i=0; i<6; ++i) {
fill(shift(T+2*A[i])*p,grey2);
fill(shift(T+4*A[i])*p,grey1);
fill(shift(T+2*A[i]+2*A[i+1])*p,grey1);
}
draw(shift(T)*scale(5.25)*hex,black+linewidth(1.25));