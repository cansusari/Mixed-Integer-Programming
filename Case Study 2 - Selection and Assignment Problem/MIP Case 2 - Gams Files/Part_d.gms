Sets
k person /1*6/
i programs /1*15/
j skills /1*41/
l conflict /1*14/

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

confc(l) Conflicting cost
/ 1  425
  2  325
  3  350
  4  250
  5  475
  6  375
  7  400
  8  375
  9 200
  10 425
  11 325
  12 350
  13 475
  14 325 /;


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
cp(i) cost of program i
day(k) number of days person k is trained
Binary variables
x(k,i) if person k uses program i or not
y(i) if program i is used or not
b(l) binary of conflict constraints;

Equations
cost objective function
req(k,j) skill requirement
dy(k) day constraint
dlim(k) day limit
conf1(k) conflicting programs
conf2(k) conflicting programs
conf3(k) conflicting programs
conf4(k) conflicting programs
conf5(k) conflicting programs
conf6(k) conflicting programs
conf7(k) conflicting programs
conf8(k) conflicting programs
conf9(k) conflicting programs
conf10(k) conflicting programs
conf11(k) conflicting programs
conf12(k) conflicting programs
conf13(k) conflicting programs
conf14(k) conflicting programs

fixed(k,i) fixed cost
costp(i) cost of programs;


cost.. z =e= sum(i,cp(i))+ sum(l,(b(l)* confc(l)));
req(k,j).. sum(i,x(k,i)*p(i,j)) =g=  r(k,j);
dy(k).. sum(i,d(i)*x(k,i)) =e= day(k);
dlim(k).. day(k) =l= 15;
conf1(k).. x(k,'1')+x(k,'3') =l= 1+10*b('1');
conf2(k).. x(k,'1')+x(k,'5') =l= 1+10*b('2');
conf3(k).. x(k,'2')+x(k,'7') =l= 1+10*b('3');
conf4(k).. x(k,'2')+x(k,'10') =l= 1+10*b('4');
conf5(k).. x(k,'3')+x(k,'12') =l= 1+10*b('5');
conf6(k).. x(k,'4')+x(k,'6') =l= 1+10*b('6');
conf7(k).. x(k,'4')+x(k,'7') =l= 1+10*b('7');
conf8(k).. x(k,'4')+x(k,'14') =l= 1+10*b('8');
conf9(k).. x(k,'5')+x(k,'9') =l= 1+10*b('9');
conf10(k).. x(k,'6')+x(k,'11') =l= 1+10*b('10');
conf11(k).. x(k,'8')+x(k,'13') =l= 1+10*b('11');
conf12(k).. x(k,'9')+x(k,'15') =l= 1+10*b('12');
conf13(k).. x(k,'11')+x(k,'12') =l= 1+10*b('13');
conf14(k).. x(k,'13')+x(k,'14') =l= 1+10*b('14');
fixed(k,i).. x(k,i) =l= y(i);
costp(i).. sum(k,x(k,i)*c(i))+f(i)*y(i) =e= cp(i);

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
