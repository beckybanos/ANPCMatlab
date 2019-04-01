%Metodo iterativo que busca la soluci�n de x en un cierto n�mero de
%iteraciones. En este metodo utiliza la Diagonal, la triangular inferior y
%la triangular superior. Realiza la operaci�n adecuada con la funci�n
%indicada en clase para la iteraci�n. 
function [x,i] = jacobi1(A,b)
    D = diag(diag(A));
    U = triu(A,1);
    L = tril(A,-1);    
    LmasU = L+U;
    
    TOL = eps;
    MAX = 1000;
    i = 0;
    x = zeros(size(b));
    cond = true;
    
    while cond
        xp = x;
        x = D\(b-(LmasU)*xp);
        i = i+1;
        cond = (norm(x-xp))/norm(x)>TOL && i<MAX;
    end
    
end

