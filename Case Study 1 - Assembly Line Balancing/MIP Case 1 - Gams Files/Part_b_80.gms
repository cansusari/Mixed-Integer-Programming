Sets
i tasks /1*20/
j type of processors /1,2/
k workstations /1*7/
m number of processor /0*4/

Table
t(i,j) time required for task i with processor j
         1       2
1        10      20
2        30      40
3        20      50
4        10      20
5        40      80
6        30      40
7        10      40
8        70      90
9        40      50
10       10      40
11       20      30
12       10      20
13       10      30
14       30      30
15       20      30
16       30      60
17       20      50
18       10      20
19       30      40
20       20      40;
Table
c(m,j) investment cost for m numbers of processor j
         1       2
0        0       0
1        100000  500000
2        180000  100000
3        250000  150000
4        340000  200000;

Variables
z total cost

Binary Variables
x(i,k) if task i is assigned to workstation k
x2(i,j,k) if task i with processor j is assigned to workstation k
x3(j,k) if processor j is assigned in workstation k
n(m,k) if m number of processors are used in workstation k
y(j,k,m) for cost equation

Equations
cost objective function
ac(i) assignment constraint for task i
ac2(i,k) assignment of processor for task i in workstation k
ac3(j,k) assignment of processor j in workstation k
sec(k) security constraint for workstation k
np(k) number of processors in workstation k
ctc(k) cycle time constraint for workstation k
pc1 precedence constraint 1
pc2 precedence constraint 2
pc3 precedence constraint 3
pc4 precedence constraint 4
pc5 precedence constraint 5
pc6 precedence constraint 6
pc7 precedence constraint 7
pc8 precedence constraint 8
pc9 precedence constraint 9
pc10 precedence constraint 10
pc11 precedence constraint 11
pc12 precedence constraint 12
pc13 precedence constraint 13
pc14 precedence constraint 14
pc15 precedence constraint 15
pc16 precedence constraint 16
pc17 precedence constraint 17
pc18 precedence constraint 18
pc19 precedence constraint 19
pc20 precedence constraint 20
pc21 precedence constraint 21
pc22 precedence constraint 22
pc23 precedence constraint 23
ac4(j,k,m) assignment for cost equation;

cost.. z =e= sum((j,k,m),y(j,k,m)*c(m,j))+sum((k,m),5*250*m.val*(y('1',k,m)*3+y('2',k,m)*15)) ;
ac(i).. sum(k,x(i,k)) =e= 1;
ac2(i,k).. x(i,k) =e= sum(j,x2(i,j,k));
ac3(j,k)..  sum(i,x2(i,j,k))=l= 20*x3(j,k);
sec(k).. sum(j,x3(j,k)) =l= 1;
np(k).. sum(m,n(m,k)) =e= 1;
ctc(k).. sum((i,j),t(i,j)*x2(i,j,k)) =l= 80*sum(m,m.val*n(m,k));
pc1..sum(k,k.val*x("1",k)) =l= sum(k,k.val*x("2",k));
pc2..sum(k,k.val*x("1",k)) =l= sum(k,k.val*x("3",k));
pc3..sum(k,k.val*x("3",k)) =l= sum(k,k.val*x("4",k));
pc4..sum(k,k.val*x("4",k)) =l= sum(k,k.val*x("5",k));
pc5..sum(k,k.val*x("5",k)) =l= sum(k,k.val*x("6",k));
pc6..sum(k,k.val*x("6",k)) =l= sum(k,k.val*x("8",k));
pc7..sum(k,k.val*x("7",k)) =l= sum(k,k.val*x("8",k));
pc8..sum(k,k.val*x("8",k)) =l= sum(k,k.val*x("9",k));
pc9..sum(k,k.val*x("9",k)) =l= sum(k,k.val*x("10",k));
pc10..sum(k,k.val*x("9",k)) =l= sum(k,k.val*x("11",k));
pc11..sum(k,k.val*x("9",k)) =l= sum(k,k.val*x("12",k));
pc12..sum(k,k.val*x("9",k)) =l= sum(k,k.val*x("13",k));
pc13..sum(k,k.val*x("7",k)) =l= sum(k,k.val*x("14",k));
pc14..sum(k,k.val*x("10",k)) =l= sum(k,k.val*x("15",k));
pc15..sum(k,k.val*x("11",k)) =l= sum(k,k.val*x("15",k));
pc16..sum(k,k.val*x("12",k)) =l= sum(k,k.val*x("15",k));
pc17..sum(k,k.val*x("15",k)) =l= sum(k,k.val*x("16",k));
pc18..sum(k,k.val*x("13",k)) =l= sum(k,k.val*x("17",k));
pc19..sum(k,k.val*x("16",k)) =l= sum(k,k.val*x("17",k));
pc20..sum(k,k.val*x("13",k)) =l= sum(k,k.val*x("18",k));
pc21..sum(k,k.val*x("15",k)) =l= sum(k,k.val*x("18",k));
pc22..sum(k,k.val*x("18",k)) =l= sum(k,k.val*x("19",k));
pc23..sum(k,k.val*x("19",k)) =l= sum(k,k.val*x("20",k));
ac4(j,k,m).. n(m,k)+ x3(j,k) =l= 1+y(j,k,m);

model case1 /all/;
case1.OptFile=1;
$onecho>cplex.opt
objrng all
rhsrng all
$offecho
solve case1 using mip minimizing z ;
display x.L, x.M, x2.L, x2.M, x3.L, x3.M, n.L, n.M, y.L, y.M;
