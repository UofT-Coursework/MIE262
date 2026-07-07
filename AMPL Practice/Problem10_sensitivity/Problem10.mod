set I;
set J;

param a;
param b{I};
param c{I,J};

var x{I,J} >= 0;

minimize cost: sum {i in I, j in J} c[i,j]*x[i,j];

subject to co1 {i in I}: sum {j in J} x[i,j] >= b[i];
subject to co2 {j in J}: sum {i in I} x[i,j] <= a;

