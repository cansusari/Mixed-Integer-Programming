Sets
k person /1*6/
i programs /1*15/
j skills /1*41/
t time /1*6/

Parameters
f(i) Fixed Cost for program i
/ 1  4500
  2  2000
  3  4000
  4  3000
  5  2000
  6  3500
  7  5000
  8  4000
  9  2000
  10 3000
  11 5000
  12 4500
  13 2500
  14 4000
  15 5000 /

c(i) Enrollment Cost for program i
/ 1  500
  2  300
  3  500
  4  575
  5  800
  6  400
  7  200
  8  1000
  9  200
  10 500
  11 700
  12 600
  13 400
  14 900
  15 700 /

d(i) Days long of program i
/ 1  2
  2  2
  3  4
  4  3
  5  2
  6  3
  7  5
  8  2
  9  3
  10 3
  11 2
  12 4
  13 3
  14 4
  15 3 /

ns(i) Number of skills in program i
/ 1  11
  2  7
  3  14
  4  9
  5  11
  6  8
  7  6
  8  15
  9  11
  10 6
  11 9
  12 8
  13 11
  14 8
  15 10/;

Table
r(k,j) Requirement of skill j for person k
        1         2         3         4         5         6         7         8         9         10        11        12        13        14        15        16        17        18        19        20        21        22        23        24        25        26        27        28        29        30        31        32        33        34        35        36        37        38        39        40        41
1       0         1         0         1         0         0         0         0         0         0         0         1         1         1         0         1         0         1         1         0         1         1         1         1         0         1         1         0         1         0         1         1         0         1         0         1         1         1         0         0         0
2       0         1         0         0         1         0         0         0         0         0         1         1         1         1         1         0         0         1         0         0         0         1         1         1         0         1         1         1         1         0         1         0         1         0         0         1         1         1         1         0         1
3       1         1         0         0         1         1         1         0         1         0         0         0         1         0         1         0         0         0         0         1         0         0         0         0         1         1         0         0         0         1         0         0         1         0         1         0         0         1         1         0         1
4       1         1         0         0         0         0         0         0         1         1         0         0         1         0         0         0         1         0         0         1         0         0         0         0         1         1         0         0         0         1         0         0         1         0         1         0         0         1         1         1         1
5       1         1         1         0         1         0         0         1         0         0         0         0         0         0         0         0         0         0         0         1         0         0         0         0         0         0         0         0         0         0         0         0         0         0         0         0         0         1         1         1         1
6       1         1         1         0         1         0         0         0         0         0         0         0         0         0         0         0         0         0         0         0         0         0         0         0         0         0         0         0         0         1         0         0         0         0         0         0         0         1         1         1         0;

Table
p(i,j) Skill j in program i
        1         2         3         4         5         6         7         8         9         10        11        12        13        14        15        16        17        18        19        20        21        22        23        24        25        26        27        28        29        30        31        32        33        34        35        36        37        38        39        40        41
1       1         1         0         1         0         0         0         0         0         0         1         1         1         1         1         0         1         0         0         0         1         0         0         0         0         0         0         0         0         0         0         1         0         0         0         0         0         0         0         0         0
2       0         0         0         0         1         1         1         1         0         0         0         0         0         0         0         0         0         0         0         0         0         0         0         0         0         1         0         0         0         0         0         0         0         0         0         0         0         0         1         1         0
3       0         0         0         0         0         0         1         0         0         1         0         0         0         0         0         1         0         0         0         1         1         1         1         1         1         1         1         0         1         0         1         0         0         0         0         1         0         0         0         0         0
4       0         1         0         1         0         0         0         0         1         1         0         0         1         0         0         0         1         0         0         0         0         0         0         0         0         0         0         1         0         0         0         0         0         0         0         1         0         0         0         0         1
5       0         1         1         1         0         0         0         0         0         1         0         0         1         0         0         0         1         0         0         0         0         0         0         1         0         1         0         0         0         0         0         0         1         0         0         0         0         0         1         1         0
6       0         0         0         0         0         0         0         1         1         0         0         0         0         0         0         0         0         0         0         1         0         0         0         0         0         0         0         0         1         0         0         1         1         0         0         1         1         0         0         0         0
7       0         0         0         0         1         1         0         0         0         0         0         0         1         0         0         0         0         0         0         1         0         0         0         0         0         0         0         0         0         0         0         1         0         1         0         0         0         0         0         0         0
8       0         0         0         0         0         0         0         0         0         0         1         1         1         1         1         1         0         0         1         0         1         1         1         1         0         0         1         0         1         1         0         0         0         0         0         0         1         0         0         0         0
9       1         1         1         1         0         0         0         0         0         0         0         0         0         1         1         0         0         0         0         0         0         0         0         1         1         1         0         0         0         0         0         0         0         0         0         0         0         0         1         1         0
10      0         0         0         1         0         0         0         0         0         0         0         1         0         0         0         0         0         0         0         0         0         0         0         0         0         0         0         0         0         1         1         0         0         0         0         0         1         1         0         0         0
11      0         0         0         0         0         0         0         0         0         1         0         1         0         0         0         0         0         0         0         0         0         0         1         0         0         0         1         0         1         1         0         1         0         0         1         1         0         0         0         0         0
12      0         0         0         0         0         0         0         0         0         0         1         0         0         1         0         0         0         0         0         0         0         0         0         0         0         0         0         1         0         1         1         0         0         0         0         0         0         1         1         1         0
13      0         0         0         0         0         0         0         0         0         0         0         1         1         0         0         0         1         1         1         0         1         1         1         0         1         0         0         0         0         0         1         0         1         0         0         0         0         0         0         0         0
14      1         0         0         0         1         1         0         0         0         0         0         0         0         0         0         1         0         1         0         0         0         0         0         0         0         0         0         0         0         0         0         0         0         1         1         0         0         0         0         0         1
15      1         0         1         0         1         0         1         1         1         0         0         0         0         0         0         0         0         0         1         0         0         0         0         0         0         0         0         1         0         0         0         0         0         0         0         0         0         1         0         0         1 ;

