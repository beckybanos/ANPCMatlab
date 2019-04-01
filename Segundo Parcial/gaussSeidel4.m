function [x,i] = gaussSeidel4(A,b)
    
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
        i = i+1;
        cond = (norm(x-xp))/norm(x)>TOL && i<MAX;
    end
    
end