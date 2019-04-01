%Método de Montecarlo

% n = 1000000;
% count = 0;
% x = rand(1,n);          %genera matriz de 1*n de numeros aleatorios
% y = rand(1,n);
% 
% r2 = x.^2 + y.^2;        %eleva al cuadrado cada elemento de la matriz
% 
% inside = r2 <= 1;
% outside = r2 > 1;
% 
% plot(x(inside), y(inside), 'b.');
% hold on
% plot(x(outside), y(outside), 'r.');
% 
% p = sum(inside)/n;
% disp(p*4);
% 
% x = rand (1,n);             %variable aleatoria x
% y = sqrt(1-x.^2);
% 4 * mean(y);
% 
% %Calculo de pi usando Leibniz
% 
% n=100;
% p=0;
% for i = 0:1:n
%     p = p+((-1)^i)/((2*i)+1);
% end
% 4*p

% errorMax = 0.00001;
% p = 0;
% i = 0;
% 
% while (abs((pi-(p*4))/pi)) > errorMax
%     p = p+((-1)^i)/((2*i)+1);
%     i = i+1;
% end
% p = p*4;
% disp(p);
% disp(i);

previo = 0;
actual = 1;
i = 1;                          % se pone 1 porque ya diste el primer paso en actual = 1

while (abs((actual-previo)/actual)) > errorMax
    previo = actual;
    actual = previo + ((-1)^i)/((2*i)+1);
    i = i + 1;
end
actual = 4*actual;
disp(actual);
disp(i);

    