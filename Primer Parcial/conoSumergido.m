%Problema del libro cono sumergido
r1 = 0.5;
r2 = 1;
h = 1;
pf = 200;
pa = 1000;
f = @(h1) (((pi*h)/3)*(r1^2+r2^2+r1*r2))*(pa-pf)-(((pi*h1)/3)*(r1^2+(r1+((r2-r1)/h)*h1)^2+r1*(r1+((r2-r1)/h)*h1)))*pa;
int = [0,2*r2];

fplot(f, int);
grid on;

biseccion(f,0.8,1)