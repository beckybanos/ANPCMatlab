%Rebeca Ba�os Garc�a 157655
%Metodo iterativo que busca la soluci�n de x en un cierto n�mero de
%iteraciones.
function [x,i] = jacobi4(A,b)
    D = diag(diag(A));

    TOL = eps;
    MAX = 1000;
    i = 0;
    x = zeros(size(b));
    cond = true;
    while cond
       r = b - A*x;
       xp = x;
       x = xp + D\r;
       i = i+1;
       cond = (norm(x-xp)/norm(x))>TOL && i<MAX;
    end
end
