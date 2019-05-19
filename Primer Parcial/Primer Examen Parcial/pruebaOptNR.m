%Rebeca Ba�os Garc�a 157655
%M�todo de optimizaci�n con Newton Raphson

f = @(x) 2*sin(x)-((x^2)/10);

interval = [0,4];
fplot(f, interval);
title('Funci�n de Prueba M�todo Newton Raphson')
grid on;

[x,i] = optAurea(f,0,4)
[y,n,min] = optNR(f,3)