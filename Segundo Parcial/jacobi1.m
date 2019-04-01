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

