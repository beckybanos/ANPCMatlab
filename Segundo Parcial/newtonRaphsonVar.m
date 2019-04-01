function [x,i] = newtonRaphsonVar(f,J,x)
    TOL = eps;
    MAX = 66;    
    
    i = 0;
    cond = true;
    while cond
        xp = x;
        x = xp - J(xp)\f(xp);
        i = i + 1;
        cond = (norm(x-xp)/norm(x)) > TOL && all(f(x) ~=0) && i <= MAX; %cuando no se cumple ninguna de esta se cambia a false
    end
end

