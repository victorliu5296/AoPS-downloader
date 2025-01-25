if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="2011_AMC_8_Problems-4";
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
size(300);
real i;
defaultpen(linewidth(0.8));
draw((0,140)--origin--(220,0));
for(i=1;i<13;i=i+1) {
draw((0,10*i)--(220,10*i));
}
label("$0$",origin,W);
label("$20$",(0,20),W);
label("$40$",(0,40),W);
label("$60$",(0,60),W);
label("$80$",(0,80),W);
label("$100$",(0,100),W);
label("$120$",(0,120),W);
path MonD=(20,0)--(20,60)--(30,60)--(30,0)--cycle,MonL=(30,0)--(30,70)--(40,70)--(40,0)--cycle,TuesD=(60,0)--(60,90)--(70,90)--(70,0)--cycle,TuesL=(70,0)--(70,80)--(80,80)--(80,0)--cycle,WedD=(100,0)--(100,100)--(110,100)--(110,0)--cycle,WedL=(110,0)--(110,120)--(120,120)--(120,0)--cycle,ThurD=(140,0)--(140,80)--(150,80)--(150,0)--cycle,ThurL=(150,0)--(150,110)--(160,110)--(160,0)--cycle,FriD=(180,0)--(180,70)--(190,70)--(190,0)--cycle,FriL=(190,0)--(190,50)--(200,50)--(200,0)--cycle;
fill(MonD,black);
fill(MonL,grey);
fill(TuesD,black);
fill(TuesL,grey);
fill(WedD,black);
fill(WedL,grey);
fill(ThurD,black);
fill(ThurL,grey);
fill(FriD,black);
fill(FriL,grey);
draw(MonD^^MonL^^TuesD^^TuesL^^WedD^^WedL^^ThurD^^ThurL^^FriD^^FriL);
label("M",(30,-5),S);
label("Tu",(70,-5),S);
label("W",(110,-5),S);
label("Th",(150,-5),S);
label("F",(190,-5),S);
label("M",(-25,85),W);
label("I",(-27,75),W);
label("N",(-25,65),W);
label("U",(-25,55),W);
label("T",(-25,45),W);
label("E",(-25,35),W);
label("S",(-26,25),W);
