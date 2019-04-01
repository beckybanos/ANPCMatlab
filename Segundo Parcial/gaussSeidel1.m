function [x,i] = gaussSeidel1(A,b)
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
       i = i+1;
       cond = (norm(x-xp)/norm(x))>tol && i<MAX;
    end
end