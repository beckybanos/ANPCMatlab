%Función que utiliza las triangulares para sacar la solución de una matriz
function [x] = lupSolucion(A,b)
    [L,U,~,~]=lup(A);
    
    d = gauss(L,b);
    x = gauss(U,d);
    
end

