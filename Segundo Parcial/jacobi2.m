%Metodo iterativo que busca la solución de x en un cierto número de
%iteraciones. En este metodo utiliza la Diagonal, la triangular inferior y
%la triangular superior. Busca el elemento adecuado a operar en las
%matrices triangulares y diagonal para poder operar adecuadamente
function [x,i] = jacobi2(A,b)
    D = diag(diag(A));
    U = triu(A,1);
    L = tril(A,-1);    
    
    TOL = eps;
    MAX = 1000;
    i = 0;
    x = zeros(size(b));
    n = length(x);
    cond = true;
    
    while cond
        xp = x;
        x(1) = (b(1)-U(1,2:n)*xp(2:n))/D(1,1);
        for r = 2:n-1
            x(r)=(b(r)-L(r,1:r-1)*xp(1:r-1)-U(r,r+1:n)*xp(r+1:n))/D(r,r);
        end        
        x(n) = (b(n)-L(n,1:n-1)*xp(1:n-1))/D(n,n);
        i = i+1;
        cond = (norm(x-xp)/norm(x))>TOL && i<MAX;
    end
    
end