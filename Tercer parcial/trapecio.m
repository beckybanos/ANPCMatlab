function [t,y] = trapecio(f,t0,tf,y0,h)
    t = t0:h:tf;
    y = zeros(size(t));
    y(1) = y0;
    
    for i=1:1:length(t)-1
        s1 = f(t(i),y(i));
        yp = y(i) +h*s1;
        s2 = f(t(i)+h,yp);
        y(i+1) = y(i) + h*((s1+s2)/2);
    end
end
