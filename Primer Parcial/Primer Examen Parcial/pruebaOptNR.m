%Rebeca Baños García 157655
%Método de optimización con Newton Raphson

f = @(x) 2*sin(x)-((x^2)/10);

interval = [0,4];
fplot(f, interval);
title('Función de Prueba Método Newton Raphson')
grid on;

[x,i] = optAurea(f,0,4)
[y,n,min] = optNR(f,3)