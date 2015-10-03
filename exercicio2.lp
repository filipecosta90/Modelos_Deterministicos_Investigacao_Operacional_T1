min: 
  t_final;

/* Restrições */

// nodo 0
// sem restricoes, sem precedencias

// nodo 1
t1 - t0 >= 4;

// nodo 2
t2 - t1 >= 6;
t2 - t4 >= 9;

// nodo 3
// eliminado 

// nodo 4
t4 - t0 >= 4;
t4 - t7 >= 6;

// nodo 5
t5 - t4 >= 9;
t5 - t7 >= 6;
t5 - t10 >= 8;

// nodo 6
// sem restricoes, sem precedencias

// nodo 7
t7 - t6 >=5;

// nodo 8 
// eliminado

// nodo 9
t9 - t7 >= 6;
t9 - t10 >= 8;
t9 - t11 >= 7;

// nodo 10
t10 - t6 >= 5;

// nodo 11
t11 - t10 >= 8;

// fim
t_final >= t2;
t_final >= t5;
t_final >= t9;

/* Restrições de integralidade */

int t0, t1, t2, t3, t4, t5, t6, t7, t8, t9, t10, t11, t_final;
