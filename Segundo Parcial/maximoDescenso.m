function [x,i] = maximoDescenso(A,b,x)
    
    if ~isPositiveDefinite(A)
        error('La matriz A no es PD');
    end
    
    MAX = 66;
    TOL = eps;
    rk = b-A*x;
    cond = norm(rk)~=0;
    i = 0;
    
    while cond
        xp = x;        
        alpha = dot(rk,rk)/(rk'*A*rk);
        x = xp + alpha*rk;
        rk = b-A*x;
        i = i + 1;
        cond = norm(rk)~=0 && (norm(x-xp))/norm(x)>TOL && i < MAX;
    end
end

