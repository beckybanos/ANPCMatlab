%Función que descompone a la matriz A en LUP
%L es la matriz triangular inferior, U es la matriz triangular superior y P
%es la matriz identidad que respesenta las permutaciones tal que se cumpla
%la relación L*U = P*A
function [L,U,P,s] = lup(A)
    [~,n] = size(A);    %Agregar chequeo de error
    U = A;
    L = eye(n);
    P = eye(n);
    s=0;
    
    for j = 1:n-1
        [~,pos]=max(U(j:n,j));
        pos = pos + j-1;
        if pos ~= j
            U([j,pos],j:n) = U([pos,j],j:n);
            L([j,pos],1:j-1) = L([pos,j],1:j-1);
            P([j,pos],:) = P([pos,j],:);
            % Aqui s? siendo s el numero de c
            s= s+1;
        end 
        for i = j+1:n
            L(i,j) = U(i,j)/U(j,j);
            U(i,j:n) = U(i,j:n)-L(i,j)*U(j,j:n);
        end
    end
end

