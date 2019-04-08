%Rebeca Ba�os Garc�a 157655
%M�todo de Gauss Seidel que procura convergencia a�adiendo una lambda
function [x,i] = gaussSeidelRelaxation(A,b,lambda)
    D = diag(diag(A));
    L = tril(A,-1);
    DmasL = D + L;
 
    TOL = eps;
    MAX = 1000;
    i = 0;
    x = zeros(size(b));
    cond = true;
    while cond
        r = b - A*x;
        xp = x;
        x = xp + DmasL\r;
        x = (lambda*x) + (1-lambda)*xp;
        i = i+1;
        cond = (norm(x-xp))/norm(x)>TOL && i<MAX;      
    end
end

