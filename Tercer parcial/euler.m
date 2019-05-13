%Método de euler. Obtiene la solución sacando la pendiente de un punto
%inicial hasta una distancia h qeu va de ti a ti+1
function [t,y] = euler(f,t0,tf,y0,h)
    t = t0:h:tf;
    y = zeros(size(t));
    y(1) = y0;
    
    for i=1:1:length(t)-1
        y(i+1) = y(i) + h*f(t(i),y(i));
    end
end

