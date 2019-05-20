function [v,i] = secanteProb(f,x,y)
    TOL = eps;
    MAX = 66;    
            
    i = 0;
    cond = true;
     v=zeros(1,70);
    while cond
        xn = y;
        sn = (f(x)-f(xn))/(x-xn);  
        xp = x;
        x = xp - ((f(xp))/sn);
        v(i+1)=x;
        i = i + 1;
        cond = TOL < (abs((x-xp)/x)) && f(x) ~=0 && i <= MAX; %cuando no se cumple ninguna de esta se cmabia a false
    end
% for m=i:70
%     v(m)=x;
%     end
 end