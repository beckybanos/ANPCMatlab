function [t,y] = midpoint(f,t0,tf,y0,h)
    t = t0:h:tf;
    y = zeros(size(t));
    y(1) = y0;
    
    for i=1:1:length(t)-1
        s1 = f(t(i),y(i));
        ym = y(i)+(h/2)*s1;
        y(i+1) = y(i) + h*f(t(i)+h/2,ym);
%         y(i+1) = y(i) + h*f(t(i),y(i));
    end
end
