Sets
i locations / 1*5 /
t period / 1*3 /;
alias (i,j,k);

Parameters
p profit derived from moving a load (TL per day)
/ 1600 /
c cost of moving an empty truck (TL per day)
/ 2000 /
;

Table d(i,j,t) number of loads available to be moved from origin i to destination j at time
         1.1      2.1    3.1     4.1     5.1    1.2      2.2    3.2     4.2     5.2      1.3      2.3    3.3     4.3     5.3
1                                                                                                 2
2                                1
3
4
5                        1
;

Table tt(i,j) travel time from i to j  (days)
         1       2       3       4       5
1        0       1       2       2       2
2        1       0       2       2       2
3        2       2       0       2       1
4        2       2       2       0       2
5        2       2       1       2       0
;

Table m(i,t) number of vehicles enter the system in period t at location i
         1       2       3
1
2        1       1
3
4        1
5
;

Variable
z objective function
x(i,j,t) number of vehicles start moving a load from location i to j at period t
y(i,j,t) number of vehicles start moving empty from location i to j at period t

Positive Variables x,y;

Equations
ObjectiveFunction
Beginning
FlowConservation
Demand
;
ObjectiveFunction..  z=e= sum((i,j,t)$(ord(j) ne ord(i)),p*tt(i,j)*x(i,j,t)-c*tt(i,j)*y(i,j,t));
Beginning(i).. sum(j,x(i,j,'1') + y(i,j,'1'))=e= m(i,'1');
FlowConservation(i,t)$(t.val>= 1).. sum(j,x(i,j,t)+y(i,j,t)) - sum(k$(ord (k) ne ord(i) and t.val gt tt(k,i)), x(k,i,t-tt(k,i))+ y(k,i,t-tt(k,i))) - y(i,i,t-1) =e= m(i,t);
Demand(i,j,t).. x(i,j,t) =l= d(i,j,t);

option optca=0;
option optcr=0;
Model Assignment1 /all/;
Assignment1.optfile=1;
$onecho > cplex.opt
rhsrng all
objrng all
$offecho
Solve Assignment1 using lp maximizing z ;
display z.l, x.l, y.l;
