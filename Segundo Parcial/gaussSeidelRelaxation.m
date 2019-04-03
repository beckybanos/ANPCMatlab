%Rebeca Baños García 157655
%Método de Gauss Seidel que procura convergencia añadiendo una lambda
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

