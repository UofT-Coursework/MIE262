set W;
set C;

param S{W};
param D{C};
param M{W,C};

var x{W,C} >= 0;

minimize Cost: sum{i in W, j in C} M[i,j]*x[i,j];

s.t. s_const {i in W}: sum{j in C} x[i,j] = S[i];
s.t. d_const {j in C}: sum{i in W} x[i,j] = D[j]; 
