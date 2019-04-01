function [x,i] = gaussSeidel3(A,b)

    TOL = eps;
    MAX = 1000;
    i = 0;
    x = zeros(size(b));
    n = length(x);
    cond = true;
    
    while cond
        xp = x;
        x(1) = (b(1)-A(1,2:n)*xp(2:n))/A(1,1);
        for r = 2:n-1
            x(r)=(b(r)-A(r,1:r-1)*x(1:r-1)-A(r,r+1:n)*xp(r+1:n))/A(r,r);
        end        
        x(n) = (b(n)-A(n,1:n-1)*x(1:n-1))/A(n,n);
        i = i+1;
        cond = (norm(x-xp)/norm(x))>TOL && i<MAX;
    end
    
end
