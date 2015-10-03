min: 
  custo_suplementar;

/* Restricoes */

/* duracoes */

duracao_0 = 4 - red_0;
duracao_1 = 6 - red_1;
duracao_2 = 7 - red_2;
duracao_4 = 9 - red_4;
duracao_5 = 4 - red_5;
duracao_6 = 5 - red_6;
duracao_7 = 6 - red_7;
duracao_9 = 2 - red_9;
duracao_10 = 8 - red_10;
duracao_11 = 7 - red_11;

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

t_final <= 19;

/* Máximo de Reduções */

max_reducoes >= red_0 + red_1 + red_2 + red_3 + red_4 + red_5
+ red_6 + red_7 + red_9 + red_10 + red_11;
red_0 <= 1;
red_1 <= 2;
red_2 <= 4;
red_4 <= 3;
red_5 <= 1;
red_6 <= 2;
red_7 <= 0;
red_9 <= 0;
red_10 <= 1;
red_11 <= 2;

/* Custo Suplementar */

custo_suplementar = 100 red_0 + 300 red_1 + 500 red_2 
+ 400 red_4 + 800 red_5 + 90 red_6 + 0 red_7 + 0 red_9
+ 500 red_10 + 300 red_11;

/* Restrições de integralidade */

int t0, t1, t2, t3, t4, t5, t6, t7, t8, t9, t10, t11, t_final
, duracao_0, duracao_1, duracao_2, duracao_4, duracao_5, duracao_6
, duracao_9, duracao_10, duracao_11;
