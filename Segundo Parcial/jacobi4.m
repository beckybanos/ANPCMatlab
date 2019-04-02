%Metodo iterativo que busca la solución de x en un cierto número de
%iteraciones. En este metodo utiliza el despeje de la formula con D 
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
