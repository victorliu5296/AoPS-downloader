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
import graph; size(16.38cm); real lsf=2; pathpen=linewidth(0.7); pointpen=black; pen fp = fontsize(10); pointfontpen=fp; real xmin=-1.33,xmax=11.05,ymin=-9.01,ymax=-0.44;
pen ycycyc=rgb(0.55,0.55,0.55);
pair A=(1,-6), B=(1,-2), D=(1,-5.8), E=(1,-5.6), F=(1,-5.4), G=(1,-5.2), H=(1,-5), J=(1,-4.8), K=(1,-4.6), L=(1,-4.4), M=(1,-4.2), N=(1,-4), P=(1,-3.8), Q=(1,-3.6), R=(1,-3.4), S=(1,-3.2), T=(1,-3), U=(1,-2.8), V=(1,-2.6), W=(1,-2.4), Z=(1,-2.2), E_1=(1.4,-2.6), F_1=(1.8,-2.6), O_1=(14,-6), P_1=(14,-5), Q_1=(14,-4), R_1=(14,-3), S_1=(14,-2), C_1=(1.4,-6), D_1=(1.8,-6), G_1=(2.4,-6), H_1=(2.8,-6), I_1=(3.4,-6), J_1=(3.8,-6), K_1=(4.4,-6), L_1=(4.8,-6), M_1=(5.4,-6), N_1=(5.8,-6), T_1=(6.4,-6), U_1=(6.8,-6), V_1=(7.4,-6), W_1=(7.8,-6), Z_1=(8.4,-6), A_2=(8.8,-6), B_2=(9.4,-6), C_2=(9.8,-6), D_2=(10.4,-6), E_2=(10.8,-6), L_2=(2.4,-3.2), M_2=(2.8,-3.2), N_2=(3.4,-4), O_2=(3.8,-4), P_2=(4.4,-3.6), Q_2=(4.8,-3.6), R_2=(5.4,-3.6), S_2=(5.8,-3.6), T_2=(6.4,-3.4), U_2=(6.8,-3.4), V_2=(7.4,-3.8), W_2=(7.8,-3.8), Z_2=(8.4,-2.8), A_3=(8.8,-2.8), B_3=(9.4,-3.2), C_3=(9.8,-3.2), D_3=(10.4,-3.8), E_3=(10.8,-3.8);
filldraw(C_1--E_1--F_1--D_1--cycle,ycycyc); filldraw(G_1--L_2--M_2--H_1--cycle,ycycyc); filldraw(I_1--N_2--O_2--J_1--cycle,ycycyc); filldraw(K_1--P_2--Q_2--L_1--cycle,ycycyc); filldraw(M_1--R_2--S_2--N_1--cycle,ycycyc); filldraw(T_1--T_2--U_2--U_1--cycle,ycycyc); filldraw(V_1--V_2--W_2--W_1--cycle,ycycyc); filldraw(Z_1--Z_2--A_3--A_2--cycle,ycycyc); filldraw(B_2--B_3--C_3--C_2--cycle,ycycyc); filldraw(D_2--D_3--E_3--E_2--cycle,ycycyc); D(B--A,linewidth(0.4)); D(H--(8,-5),linewidth(0.4)); D(N--(8,-4),linewidth(0.4)); D(T--(8,-3),linewidth(0.4)); D(B--(8,-2),linewidth(0.4)); D(B--S_1); D(T--R_1); D(N--Q_1); D(H--P_1); D(A--O_1); D(C_1--E_1); D(E_1--F_1); D(F_1--D_1); D(D_1--C_1); D(G_1--L_2); D(L_2--M_2); D(M_2--H_1); D(H_1--G_1); D(I_1--N_2); D(N_2--O_2); D(O_2--J_1); D(J_1--I_1); D(K_1--P_2); D(P_2--Q_2); D(Q_2--L_1); D(L_1--K_1); D(M_1--R_2); D(R_2--S_2); D(S_2--N_1); D(N_1--M_1); D(T_1--T_2); D(T_2--U_2); D(U_2--U_1); D(U_1--T_1); D(V_1--V_2); D(V_2--W_2); D(W_2--W_1); D(W_1--V_1); D(Z_1--Z_2); D(Z_2--A_3); D(A_3--A_2); D(A_2--Z_1); D(B_2--B_3); D(B_3--C_3); D(C_3--C_2); D(C_2--B_2); D(D_2--D_3); D(D_3--E_3); D(E_3--E_2); D(E_2--D_2); label("0",(0.88,-5.91),SE*lsf,fp); label("$ 5$",(0.3,-4.84),SE*lsf,fp); label("$ 10$",(0.2,-3.84),SE*lsf,fp); label("$ 15$",(0.2,-2.85),SE*lsf,fp); label("$ 20$",(0.2,-1.85),SE*lsf,fp); label("$\mathrm{Price}$",(0.16,-3.45),SE*lsf,fp); label("$1$",(1.54,-5.97),SE*lsf,fp); label("$2$",(2.53,-5.95),SE*lsf,fp); label("$3$",(3.53,-5.94),SE*lsf,fp); label("$4$",(4.55,-5.94),SE*lsf,fp); label("$5$",(5.49,-5.95),SE*lsf,fp); label("$6$",(6.53,-5.95),SE*lsf,fp); label("$7$",(7.55,-5.95),SE*lsf,fp); label("$8$",(8.52,-5.95),SE*lsf,fp); label("$9$",(9.57,-5.97),SE*lsf,fp); label("$10$",(10.56,-5.94),SE*lsf,fp); label("Month",(7.14,-6.43),SE*lsf,fp);
D(A,linewidth(1pt)); D(B,linewidth(1pt)); D(D,linewidth(1pt)); D(E,linewidth(1pt)); D(F,linewidth(1pt)); D(G,linewidth(1pt)); D(H,linewidth(1pt)); D(J,linewidth(1pt)); D(K,linewidth(1pt)); D(L,linewidth(1pt)); D(M,linewidth(1pt)); D(N,linewidth(1pt)); D(P,linewidth(1pt)); D(Q,linewidth(1pt)); D(R,linewidth(1pt)); D(S,linewidth(1pt)); D(T,linewidth(1pt)); D(U,linewidth(1pt)); D(V,linewidth(1pt)); D(W,linewidth(1pt)); D(Z,linewidth(1pt)); D(E_1,linewidth(1pt)); D(F_1,linewidth(1pt)); D(O_1,linewidth(1pt)); D(P_1,linewidth(1pt)); D(Q_1,linewidth(1pt)); D(R_1,linewidth(1pt)); D(S_1,linewidth(1pt)); D(C_1,linewidth(1pt)); D(D_1,linewidth(1pt)); D(G_1,linewidth(1pt)); D(H_1,linewidth(1pt)); D(I_1,linewidth(1pt)); D(J_1,linewidth(1pt)); D(K_1,linewidth(1pt)); D(L_1,linewidth(1pt)); D(M_1,linewidth(1pt)); D(N_1,linewidth(1pt)); D(T_1,linewidth(1pt)); D(U_1,linewidth(1pt)); D(V_1,linewidth(1pt)); D(W_1,linewidth(1pt)); D(Z_1,linewidth(1pt)); D(A_2,linewidth(1pt)); D(B_2,linewidth(1pt)); D(C_2,linewidth(1pt)); D(D_2,linewidth(1pt)); D(E_2,linewidth(1pt)); D(L_2,linewidth(1pt)); D(M_2,linewidth(1pt)); D(N_2,linewidth(1pt)); D(O_2,linewidth(1pt)); D(P_2,linewidth(1pt)); D(Q_2,linewidth(1pt)); D(R_2,linewidth(1pt)); D(S_2,linewidth(1pt)); D(T_2,linewidth(1pt)); D(U_2,linewidth(1pt)); D(V_2,linewidth(1pt)); D(W_2,linewidth(1pt)); D(Z_2,linewidth(1pt)); D(A_3,linewidth(1pt)); D(B_3,linewidth(1pt)); D(C_3,linewidth(1pt)); D(D_3,linewidth(1pt)); D(E_3,linewidth(1pt));
clip((xmin,ymin)--(xmin,ymax)--(xmax,ymax)--(xmax,ymin)--cycle);