%Función que calcula la iversa de una matriz utilizando las triangulares
%superiores e inferiores de la matriz dada
function [invA] = inversaLU(A)
    [m,n] = size(A);
    
    invA = zeros(m,n);
    
    for i=1:1:n
        b=zeros(n,1);
        b(i,1)=1;
        x = lupSolucion(A,b);
        invA(:,i) = x;
    end
    
end

