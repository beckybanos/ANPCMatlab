%Función que calcula el determinante de una matriz utilizando las
%triangulares y la matriz de permutación
function d = determinanteLU(A)
    [m,n] = size(A);
    [L,U,P,s] = lup(A);
    prodU = 1;
    prodL = 1;
    
    for i=1:1:n
        prodU = prodU*U(i,i);
        prodL = prodL*L(i,i);
    end
    detUL = prodU*prodL;
    detP = (-1)^s;
    
    d =detUL/detP;
end

