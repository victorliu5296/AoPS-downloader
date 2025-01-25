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
unitsize(4);
pair P,Q,R,S,T,U,V,W;
P=(0,30); Q=(30,30); R=(40,40); S=(10,40); T=(10,10); U=(40,10); V=(30,0); W=(0,0);
draw(W--V); draw(V--Q); draw(Q--P); draw(P--W); draw(T--U); draw(U--R); draw(R--S); draw(S--T); draw(W--T); draw(P--S); draw(V--U); draw(Q--R);
dot(P);
dot(Q);
dot(R);
dot(S);
dot(T);
dot(U);
dot(V);
dot(W);
label("$P$",P,NW);
label("$Q$",Q,NW);
label("$R$",R,NE);
label("$S$",S,N);
label("$T$",T,NE);
label("$U$",U,NE);
label("$V$",V,SE);
label("$W$",W,SW);