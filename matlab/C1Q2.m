filename='C1Q2T1.xlsx';
format long;
dp=5;

Pi=1;
Po=4;
Vi=10;
Cp=2.4825;
Cv=1.9862;
k=round(Cp/Cv,dp);

fW = @(P) k*Pi*Vi/(k-1)*(((P/Pi)^((k-1)/k))+((Po/P)^((k-1)/k))-2);

Pl=1;
Pu=3;
es = 2.5;


[x,fx,ea,iter,phi,T] = goldmin(fW,Pl, Pu, es, [], dp)

writetable(T, filename);