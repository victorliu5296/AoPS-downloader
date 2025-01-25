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
import geometry;
size(10cm);
draw((-2,0)--(13,0));
draw((0,4)--(10,4));
label("$\ell_A$",(-2,0),W);
label("$\ell_B$",(0,4),W);
point A1=(0,0),A2=(5,0),A3=(11,0),B1=(2,4),B2=(8,4),I1=extension(B1,A2,A1,B2),I2=extension(B1,A3,A1,B2),I3=extension(B1,A3,A2,B2);
draw(B1--A1--B2);
draw(B1--A2--B2);
draw(B1--A3--B2);
label("$A_1$",A1,S);
label("$A_2$",A2,S);
label("$A_3$",A3,S);
label("$B_1$",B1,N);
label("$B_2$",B2,N);
label("1",centroid(A1,B1,I1));
label("2",centroid(B1,I1,I3));
label("3",centroid(B1,B2,I3));
label("4",centroid(A1,A2,I1));
label("5",(A2+I1+I2+I3)/4);
label("6",centroid(B2,I2,I3));
label("7",centroid(A2,A3,I2));
label("8",centroid(A3,B2,I2));
dot(A1);
dot(A2);
dot(A3);
dot(B1);
dot(B2);