if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="AMC8_Combined_Problems_2010-2024-19";
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
picture corner;
draw(corner,(5,0)--(35,0));
draw(corner,(0,-5)--(0,-35));
for (int i=0; i<3; ++i)
{
for (int j=0; j>-2; --j)
{
if ((i-j)<3)
{
add(corner,(50i,50j));
}
}
}
draw((5,-100)--(45,-100));
draw((155,0)--(185,0),dotted);
draw((105,-50)--(135,-50),dotted);
draw((100,-55)--(100,-85),dotted);
draw((55,-100)--(85,-100),dotted);
draw((50,-105)--(50,-135),dotted);
draw((0,-105)--(0,-135),dotted);
