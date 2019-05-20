function [v,i] = newtonRaphsonProb(f,x)
    TOL = eps;
    MAX = 66;    
    
    fsym = sym(f);
    dfsym = diff(fsym);
    df = matlabFunction(dfsym);
    v=zeros(1,70);
    i = 0;
    cond = true;
    while cond
        xp = x;
        x = xp - (f(xp)/df(xp));
        i = i + 1;
        v(i)=x;
        cond = TOL < (abs((x-xp)/x)) && f(x) ~=0 && i <= MAX; %cuando no se cumple ninguna de esta se cmabia a false
    end
    
%     for m=i:70
%     v(m)=x;
%     end
 end

