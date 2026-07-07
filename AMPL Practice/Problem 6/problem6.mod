set T;
set C;

param w{T};
param v{T};
param p{T};

param W{C};
param V{C};

var x{T, C} >= 0;

maximize profit: sum {i in T, j in C} p[i]*x[i,j];

s.t. maxW {j in C}: sum {i in T} x[i,j] <= W[j];
s.t. maxV {j in C}: sum {i in T} v[i]*x[i,j] <= V[j];
s.t. cargoAmt {i in T}: sum {j in C} x[i,j] <= w[i];
s.t. ratio12: W[2]*(sum {i in T} x[i,1]) - W[1]*(sum {i in T} x[i,2]) = 0;
s.t. ratio23: W[3]*(sum {i in T} x[i,2]) - W[2]*(sum {i in T} x[i,3]) = 0;
