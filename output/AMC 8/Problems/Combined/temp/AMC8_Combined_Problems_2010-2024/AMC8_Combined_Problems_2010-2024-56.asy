if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="AMC8_Combined_Problems_2010-2024-56";
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
unitsize(2cm);
pair x, y, z, trans;
int i;

x = dir(-5);
y = (0.6,0.5);
z = (0,1);
trans = (2,0);

for (i = 0; i <= 2; ++i) {
draw(shift(i*trans)*((0,0)--x--(x + y)--(x + y + z)--(y + z)--z--cycle));
draw(shift(i*trans)*((x + z)--x));
draw(shift(i*trans)*((x + z)--(x + y + z)));
draw(shift(i*trans)*((x + z)--z));
}

label(rotate(-3)*"$R$", (x + z)/2);
label(rotate(-5)*slant(0.5)*"$B$", ((x + z) + (y + z))/2);
label(rotate(35)*slant(0.5)*"$G$", ((x + z) + (x + y))/2);

label(rotate(-3)*"$W$", (x + z)/2 + trans);
label(rotate(50)*slant(-1)*"$B$", ((x + z) + (y + z))/2 + trans);
label(rotate(35)*slant(0.5)*"$R$", ((x + z) + (x + y))/2 + trans);

label(rotate(-3)*"$P$", (x + z)/2 + 2*trans);
label(rotate(-5)*slant(0.5)*"$R$", ((x + z) + (y + z))/2 + 2*trans);
label(rotate(-85)*slant(-1)*"$G$", ((x + z) + (x + y))/2 + 2*trans);
