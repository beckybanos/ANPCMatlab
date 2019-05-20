%Tanque esférico para suministrar agua a un pequeño pueblo
%El volumen esta dado por: V=pih^2((3R-h)/3)
%Donde el volmen esta en metos cubicos, h es la profundidad de aua en el
%tanque y R es el radio del tanque 

%Si R=3, ¿que profundidad tiene que tener el tanque para que aguante 30
%m^3?

R = 3;
V = 30;
vec=linspace(1,70,70);
f = @(h)(pi*(h^2))*((3*R-h)/3) - V;

interval = [0, R];

grid on;

[x,i] = biseccionProb(f,0,R)
[y,n] = interpolacionLinealProb(f,0,R)
[z,m] = newtonRaphsonProb(f,R)
[v,u] = secanteProb(f,R, R-1)

% fplot(f, interval);
% fplot(f, vec);


plot(vec,x);
axis([1 70 1.7 2.4])
hold on
plot(vec,y);
axis([1 70 1.7 2.4])
hold on
plot(vec,z);
axis([1 70 1.7 2.4])
hold on
plot(vec,v);
axis([1 70 1.7 2.4])
title('Comparación de Métodos ')
legend('biseccion','interpolacionLineal','newtonRaphson','secante')
xlabel('iteraciones')
ylabel('Profundidad calculada')
