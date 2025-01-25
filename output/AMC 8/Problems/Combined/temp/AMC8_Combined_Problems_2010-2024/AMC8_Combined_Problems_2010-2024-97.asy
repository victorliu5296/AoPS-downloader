if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="AMC8_Combined_Problems_2010-2024-97";
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
/* AMC8 P14 2024, by NUMANA: BUI VAN HIEU */
import graph;
unitsize(2cm);
real r=0.25;
// Define the nodes and their positions
pair[] nodes = { (0,0), (2,0), (1,1), (3,1), (4,0), (6,0) };
string[] labels = { "A", "M", "X", "Y", "C", "Z" };

// Draw the nodes as circles with labels
for(int i = 0; i < nodes.length; ++i) {
draw(circle(nodes[i], r));
label("$" + labels[i] + "$", nodes[i]);
}
// Define the edges with their node indices and labels
int[][] edges = { {0, 1}, {0, 2}, {2, 1}, {2, 3}, {1, 3}, {1, 4}, {3, 4}, {4, 5}, {3, 5} };
string[] edgeLabels = { "8", "5", "2", "10", "6", "14", "5", "10", "17" };
pair[] edgeLabelsPos = { S, SE, SW, S, SE, S, SW, S, NE};
// Draw the edges with labels
for (int i = 0; i < edges.length; ++i) {
pair start = nodes[edges[i][0]];
pair end = nodes[edges[i][1]];
draw(start + r*dir(end-start) -- end-r*dir(end-start), Arrow);
label("$" + edgeLabels[i] + "$", midpoint(start -- end), edgeLabelsPos[i]);
}
// Draw the curved edge with label
draw(nodes[1]+r * dir(-45)..controls (3, -0.75) and (5, -0.75)..nodes[5]+r * dir(-135), Arrow);
label("$25$", midpoint(nodes[1]..controls (3, -0.75) and (5, -0.75)..nodes[5]), 2S);
