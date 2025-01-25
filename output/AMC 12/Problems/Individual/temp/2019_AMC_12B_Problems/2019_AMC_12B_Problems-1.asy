if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="2019_AMC_12B_Problems-1";
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
import olympiad;
unitsize(50);
for (int i = 0; i < 3; ++i) {
for (int j = 0; j < 4; ++j) {
pair A = (j,i);
dot(A);

}
}
for (int i = 0; i < 3; ++i) {
for (int j = 0; j < 4; ++j) {
if (j != 3) {
draw((j,i)--(j+1,i));
}
if (i != 2) {
draw((j,i)--(j,i+1));
}
}
}
label("$A$", (0,2), W);
label("$L$", (3,0), E);
