#sets
set F; #set of foods
set N; #set of nutrients

#Parameters
param a{F,N};  #nutrition facts
param c{F}; 	   #unit cost of foods
param Fmin{F}; #minimum servings
param Fmax{F}; #maximum servings
param Nmin{N}; #minimum level of nutrient
param Nmax{N}; #maximum lelvel of nutrient


#variables
var x{F} >=0; #amount of each food


#model
minimize Cost: sum{i in F} c[i]*x[i];

subject to co1{j in N}: sum{i in F} a[i,j]*x[i] >= Nmin[j];
subject to co2{j in N}: sum{i in F} a[i,j]*x[i] <= Nmax[j]; 
subject to co3{i in F}: x[i] >= Fmin[i];
subject to co4{i in F}: x[i] <= Fmax[i];



