min: 
   custo_total;

/* Restricoes */

/* duracoes */

duracao_0 = 4 -  red_0 - red_c2_0;
duracao_1 = 6 - red_1 - red_c2_1;
duracao_2 = 7 - red_2 - red_c2_2;
duracao_4 = 9 - red_4 - red_c2_4;
duracao_5 = 4 - red_5 - red_c2_5;
duracao_6 = 5 - red_6 - red_c2_6;
duracao_7 = 6 - red_7 - red_c2_7;
duracao_9 = 2 - red_9 - red_c2_9;
duracao_10 = 8 - red_10 - red_c2_10;
duracao_11 = 7 - red_11 - red_c2_11;

// nodo 0
// sem restricoes, sem precedencias

// nodo 1
t1 - t0 >= duracao_0;

// nodo 2
t2 - t1 >= duracao_1;
t2 - t4 >= duracao_4;

// nodo 3
// eliminado 

// nodo 4
t4 - t0 >= duracao_0;
t4 - t7 >= duracao_7;

// nodo 5
t5 - t4 >= duracao_4;
t5 - t7 >= duracao_7;
t5 - t10 >= duracao_10;

// nodo 6
// sem restricoes, sem precedencias

// nodo 7
t7 - t6 >= duracao_6;

// nodo 8 
// eliminado

// nodo 9
t9 - t7 >= duracao_7;
t9 - t10 >= duracao_10;
t9 - t11 >= duracao_11;

// nodo 10
t10 - t6 >= duracao_6;

// nodo 11
t11 - t10 >= duracao_10;

// fim
t_final - t2 >= duracao_2;
t_final - t5 >= duracao_5;
t_final - t9 >= duracao_9;

t_final <=23;

/* Máximo de Reduções */

max_reducoes = 4;
  red_0 + red_c2_0 + red_1 + red_c2_1 + red_2 + red_c2_2 
+ red_3 + red_c2_3 + red_4 + red_c2_4 + red_5 + red_c2_5
+ red_6 + red_c2_6 + red_7 + red_c2_7 + red_9 +red_c2_9 
+ red_10 + red_c2_10 + red_11 + red_c2_11 <= max_reducoes ;

// nodo 0
red_0 <= 0.5;
red_c2_0 <= 0.5;

// nodo 1
red_1 <= 1;
red_c2_1 <= 1;

// nodo 2
red_2 <= 1;
red_c2_2 <= 3;

// nodo 4
red_4 <= 1;
red_c2_4 <= 2;

// nodo 5
red_5 <= 0.5;
red_c2_5 <= 0.5;

// nodo 6
red_6 <= 1;
red_c2_6 <= 1;

// nodo 7
red_7 <= 0;
red_c2_7 <= 0;

// nodo 9
red_9 <= 0;
red_c2_9 <= 0;

// nodo 10
red_10 <= 0.5;
red_c2_10 <= 0.5;

// nodo 11
red_11 <= 1;
red_c2_11 <= 1;

/* Custo Normal */
custo_normal = 400 + 1000 + 1400 + 0 + 2000 + 1000 + 800 + 900 + 0 + 300 + 1600 + 1400; 


/* Custo Suplementar */

custo_suplementar_c1 = 100 red_0 + 300 red_1 + 500 red_2 
+ 400 red_4 + 800 red_5 + 90 red_6 + 0 red_7 + 0 red_9
+ 500 red_10 + 300 red_11;

custo_suplementar_c2 = 200 red_c2_0 + 600 red_c2_1 + 1000 red_c2_2
+ 800 red_c2_4 + 1600 red_c2_5 + 180 red_c2_6 + 0 red_c2_7 + 0 red_c2_9
+ 1000 red_c2_10 + 600 red_c2_11;

custo_total = custo_normal + custo_suplementar_c1 + custo_suplementar_c2;
