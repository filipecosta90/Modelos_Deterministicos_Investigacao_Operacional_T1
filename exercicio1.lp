max: 
    4 xini_0 + 5 xini_6 
  + 6 x0_1 + 9 x0_4 
  + 7 x1_2 
  + 7 x4_2 + 4 x4_5 
  + 6 x6_7 + 8 x6_10
  + 9 x7_4 + 4 x7_5 + 2 x7_9 
  + 4 x10_5 + 2 x10_9 + 7 x10_11 
  + 2 x11_9
  + 0 x9_fim + 0 x5_fim + 0 x2_fim;

/* Restrições */

// unidade unitária tem que seguir po 0 ou por 6
xini_0 + xini_6 = 1;

//nodo 0
x0_1 + x0_4 <=1; 
xini_0 = x0_1 + x0_4;

//nodo 1
x1_2 <=1;
x0_1 = x1_2;

//nodo 2
x1_2 + x4_2 = x2_fim;

//nodo 4
x4_5<=1;
x0_4 + x7_4 = x4_5 + x4_2;

//nodo 5
x4_5 + x7_5 + x10_5 = x5_fim;

//nodo 6
x6_7 + x6_10 <=1;
xini_6 = x6_7 + x6_10;

//nodo 7
x7_4 + x7_5 + x7_9 <=1;
x6_7 = x7_4 + x7_5 + x7_9;

//nodo 9
x7_9 + x10_9 + x11_9 = x9_fim;

//nodo 10
x10_5 + x10_9 + x10_11 <=1;
x6_10 = x10_5 + x10_9 + x10_11;

//nodo 11
x10_11 = x11_9;

// unidade unitária tem que terminar por 2, 5 ou 9
x2_fim + x5_fim + x9_fim = 1;


/* Restrições de integralidade */
int xini_0, xini_6, x0_1, x0_4, x1_2, x4_2, x4_5, x6_7, x6_10, x7_4, x7_5, x7_9, x10_5, x10_9, x10_11, x11_9 , x9_fim, x5_fim, x2_fim;
