if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="AMC8_Combined_Problems_2010-2024-71";
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
unitsize(12);
usepackage("mathptmx");
defaultpen(fontsize(8)+linewidth(.7));
int mod12(int i) {if (i<13) {return i;} else {return i-12;}}
void drawgraph(pair sh,string lab) {
for (int i=0;i<11;++i) {
for (int j=0;j<6;++j) {
draw(shift(sh+(i,j))*unitsquare,mediumgray);
}
}
draw(shift(sh)*((-1,0)--(11,0)),EndArrow(angle=20,size=8));
draw(shift(sh)*((0,-1)--(0,6)),EndArrow(angle=20,size=8));
for (int i=1;i<10;++i) {
draw(shift(sh)*((i,-.2)--(i,.2)));
}
label("8\tiny{\textsc{am}}",sh+(1,-.2),S);

for (int i=2;i<9;++i) {
label(string(mod12(i+7)),sh+(i,-.2),S);
}
label("4\tiny{\textsc{pm}}",sh+(9,-.2),S);
for (int i=1;i<6;++i) {
label(string(30*i),sh+(0,i),2*W);
}
draw(rotate(90)*"Distance (miles)",sh+(-2.1,3),fontsize(10));
label("$\textbf{("+lab+")}$",sh+(-2.1,6.8),fontsize(12));
}
drawgraph((0,0),"A");
drawgraph((15,0),"B");
drawgraph((0,-10),"C");
drawgraph((15,-10),"D");
drawgraph((0,-20),"E");
dotfactor=6;
draw((1,0)--(3,3)--(6,3)--(8,0),linewidth(.9));
dot((1,0)^^(3,3)^^(6,3)^^(8,0));
pair sh = (15,0);
draw(shift(sh)*((1,0)--(3,1.5)--(6,1.5)--(8,0)),linewidth(.9));
dot(sh+(1,0)^^sh+(3,1.5)^^sh+(6,1.5)^^sh+(8,0));
pair sh = (0,-10);
draw(shift(sh)*((1,0)--(3,1.5)--(6,1.5)--(7.5,0)),linewidth(.9));
dot(sh+(1,0)^^sh+(3,1.5)^^sh+(6,1.5)^^sh+(7.5,0));
pair sh = (15,-10);
draw(shift(sh)*((1,0)--(3,4)--(6,4)--(9.3,0)),linewidth(.9));
dot(sh+(1,0)^^sh+(3,4)^^sh+(6,4)^^sh+(9.3,0));
pair sh = (0,-20);
draw(shift(sh)*((1,0)--(3,3)--(6,3)--(7.5,0)),linewidth(.9));
dot(sh+(1,0)^^sh+(3,3)^^sh+(6,3)^^sh+(7.5,0));