Variables
z total cost
cp(i) cost of program i at time t
day(k) number of days person k is trained
Binary variables
x2(k,i,j,t) if person k uses program i for skill j in time t or not
x(k,i,t) if person k uses program i in time t or not
yt(i,t) if program i is used in time t or not
y(i);

Equations
cost objective function
req(k,j) skill requirement
dy(k) day constraint
dlim(k) day limit
fconst(k,i,t)
conf1(k,t) conflicting programs
conf2(k,t) conflicting programs
conf3(k,t) conflicting programs
conf4(k,t) conflicting programs
conf5(k,t) conflicting programs
conf6(k,t) conflicting programs
conf7(k,t) conflicting programs
conf8(k,t) conflicting programs
conf9(k,t) conflicting programs
conf10(k,t) conflicting programs
conf11(k,t) conflicting programs
conf12(k,t) conflicting programs
conf13(k,t) conflicting programs
conf14(k,t) conflicting programs
conf15(k,t) conflicting programs
assign(i,t) assignment for program
assign2(i,j,t) assignment for skill
fixed(k,i,t) fixed cost
costp(i) cost of programs
fc(i);


cost.. z =e= sum((i),cp(i));
req(k,j).. sum((i,t),x2(k,i,j,t)*p(i,j)) =g=  r(k,j);
dy(k).. sum((i,j,t),(d(i)/ns(i))*x2(k,i,j,t)) =e= day(k);
dlim(k).. day(k) =l= 15;
fconst(k,i,t).. sum(j,x2(k,i,j,t)) =l= 500*x(k,i,t);
conf1(k,t).. 2*x(k,'1',t)+x(k,'3',t)+x(k,'5',t) =l= 2;
conf2(k,t).. 2*x(k,'2',t)+x(k,'7',t)+x(k,'10',t) =l= 2;
conf3(k,t).. 2*x(k,'3',t)+x(k,'1',t)+x(k,'12',t) =l= 2;
conf4(k,t).. 3*x(k,'4',t)+x(k,'6',t)+x(k,'7',t)+x(k,'14',t) =l= 3;
conf5(k,t).. 2*x(k,'5',t)+x(k,'1',t)+x(k,'9',t) =l= 2;
conf6(k,t).. 2*x(k,'6',t)+x(k,'4',t)+x(k,'11',t) =l= 2;
conf7(k,t).. 2*x(k,'7',t)+x(k,'2',t)+x(k,'4',t) =l= 2;
conf8(k,t).. x(k,'8',t)+x(k,'13',t) =l= 1;
conf9(k,t).. 2*x(k,'9',t)+x(k,'5',t)+x(k,'15',t) =l= 2;
conf10(k,t).. x(k,'10',t)+x(k,'2',t) =l= 1;
conf11(k,t).. 2*x(k,'11',t)+x(k,'6',t)+x(k,'12',t) =l= 2;
conf12(k,t).. 2*x(k,'12',t)+x(k,'3',t)+x(k,'11',t) =l= 2;
conf13(k,t).. 2*x(k,'13',t)+x(k,'8',t)+x(k,'14',t) =l= 2;
conf14(k,t).. 2*x(k,'14',t)+x(k,'4',t)+x(k,'13',t) =l= 2;
conf15(k,t).. x(k,'15',t)+x(k,'9',t) =l= 1;
assign(i,t).. sum(k, x(k,i,t)) =l= 2;
assign2(i,j,t).. sum(k, x2(k,i,j,t)) =l= 1;
fixed(k,i,t).. x(k,i,t) =l= yt(i,t);
fc(i).. sum(t,yt(i,t)) =l= 500*y(i);
costp(i).. sum((k,j,t),x2(k,i,j,t)*(c(i)/ns(i))) + sum(t,f(i)*yt(i,t))*0.1 +y(i)*f(i) =e= cp(i);


model case2 /all/;
case2.OptFile=1;
*options LP=CPLEX;
option optcr=0
option optca=0
$onecho>cplex.opt
objrng all
rhsrng all
$offecho
solve case2 using mip minimizing z ;
display x.L, x.M, y.L, y.M;
