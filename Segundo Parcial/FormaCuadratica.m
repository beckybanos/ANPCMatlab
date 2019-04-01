%Resuelve una matriz en forma cuadrática para represetar las curvas de
%nivel. 
%Forma cuadrática

A = [1,0;0,2];  %tiene que ser positiva definida
b = [1;2];

qf = @(A,b,x1,x2)(1/2)*(A(1,1)*x1.^2 + (A(1,2)+A(2,1))*x1.*x2 + ...
    A(2,2)*x2.^2)-(b(1)*x1 + b(2)*x2) + (1/2)*b'*(A\b);

x1 = 0:0.1:2;
x2 = 0:0.1:2;
[X1,X2] = meshgrid(x1,x2);

f = qf(A,b,X1,X2);  %son todos los puntos evaluados
mesh(X1,X2,f);
xlabel('x1');
ylabel('x2');
hold on;
pause(5);

[cs,h] = contour(x1,x2,f);  %Calcula las curvas de nivel
pause (5);

[fx,fy] = gradient(f,0.5); %Calcula el gradiente 
quiver(x1,x2,-fx,-fy);
hold off;

minValue = min(min(f)); %Calcula mínimo de f

[col,i] = min(f);    %col todos los minimos de cada columna e i en que índice están 
[~,jmin] = min(col);
imin = i(jmin);
minValue = f(imin,jmin) %Sabemos las coordenadas del mínimo