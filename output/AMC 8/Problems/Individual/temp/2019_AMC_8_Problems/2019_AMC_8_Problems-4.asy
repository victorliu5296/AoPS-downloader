if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="2019_AMC_8_Problems-4";
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
unitsize(2mm);
defaultpen(fontsize(8bp));
real d = 5;
real t = 0.7;
real r;
int[] num = {20,26,16,22,16};
string[] days = {"Monday","Tuesday","Wednesday","Thursday","Friday"};
for (int i=0; i<30;
i=i+2) { draw((i,0)--(i,-5*d),gray);
}for (int i=0;
i<5;
++i) { r = -1*(i+0.5)*d;
fill((0,r-t)--(0,r+t)--(num[i],r+t)--(num[i],r-t)--cycle,gray);
label(days[i],(-1,r),W);
}for(int i=0;
i<32;
i=i+4) { label(string(i),(i,1));
}label("Number of students at soccer practice",(14,3.5));
