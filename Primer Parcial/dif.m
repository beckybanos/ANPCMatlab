%regresa 3 vectores ss=tamaño de paso; sd=valor de la derivada aproximado
function [ss, fd, te] = dif(f, x, n)

funcionS = sym(f);
derivadaS = diff(funcionS);
derivada = matlabFunction(derivadaS);
valorVerdadero = derivada(x);

% h = 0.5;
% h = 1;

% ss = zeros(1,n);    %step size
% fd = zeros(1,n);    %derivada aprox
% te = zeros(1,n);    %tamaño error
% 
% for i=1:1:n
%     ss(i) =h;
%     fd(i) = (f(x+h)-f(x-h))/(2*h);
%     te(i) = abs(valorVerdadero-fd(i));      %calculo de valor aproximado
%     h = h/10;
% end

i = 0:1:n-1;
h = 1./10.^i;
fd = (f(x+h) - f(x-h))./(2*h);
te = abs(valorVerdadero - fd);
% ss = h;

end

