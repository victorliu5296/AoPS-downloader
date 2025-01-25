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
import three;
size(7.5cm);
triple eye = (-4, -8, 3);
currentprojection = perspective(eye);
triple[] P = {(1, -1, -1), (-1, -1, -1), (-1, 1, -1), (-1, -1, 1), (1, -1, -1)};
triple[] Pp = {-P[0], -P[1], -P[2], -P[3], -P[4]};
triple pt(int k){ return (3*P[k] + P[1])/4; }
triple ptp(int k){ return (3*Pp[k] + Pp[1])/4; }
draw(pt(2)--pt(3)--pt(4)--cycle, gray(0.6));
draw(ptp(2)--pt(3)--ptp(4)--cycle, gray(0.6));
draw(ptp(2)--pt(4), gray(0.6));
draw(pt(2)--ptp(4), gray(0.6));
draw(pt(4)--ptp(3)--pt(2), gray(0.6) + linetype("4 4"));
draw(ptp(4)--ptp(3)--ptp(2), gray(0.6) + linetype("4 4"));
for(int i = 0; i < 4; ++i){
draw(P[1]--P[i]); draw(Pp[1]--Pp[i]);
for(int j = 0; j < 4; ++j){
if(i == 1 || j == 1 || i == j) continue;
draw(P[i]--Pp[j]); draw(Pp[i]--P[j]);
}
dot(P[i]); dot(Pp[i]);
dot(pt(i)); dot(ptp(i));
}
label("$P_1$", P[1], dir(P[1]));
label("$P_2$", P[2], dir(P[2]));
label("$P_3$", P[3], dir(-45));
label("$P_4$", P[4], dir(P[4]));
label("$P'_1$", Pp[1], dir(Pp[1]));
label("$P'_2$", Pp[2], dir(Pp[2]));
label("$P'_3$", Pp[3], dir(-100));
label("$P'_4$", Pp[4], dir(Pp[4]));