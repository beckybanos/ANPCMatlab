%Rebeca Baños García 157655
function [x,i,min] = optNRCorregido(f,x)
    TOL = eps;
    MAX = 66;    
    
    fsym = sym(f);
    dfsym = diff(fsym);
    df2sym = diff(dfsym);
    df = matlabFunction(dfsym);
    df2 = matlabFunction(df2sym);
        
    i = 0;
    cond = true;
    while cond
        xp = x;
        x = xp - (df(xp)/df2(xp));
        i = i + 1;
        cond = TOL < (abs((x-xp)/x)) && f(x) ~=0 && i <= MAX; 
    end
    min = df2(x)>0; 
end

