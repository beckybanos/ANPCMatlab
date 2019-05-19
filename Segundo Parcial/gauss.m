%Método de eliminación de Gauss de Clase
function [x] = gauss(A,b)
    [m,n] = size(A); 
    if m~=n
        error('Matrix A debe ser cuadrada'); 
    end
    x = zeros(n,1);

    for j = 1:n-1
        [~,pos]=max(A(j:n,j));
        pos = pos + j-1;
        if pos ~= j
            A([j,pos],:) = A([pos,j],:);    %Cambio las posiciones del renglon
            b([j,pos]) = b([pos,j]);
        end 
        for i = j+1:n
            mul = A(i,j)/A(j,j);    %Saca el valor por el que lo estas dividiendo para cancelar
            A(i,j+1:n) = A(i,j+1:n)-mul*A(j,j+1:n);
            b(i) = b(i)-mul*b(j);
        end
    end
    
    %Calcula x
    x(n) = b(n)/A(n,n);    
    for i = n-1:-1:1
        x(i) = (b(i)-A(i,i+1:n)*x(i+1:n))/A(i,i);
    end
end
