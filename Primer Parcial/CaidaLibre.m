%Modelo de caida libre 
%Solución numérica usando el método de Euler

global  g;
global  m;
global  cd;

syms v(t) g cd m;
eqn = diff(v,t) == g-(cd/m)*v^2;
cond = v(0) == 0;
vSym(t) = dsolve(eqn, cond)

g = 9.81;       %m/s^2
m = 70;         %kg
cd = 0.25;      %resistencia del aire

tf = 20;       %s

vel = subs(vSym)
fplot(vel, [0,tf]);
hold on;

h = 2;          %s

velocidadTerminal= sqrt(m*g/cd);
velocidadkmh = velocidadTerminal*(3.6);
plot([0,tf],velocidadTerminal*ones(size([0,tf])),'--b');
hold on;
%graficar

t = 0:h:tf;
v = zeros(size(t));
for i = 1:1:length(v)-1
    v(i+1) = v(i) + h*f(v(i));   %(g - (cd/m)*v(i)^2)
end 

plot(t,v);
xlabel('t, s');
ylabel('v, m/s');
title('Caída libre');
grid on;
axis([0 tf 0 velocidadTerminal*1.1]);
legend('aproximada', 'veocidad terminal', 'exacta');

%dv/dt=g - (cd/m)*v^2
function a = f(v)
    global  g;
    global m;
    global cd;

    a = g - (cd/m)*v^2;
end 