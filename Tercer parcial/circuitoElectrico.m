%Circuito electrico
L = 10;
C = 0.005;
R = 20;
w = 1/sqrt(L*C);
w = w/10;
w = 100*w;  %Cambio de frecuencia
t0 = 0;
tf = 15;
ix0 = [0;0];
h = 0.1;
M = [0,1;-1/(L*C),-R/L];
A = 220;
f = @(t,ix) M*ix + [0;(w*A*cos(w*t))/L];    %derivada de funcion de Asen(wt)

[t,ix] = ivps(f,t0,tf,ix0,h,4);
plot(t,R*ix(1,:))
% legend('y','z');
