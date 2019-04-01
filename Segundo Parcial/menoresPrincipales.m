%Función que calcula los menors principales de una matriz, es decir el
%determinante de las submatrices de A y verifica si son mayores que cero
function [x,mp] = menoresPrincipales(A)
    [m,n] = size(A);
    if m~=n
        error('Matrix A debe ser cuadrada'); 
    end
    x = zeros(n,1); 
    for i=1:n
        x(i,1) = det(A(1:i,1:i));
    end
    
    mp = all(x>0);    
end

