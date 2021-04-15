Sets
i farms / 1*7 /
j sites / A,B,C,D,E,F /
s scenarios /1*3/

Parameters
cap(j) daily capacity of site j (tons)
/A       8
 B       9
 C       10
 D       9
 E       10
 F       11
 /
f(j) daily fixed cost of site j (TL)
/A       200
 B       250
 C       275
 D       200
 E       250
 F       300
 /
v(j) variable cost for site j (TL per tons)
/A       9
 B       10
 C       12
 D       10
 E       9
 F       10
 /
t transportation cost (TL per km)
/3/
opt(s) cost of the optimum solution for scenario s (TL)
/1 1903.5
 2 2048
 3 2386
 /
;
Table dm(i,s) daily demand of farm i in scenario s (tons)
  1    2    3
1 3.5  2    5
2 4.5  5    4
3 3.5  3    4
4 5    6    7
5 3    4    4
6 3    4    6
7 4.5  5    5
;

Table d(j,i) distance between farm i and site j (km)
  1       2       3       4       5       6       7
A 18      23      19      21      24      17      3
B 21      1       17      23      11      18      20
C 27      18      5       20      23      9       18
D 16      23      9       31      21      23      3
E 3       20      18      19      10      17      18
F 18      17      29      10      22      18      8
;

Variable
w maximum regret
z objective function
x(j) whether the silo in site j is purchased or not
y(i,j,s) fraction of farm i's demand served by silo in site j in scenario s
b(i,j,s) whether the farm i is served by the silo in site j in scenario s

Integer Variable  x, b;
Positive Variable y;

Equations

ObjectiveFunction
Demand
CapacityAndLinkage
MaximumRegret
Linkage
;

ObjectiveFunction..  z =e= w;
Demand(i,s).. sum(j,y(i,j,s))=e=1;
CapacityAndLinkage(j,s).. sum(i,dm(i,s)*y(i,j,s))=l=cap(j)*x(j);
MaximumRegret(s)..  ( sum(j,x(j)*f(j))+sum((i,j),v(j)*dm(i,s)*y(i,j,s))+sum((i,j),dm(i,s)*y(i,j,s)*d(j,i)*t) + sum((i,j),b(i,j,s)*d(j,i)*t)) - opt(s) =l= w;
Linkage(i,j,s).. y(i,j,s) =l= b(i,j,s);

option optca=0;
option optcr=0;
Model Assignment1 /all/;
Assignment1.optfile=1;
$onecho > cplex.opt
rhsrng all
objrng all
$offecho


Solve Assignment1 using mip minimizing z ;
display z.l, x.l, y.l, b.l;
