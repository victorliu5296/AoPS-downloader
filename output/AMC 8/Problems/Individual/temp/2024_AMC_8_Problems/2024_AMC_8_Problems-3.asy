if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="2024_AMC_8_Problems-3";
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
/* AMC8 P13 2024, revised by Teacher David */
/**
* This Geometry Artwork/Graph is designed using GeoSketch v1.0,
* a free software tool created by Tina Yan, William Zhong, and
* Teacher David.
*
* For more information, please refer to
* https://geosketch.org (under construction)
*/
defaultpen(linewidth(1pt));
unitsize(0.3pt);
import graph;
/**
* Define a quadratic bezier curve function.
*/
typedef pair quad_bezier(real t);
quad_bezier fungen (pair a, pair b, pair c) {
return new pair (real t) {
real x = (1-t)*(1-t)*a.x + 2*(1-t)*t*b.x + t*t*c.x;
real y = (1-t)*(1-t)*a.y + 2*(1-t)*t*b.y + t*t*c.y;
return (x,y);
};
}

quad_bezier qb0 = fungen((293,243),(237,276),(239,310));
draw(graph(qb0, 0,1));
quad_bezier qb1 = fungen((239,310),(274,301),(295,254));
draw(graph(qb1, 0,1));
quad_bezier qb2 = fungen((266,294),(260,309),(266,323));
draw(graph(qb2, 0,1));
quad_bezier qb3 = fungen((266,323),(294,311),(302,257));
draw(graph(qb3, 0,1));
quad_bezier qb4 = fungen((333,258),(341,249),(348,244));
draw(graph(qb4, 0,1));
quad_bezier qb5 = fungen((348,244),(355,241),(351,234));
draw(graph(qb5, 0,1));
quad_bezier qb6 = fungen((351,234),(348,226),(338,226));
draw(graph(qb6, 0,1));
quad_bezier qb7 = fungen((351,234),(350,219),(321,208));
draw(graph(qb7, 0,1));
quad_bezier qb8 = fungen((260,247),(135,293),(137,170));
draw(graph(qb8, 0,1));
quad_bezier qb9 = fungen((122,161),(132,147),(148,144));
draw(graph(qb9, 0,1));
quad_bezier qb10 = fungen((148,144),(176,155),(204,146));
draw(graph(qb10, 0,1));
quad_bezier qb11 = fungen((204,146),(216,141),(235,137));
draw(graph(qb11, 0,1));
quad_bezier qb12 = fungen((228,156),(208,160),(188,161));
draw(graph(qb12, 0,1));
quad_bezier qb13 = fungen((319,214),(313,174),(283,168));
draw(graph(qb13, 0,1));
quad_bezier qb14 = fungen((228,156),(242,158),(247,171));
draw(graph(qb14, 0,1));
quad_bezier qb15 = fungen((245,181),(250,158),(266,143));
draw(graph(qb15, 0,1));
quad_bezier qb16 = fungen((266,143),(287,134),(298,135));
draw(graph(qb16, 0,1));
quad_bezier qb17 = fungen((298,135),(309,143),(300,148));
draw(graph(qb17, 0,1));
quad_bezier qb18 = fungen((300,148),(272,150),(270,175));
draw(graph(qb18, 0,1));
quad_bezier qb19 = fungen((282,177),(274,158),(300,148));
draw(graph(qb19, 0,1));

draw(arc((317.8948497854077,245.25965665236052), 19.760615163024095, 143.54947493250435, 40.14574559948477));
draw(arc((282.65584415584414,295.7857142857143), 53.78971270402217, -78.91253214600312, -114.90992209204622));
draw(arc((127.7,168.5), 9.420191080864546, 9.162347045721713, 232.7651660184253));
draw(arc((229.125,145.625), 10.435815732370902, -55.73889710090544, 96.1886159632416));
draw(arc((186.26470588235293,181.5), 20.573313920580237, -85.1615330431756, 85.1615330431756));
filldraw(ellipse((314,235), 13.0, 10.04987562112089), rgb(254,255,255), black);
filldraw(rotate(14.036243467926468,(315,251))*ellipse((315,235), 9.219544457292887, 8.246211251235321),
rgb(0,0,0), black);

pair o = (400,190);
real len=80;
real height=56;
for (int i=0; i<4; ++i) {
pair a = (i*len, i*height);
path p = a -- a+(len,0) -- a+(len, height);
draw(shift(o)*p);
}
path p = (0,0)--(0,-height)--(4*len,-height);
draw(shift(o)*p);
