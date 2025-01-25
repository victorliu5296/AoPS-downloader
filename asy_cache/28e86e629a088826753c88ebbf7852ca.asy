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
import olympiad;
size(350);
defaultpen(linewidth(0.7));
pair[] coord = new pair[65];
int[] trav = {32,16,8,4,2,1};
coord[0] = (0,73^2); coord[64] = (2*73*70,70^2);
path arc1 = arc(coord[0],coord[0].y,260,360);
path arc2 = arc(coord[64],coord[64].y,175,280);
fill((coord[0].x-910,coord[0].y)--arc1--cycle,gray(0.75));
fill((coord[64].x+870,coord[64].y+425)--arc2--cycle,gray(0.75));
draw(arc1^^arc2);
draw((-930,0)--(70^2+73^2+850,0));
for(int i = 0;i<=5;i=i+1)
{
int skip = trav[i];
for(int k=skip;k<=64 - skip; k = k + 2*skip)
{
pair cent1 = coord[k-skip], cent2 = coord[k+skip];
real r1 = cent1.y, r2 = cent2.y, rn=r1*r2/((sqrt(r1)+sqrt(r2))^2);
real shiftx = cent1.x + sqrt(4*r1*rn);
coord[k] = (shiftx,rn);
}
}
for(int i=1;i<=63;i=i+1)
{
filldraw(circle(coord[i],coord[i].y),gray(0.75));
}