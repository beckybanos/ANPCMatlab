% Prueba examen

f=@(x) x.^3+x-1;
interval = [0,1];
fplot(f,interval);
grid on;

metICI(f,0.5,0.6,0.7)
%secante(f,0.5,0.6)