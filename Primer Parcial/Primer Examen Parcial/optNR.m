%Rebeca Baños García 157655
function [x,i,min] = optNR(f,x0)
    TOL = eps;
    MAX = 66;    
    
    fsym = sym(f);
    dfsym = diff(fsym);
    df = matlabFunction(dfsym);
    
    dsym = sym(df);
    deriv = diff(dsym);
    dv = matlabFunction(deriv);
    
    pc = @(x) dv(df);
    
    i = 0;
    cond = true;
    x = x0;
%     min = pc>0;
    min = false;
    
    while cond
        xp = x;
        x = xp - (f(xp)/df(xp));
        i = i + 1;
%         pc = @(x) dv(df);
%         min = pc>0;
        min = not(min);
        cond = TOL < (abs((x-xp)/x)) && f(x) ~=0 && i <= MAX; %cuando no se cumple ninguna de esta se cmabia a false
    end
end

