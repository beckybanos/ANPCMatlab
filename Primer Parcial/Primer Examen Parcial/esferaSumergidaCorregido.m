%Peso de la esfera Sumergida Corregido
pe = 200;
pa = 1000;
r = 1;
g = 9.81;
% Vesfera = (4/3)*r^3*pi
% pEsfera = pe*Vesfera*g;

% Va = Vesfera - ((pi*h.^2).*((3*r-h)/3))
% ff = pa*Va*g;
vd = 30;
f = @(h) (4*pi*r^3/3)*(pa-pe) - pa*(pi*h.^2/3).*(3*r-h);
int = [0,2*r];
fplot(f, int);
grid on;

biseccion(f,1.4,1.6)