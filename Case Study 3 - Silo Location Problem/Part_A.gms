Sets
i farms / 1*7 /
j sites/ A,B,C,D,E,F /

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
dm(i) daily demand of farm i (tons)
/1       3.5
 2       4.5
 3       3.5
 4       5
 5       3
 6       3
 7       4.5
/
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
z objective function
x(j) whether the silo in site j is purchased or not
y(i,j) fraction of farm i's demand served by silo in site j
b(i,j) whether the farm i is served by the silo in site j

Binary Variable  x, b;
Positive Variable y;

Equations

ObjectiveFunction
Demand
CapacityAndLinkage
Linkage
;

ObjectiveFunction..  z=e= sum(j,x(j)*f(j))+sum((i,j),v(j)*dm(i)*y(i,j))+sum((i,j),dm(i)*y(i,j)*d(j,i)*t)+ sum((i,j),b(i,j)*d(j,i)*t) ;
Demand(i).. sum(j,y(i,j))=e=1;
CapacityAndLinkage(j).. sum(i,dm(i)*y(i,j))=l=cap(j)*x(j);
Linkage(i,j).. y(i,j) =l= b(i,j);

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
