function [x,i] = newtonRaphson(f,x)
    TOL = eps;
    MAX = 66;    
    
    fsym = sym(f);
    dfsym = diff(fsym);
    df = matlabFunction(dfsym);
    
    i = 0;
    cond = true;
    while cond
        xp = x;
        x = xp - (f(xp)/df(xp));
        i = i + 1;
        cond = TOL < (abs((x-xp)/x)) && f(x) ~=0 && i <= MAX; %cuando no se cumple ninguna de esta se cmabia a false
    end
         
%      while TOL < (abs((actual-previo)/actual)) && fx ~=0 && i <= MAX
%          x = x - (f(x)/df(x));
%          fx = f(x);
%          previo = actual;
%          actual = x;
%          i = i + 1;
%     end
 end

