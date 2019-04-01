%Tanque esférico para suministrar agua a un pequeño pueblo
%El volumen esta dado por: V=pih^2((3R-h)/3)
%Donde el volmen esta en metos cubicos, h es la profundidad de aua en el
%tanque y R es el radio del tanque 

%Si R=3, ¿que profundidad tiene que tener el tanque para que aguante 30
%m^3?

R = 3;
V = 30;

f = @(h)(pi*(h^2))*((3*R-h)/3) - V;

interval = [-3, 12];
fplot(f, interval);
grid on;

[x,i] = biseccion(f,-1,6)
[y,n] = interpolacionLineal(f,-1,6)
[z,m] = newtonRaphson(f,1)
