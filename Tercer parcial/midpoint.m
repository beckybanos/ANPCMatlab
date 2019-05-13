%Método de punto medio. Este método toma la pendiente de punto medio al que
%se esta colculando, es decir, en lugar de tomar ti+1 calcula la pendiente
%de ti+1/2 y la evalua en el punto de ti+1 para acercarse a la solución
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
