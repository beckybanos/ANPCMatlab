%Regla de integración por trapecio. Traza un trapecio sobre la curva a
%integrar. Va del punto inicial al final junto con los borde sy toda la
%base.
%Le entra la función, el punto en e tiempo cero, en el tiempo final, el
%punto inicial y la distancia de cada evaluación.
%El resultado de la integral es el área bajo el trapecio formado
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
