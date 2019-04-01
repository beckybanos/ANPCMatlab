function [xs,i] = iqi(f,a,b,c)
% INVERSE QUADRATIC INTERPOLATION (IQI)
% Teniendo en cuenta que a < b < c , utilizamos 3 puntos para ir
% optimizando el asunto.

TOL =sqrt(eps);
MAX= 66;
i=0;
fa=f(a); fb = f(b); fc = f(c);

% ESTE IF es para corroborar que el usuario haya puesto 3 valores correctos
% sin que nuestra funcion truene.
% if(a>b)
%     error('a es mayor que b');
% else
%     if(b>c)
%       error('b es mayor que a');  
%     end
% end

cond =true;         % Declaramos nuestra condicion
while cond
    
    %Ponemos la formula de la IQI
    xs = c*((fb*fa)/((fc-fb)*(fc-fa))) + b*((fc*fa)/((fb-fc)*(fb-fa)))+ a*((fc*fb)/((fa-fc)*(fa-fb))); 
    % Recorremos los valores y reciclamos la evaluacion de nuestra función.
    % por este metodo, perdemos el valor mas viejo.
    a=b; fa=fb;
    b=c; fb=fc ;  
    c=xs; fc=f(xs);   
    
    %Revisamos la condicion con respecto al num de iteraciones y            
    %de la diferencia absoulta relativa de nuestros puntos.
    cond = abs((c-b)/c)> TOL && i<=MAX;  
    i= i+1;
end

end

