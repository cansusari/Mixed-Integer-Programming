Set
i  nodes /1*20/;
Alias(i,j);
Set
arc(i,j) arc from node i to j
/
2 .6
2 .7
2 .13
2 .14
2 .15
4 .9
4 .11
4 .12
4 .13
4 .15
6 .11
6 .12
6 .18
6 .19
6 .20
7 .11
7 .12
7 .18
7 .19
7 .20
9 .14
9 .16
9 .17
9 .18
9 .20
11 .16
11 .17
12 .16
12 .17
13 .18
13 .20
14 .19
15 .18
15 .20/;

Parameter
b(i) number of units available at node i
/2  1
 4  1
 7  1/ ;
Table c(i,j) cost of shipping from node i to node j
        1        2        3        4        5        6        7        8        9       10        11       12       13       14       15       16       17       18       19       20
1       0        0        0        0        0        0        0        0        0        0        0        0        0        0        0        0        0        0        0        0
2       0        0        0        0        0        2000     0        0        0        0        0        0        4000     -3200    4000     0        0        0        0        0
3       0        0        0        0        0        0        0        0        0        0        0        0        0        0        0        0        0        0        0        0
4       0        0        0        0        0        0        0        0        0        0        4000     4000     4000     0        4000     0        0        0        0        0
5       0        0        0        0        0        0        0        0        0        0        0        0        0        0        0        0        0        0        0        0
6       0        0        0        0        0        0        0        0        0        0        0        2000     0        0        0        0        0        4000     4000     4000
7       0        0        0        0        0        0        0        0        0        0        2000     0        0        0        0        0        0        4000     4000     4000
8       0        0        0        0        0        0        0        0        0        0        0        0        0        0        0        0        0        0        0        0
9       0        0        0        0        0        0        0        0        0        0        0        0        0        0        0        4000     4000     4000     0        4000
10      0        0        0        0        0        0        0        0        0        0        0        0        0        0        0        0        0        0        0        0
11      0        0        0        0        0        0        0        0        0        0        0        0        0        0        0        0        -1600    0        0        0
12      0        0        0        0        0        0        0        0        0        0        0        0        0        0        0        2000     0        0        0        0
13      0        0        0        0        0        0        0        0        0        0        0        0        0        0        0        0        0        0        0        2000
14      0        0        0        0        0        0        0        0        0        0        0        0        0        0        0        0        0        0        0        0
15      0        0        0        0        0        0        0        0        0        0        0        0        0        0        0        0        0        2000     0        0
16      0        0        0        0        0        0        0        0        0        0        0        0        0        0        0        0        0        0        0        0
17      0        0        0        0        0        0        0        0        0        0        0        0        0        0        0        0        0        0        0        0
18      0        0        0        0        0        0        0        0        0        0        0        0        0        0        0        0        0        0        0        0
19      0        0        0        0        0        0        0        0        0        0        0        0        0        0        0        0        0        0        0        0
20      0        0        0        0        0        0        0        0        0        0        0        0        0        0        0        0        0        0        0        0;

Positive variables
x(i,j) number of units shipped along arc from i to j;

Variable z;

Equations
obj,
balance(i)
;
obj.. z =E= sum(arc(i,j),c(arc)*x(arc));
balance(i)$(ord(i) le 15).. sum(arc(i,j),x(i,j)) - sum(arc(j,i),x(j,i)) =E= b(i);

option optca=0;
option optcr=0;
Model Assignment1 /all/;
Assignment1.optfile=1;
$onecho > cplex.opt
rhsrng all
objrng all
$offecho
Solve Assignment1 using lp minimizing z ;
display z.l, x.l;
