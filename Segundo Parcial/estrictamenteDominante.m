%Función que regresa si una matriz es estrictamente dominante, es decir si
%todos los elementos de la matriz son estrictamente menores que los
%elementos de su diagonal respectivamente a filas y columnas.
function [domFil, domCol] = estrictamenteDominante(A)
    
    [~,n]=size(A);
    D = diag(diag(A));
    U = triu(A,1);
    L = tril(A,-1);
    i = 1;
    k = 1;
    
    while i<n
        domFil1 = abs(D(i,i))>norm(U(i,i+1:n));
          for i = 2:n-1
              domFil2 = abs(D(i,i))>norm(U(i,i+1:n)) && abs(D(i,i))>norm(L(i,1:i-1));
          end
        i = i+1;
        domFil3 = abs(D(i,i))>norm(L(n,1:n-1));

        domFil = domFil1 && domFil2 && domFil3;
    end
    
    while k<n
        domCol1 = abs(D(k,k))>norm(L(k+1:n,k));
          for k = 2:n-1
              domCol2 = abs(D(k,k))>norm(L(k+1:n,k)) && abs(D(k,k))>norm(U(1:k-1,k));
          end
        k = k+1;
        domCol3 = abs(D(k,k))>norm(U(1:n-1,n));

        domCol = domCol1 && domCol2 && domCol3;
    end
    
end

