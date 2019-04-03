%Rebeca Ba�os Garc�a 157655
%M�todo de Gauss Seidel que procura convergencia a�adiendo una lambda
function [x,i] = gaussSeidelRelaxation(A,b,lambda)
    L = tril(A,-1);
    U = triu(A,1);
    D = diag(diag(A));
 
    tol = eps;
    MAX = 1000;
    i = 0;
    x = zeros(size(b));
    cond = true;
    while cond
       xp = x;
       x = ((D+L)^-1)*b - ((D+L)^-1)*U*x;
       x = (lambda*x) + (1-lambda)*xp;
       i = i+1;
       cond = (norm(x-xp)/norm(x))>tol && i<MAX;
    end
end

