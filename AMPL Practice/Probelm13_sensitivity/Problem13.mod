#Creating sets
set I; #Index of warehouses
set J; #Index of Customers

#Defining parameters
param d{J}; #demand of customers 
param s{I}; #supply of warehouses
param c{I,J}; #Shipping costs

#Decision variables
var x{I,J} >=0; #shipping quantities

#Model
minimize Cost: sum{i in I, j in J} c[i,j]*x[i,j];

subject to co1{i in I}: sum{j in J} x[i,j] = s[i];
subject to co2{j in J}: sum{i in I} x[i,j] = d[j];
