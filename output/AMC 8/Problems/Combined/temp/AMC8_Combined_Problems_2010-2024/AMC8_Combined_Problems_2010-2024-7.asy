if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
defaultfilename="AMC8_Combined_Problems_2010-2024-7";
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
import graph; size(7.01cm); real lsf=0.5; pen dps=linewidth(0.7)+fontsize(10); defaultpen(dps); pen ds=black; real xmin=-0.42,xmax=14.59,ymin=-10.08,ymax=5.26;
pair A=(0,0), B=(4,0), C=(0,4), D=(4,4), F=(2,0), G=(3,0), H=(1,4), I=(2,4), J=(3,4), K=(0,-2), L=(4,-2), M=(0,-6), O=(0,-4), P=(4,-4), Q=(2,-2), R=(2,-6), T=(6,4), U=(10,0), V=(10,4), Z=(10,2), A_1=(8,4), B_1=(8,0), C_1=(6,-2), D_1=(10,-2), E_1=(6,-6), F_1=(10,-6), G_1=(6,-4), H_1=(10,-4), I_1=(8,-2), J_1=(8,-6), K_1=(8,-4);
draw(C--H--(1,0)--A--cycle,linewidth(1.6)); draw(M--O--Q--R--cycle,linewidth(1.6)); draw(A_1--V--Z--cycle,linewidth(1.6)); draw(G_1--K_1--J_1--E_1--cycle,linewidth(1.6));
draw(C--D); draw(D--B); draw(B--A); draw(A--C); draw(H--(1,0)); draw(I--F); draw(J--G); draw(C--H,linewidth(1.6)); draw(H--(1,0),linewidth(1.6)); draw((1,0)--A,linewidth(1.6)); draw(A--C,linewidth(1.6)); draw(K--L); draw((4,-6)--L); draw((4,-6)--M); draw(M--K); draw(O--P); draw(Q--R); draw(O--Q); draw(M--O,linewidth(1.6)); draw(O--Q,linewidth(1.6)); draw(Q--R,linewidth(1.6)); draw(R--M,linewidth(1.6)); draw(T--V); draw(V--U); draw(U--(6,0)); draw((6,0)--T); draw((6,2)--Z); draw(A_1--B_1); draw(A_1--Z); draw(A_1--V,linewidth(1.6)); draw(V--Z,linewidth(1.6)); draw(Z--A_1,linewidth(1.6)); draw(C_1--D_1); draw(D_1--F_1); draw(F_1--E_1); draw(E_1--C_1); draw(G_1--H_1); draw(I_1--J_1); draw(G_1--K_1,linewidth(1.6)); draw(K_1--J_1,linewidth(1.6)); draw(J_1--E_1,linewidth(1.6)); draw(E_1--G_1,linewidth(1.6));
dot(A,linewidth(1pt)+ds); dot(B,linewidth(1pt)+ds); dot(C,linewidth(1pt)+ds); dot(D,linewidth(1pt)+ds); dot((1,0),linewidth(1pt)+ds); dot(F,linewidth(1pt)+ds); dot(G,linewidth(1pt)+ds); dot(H,linewidth(1pt)+ds); dot(I,linewidth(1pt)+ds); dot(J,linewidth(1pt)+ds); dot(K,linewidth(1pt)+ds); dot(L,linewidth(1pt)+ds); dot(M,linewidth(1pt)+ds); dot((4,-6),linewidth(1pt)+ds); dot(O,linewidth(1pt)+ds); dot(P,linewidth(1pt)+ds); dot(Q,linewidth(1pt)+ds); dot(R,linewidth(1pt)+ds); dot((6,0),linewidth(1pt)+ds); dot(T,linewidth(1pt)+ds); dot(U,linewidth(1pt)+ds); dot(V,linewidth(1pt)+ds); dot((6,2),linewidth(1pt)+ds); dot(Z,linewidth(1pt)+ds); dot(A_1,linewidth(1pt)+ds); dot(B_1,linewidth(1pt)+ds); dot(C_1,linewidth(1pt)+ds); dot(D_1,linewidth(1pt)+ds); dot(E_1,linewidth(1pt)+ds); dot(F_1,linewidth(1pt)+ds); dot(G_1,linewidth(1pt)+ds); dot(H_1,linewidth(1pt)+ds); dot(I_1,linewidth(1pt)+ds); dot(J_1,linewidth(1pt)+ds); dot(K_1,linewidth(1pt)+ds);
clip((xmin,ymin)--(xmin,ymax)--(xmax,ymax)--(xmax,ymin)--cycle);
