if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="AMC12_Combined_Problems_2010_to_2024-9";
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
size(10cm);
draw((0.0,0.0)--(1.0,1.7320508075688772)--(3.0,1.7320508075688772)--(4.0,3.4641016151377544)--(6.0,3.4641016151377544)--(7.0,5.196152422706632)--(9.0,5.196152422706632)--(10.0,6.928203230275509)--(12.0,6.928203230275509));
draw((0.0,0.0)--(1.0,1.7320508075688772)--(3.0,1.7320508075688772)--(4.0,3.4641016151377544)--(6.0,3.4641016151377544)--(7.0,5.196152422706632)--(9.0,5.196152422706632)--(10.0,6.928203230275509)--(12.0,6.928203230275509));
draw((3.0,-1.7320508075688772)--(4.0,0.0)--(6.0,0.0)--(7.0,1.7320508075688772)--(9.0,1.7320508075688772)--(10.0,3.4641016151377544)--(12.0,3.464101615137755)--(13.0,5.196152422706632)--(15.0,5.196152422706632));
draw((6.0,-3.4641016151377544)--(7.0,-1.7320508075688772)--(9.0,-1.7320508075688772)--(10.0,0.0)--(12.0,0.0)--(13.0,1.7320508075688772)--(15.0,1.7320508075688776)--(16.0,3.464101615137755)--(18.0,3.4641016151377544));
draw((9.0,-5.196152422706632)--(10.0,-3.464101615137755)--(12.0,-3.464101615137755)--(13.0,-1.7320508075688776)--(15.0,-1.7320508075688776)--(16.0,0)--(18.0,0.0)--(19.0,1.7320508075688772)--(21.0,1.7320508075688767));
draw((12.0,-6.928203230275509)--(13.0,-5.196152422706632)--(15.0,-5.196152422706632)--(16.0,-3.464101615137755)--(18.0,-3.4641016151377544)--(19.0,-1.7320508075688772)--(21.0,-1.7320508075688767)--(22.0,0));
draw((0.0,-0.0)--(1.0,-1.7320508075688772)--(3.0,-1.7320508075688772)--(4.0,-3.4641016151377544)--(6.0,-3.4641016151377544)--(7.0,-5.196152422706632)--(9.0,-5.196152422706632)--(10.0,-6.928203230275509)--(12.0,-6.928203230275509));
draw((3.0,1.7320508075688772)--(4.0,-0.0)--(6.0,-0.0)--(7.0,-1.7320508075688772)--(9.0,-1.7320508075688772)--(10.0,-3.4641016151377544)--(12.0,-3.464101615137755)--(13.0,-5.196152422706632)--(15.0,-5.196152422706632));
draw((6.0,3.4641016151377544)--(7.0,1.7320508075688772)--(9.0,1.7320508075688772)--(10.0,-0.0)--(12.0,-0.0)--(13.0,-1.7320508075688772)--(15.0,-1.7320508075688776)--(16.0,-3.464101615137755)--(18.0,-3.4641016151377544));
draw((9.0,5.1961524)--(10.0,3.464101)--(12.0,3.46410)--(13.0,1.73205)--(15.0,1.732050)--(16.0,0)--(18.0,-0.0)--(19.0,-1.7320)--(21.0,-1.73205080));
draw((12.0,6.928203)--(13.0,5.1961524)--(15.0,5.1961524)--(16.0,3.464101615)--(18.0,3.4641016)--(19.0,1.7320508)--(21.0,1.732050)--(22.0,0));
dot((0,0));
dot((22,0));
label("$A$",(0,0),WNW);
label("$B$",(22,0),E);
filldraw((2.0,1.7320508075688772)--(1.6,1.2320508075688772)--(1.75,1.7320508075688772)--(1.6,2.232050807568877)--cycle,black);
filldraw((5.0,3.4641016151377544)--(4.6,2.9641016151377544)--(4.75,3.4641016151377544)--(4.6,3.9641016151377544)--cycle,black);
filldraw((8.0,5.196152422706632)--(7.6,4.696152422706632)--(7.75,5.196152422706632)--(7.6,5.696152422706632)--cycle,black);
filldraw((11.0,6.928203230275509)--(10.6,6.428203230275509)--(10.75,6.928203230275509)--(10.6,7.428203230275509)--cycle,black);
filldraw((4.6,0.0)--(5.0,-0.5)--(4.85,0.0)--(5.0,0.5)--cycle,white);
filldraw((8.0,1.732050)--(7.6,1.2320)--(7.75,1.73205)--(7.6,2.2320)--cycle,black);
filldraw((11.0,3.4641016)--(10.6,2.9641016)--(10.75,3.46410161)--(10.6,3.964101)--cycle,black);
filldraw((14.0,5.196152422706632)--(13.6,4.696152422706632)--(13.75,5.196152422706632)--(13.6,5.696152422706632)--cycle,black);
filldraw((8.0,-1.732050)--(7.6,-2.232050)--(7.75,-1.7320508)--(7.6,-1.2320)--cycle,black);
filldraw((10.6,0.0)--(11,-0.5)--(10.85,0.0)--(11,0.5)--cycle,white);
filldraw((14.0,1.7320508075688772)--(13.6,1.2320508075688772)--(13.75,1.7320508075688772)--(13.6,2.232050807568877)--cycle,black);
filldraw((17.0,3.464101615137755)--(16.6,2.964101615137755)--(16.75,3.464101615137755)--(16.6,3.964101615137755)--cycle,black);
filldraw((11.0,-3.464101615137755)--(10.6,-3.964101615137755)--(10.75,-3.464101615137755)--(10.6,-2.964101615137755)--cycle,black);
filldraw((14.0,-1.7320508075688776)--(13.6,-2.2320508075688776)--(13.75,-1.7320508075688776)--(13.6,-1.2320508075688776)--cycle,black);
filldraw((16.6,0)--(17,-0.5)--(16.85,0)--(17,0.5)--cycle,white);
filldraw((20.0,1.7320508075688772)--(19.6,1.2320508075688772)--(19.75,1.7320508075688772)--(19.6,2.232050807568877)--cycle,black);
filldraw((14.0,-5.196152422706632)--(13.6,-5.696152422706632)--(13.75,-5.196152422706632)--(13.6,-4.696152422706632)--cycle,black);
filldraw((17.0,-3.464101615137755)--(16.6,-3.964101615137755)--(16.75,-3.464101615137755)--(16.6,-2.964101615137755)--cycle,black);
filldraw((20.0,-1.7320508075688772)--(19.6,-2.232050807568877)--(19.75,-1.7320508075688772)--(19.6,-1.2320508075688772)--cycle,black);
filldraw((2.0,-1.7320508075688772)--(1.6,-1.2320508075688772)--(1.75,-1.7320508075688772)--(1.6,-2.232050807568877)--cycle,black);
filldraw((5.0,-3.4641016)--(4.6,-2.964101)--(4.75,-3.4641)--(4.6,-3.9641016)--cycle,black);
filldraw((8.0,-5.1961524)--(7.6,-4.6961524)--(7.75,-5.19615242)--(7.6,-5.696152422)--cycle,black);
filldraw((11.0,-6.9282032)--(10.6,-6.4282032)--(10.75,-6.928203)--(10.6,-7.428203)--cycle,black);
