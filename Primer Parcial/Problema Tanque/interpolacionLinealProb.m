function [v, i] = interpolacionLinealProb(f, a, b)
    
    if sign(f(a))*sign(f(b)) >= 0
        error('f(a)f(b)<0 no se satisface')
    end 
    MAX = 66;
    TOL = eps;
    fa = f(a);
    x = b-((f(b)*(b-a))/(f(b)-f(a))); fx = f(x);    
    i = 0;
     v=zeros(1,70);
    while abs((b-a)/x) > TOL && fx~=0 && i<=MAX        
        if sign(fa)==sign(fx)
            a = x;
            fa=f(a);
        else
            b = x;
        end 
        x = b-((f(b)*(b-a))/(f(b)-f(a))); fx = f(x);      
        v(i+1)=x;
        i = i + 1;
    end
%     for m=i:70
%     v(m)=x;
%     end
end