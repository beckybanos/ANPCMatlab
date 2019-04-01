%La veocidad en caída libre no debe de pasar de 33m/s a los 4s
%v = sqrt(g*m/cd)*tanh(sqrt(g*cd/m)*t)

v = 33;
t = 4;

cd = 0.25;
g = 9.81;

f = @(m) sqrt(g*m/cd).*tanh(sqrt(g*cd./m)*t)-v;

interval = [50, 100];
fplot(f, interval);
grid on;

% [x,i] = biseccion(f,60,700)
% [x,i] = interpolacionLineal(f,60,70)

[x,i] = biseccion(f,10,200)
[x,i] = interpolacionLineal(f,10,200)