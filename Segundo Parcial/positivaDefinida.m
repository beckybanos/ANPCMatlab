%Función que verifica si una matriz es positiva definida utilizando
%triangulares
function [square,sym,pd] = positivaDefinida(A)
    [m,n] = size(A);
    square = m==n;
    sym = square && isequal(A,A');
    
    [~,U,~,~,vs] = lupModificado(A);
    D = diag(U);
    res = D'*vs; 
    
    pd = sym && all(res>0);
end

