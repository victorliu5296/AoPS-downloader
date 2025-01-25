if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="AMC8_Combined_Problems_2010-2024-59";
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
import three;
currentprojection=orthographic(1.75,7,2);

//++++ edit colors, names are self-explainatory ++++
//pen top=rgb(27/255, 135/255, 212/255);
//pen right=rgb(254/255,245/255,182/255);
//pen left=rgb(153/255,200/255,99/255);
pen top = rgb(170/255, 170/255, 170/255);
pen left = rgb(81/255, 81/255, 81/255);
pen right = rgb(165/255, 165/255, 165/255);
pen edges=black;
int max_side = 4;
//+++++++++++++++++++++++++++++++++++++++

path3 leftface=(1,0,0)--(1,1,0)--(1,1,1)--(1,0,1)--cycle;
path3 rightface=(0,1,0)--(1,1,0)--(1,1,1)--(0,1,1)--cycle;
path3 topface=(0,0,1)--(1,0,1)--(1,1,1)--(0,1,1)--cycle;

for(int i=0; i<max_side; ++i){
for(int j=0; j<max_side; ++j){

draw(shift(i,j,-1)*surface(topface),top);
draw(shift(i,j,-1)*topface,edges);

draw(shift(i,-1,j)*surface(rightface),right);
draw(shift(i,-1,j)*rightface,edges);

draw(shift(-1,j,i)*surface(leftface),left);
draw(shift(-1,j,i)*leftface,edges);

}
}

picture CUBE;
draw(CUBE,surface(leftface),left,nolight);
draw(CUBE,surface(rightface),right,nolight);
draw(CUBE,surface(topface),top,nolight);
draw(CUBE,topface,edges);
draw(CUBE,leftface,edges);
draw(CUBE,rightface,edges);

int[][] heights = {{4,4,4,4},{4,4,4,4},{4,4,4,4},{4,4,4,4}};

for (int i = 0; i < max_side; ++i) {
for (int j = 0; j < max_side; ++j) {
for (int k = 0; k < min(heights[i][j], max_side); ++k) {
add(shift(i,j,k)*CUBE);
}
}
}
