%Fucnion que determina si una matriz es estrictamente dominante, es decir,
%si todos los elementos de la matriz son menores estrictamente que los
%elementos de la diagonal en cada fila o columna dependiendo el caso
function [res] = diagDom(A)
    AbsA = abs(A);
    
    vf = 2*diag(AbsA)> sum(AbsA,2);
    %vc = 2*diag(AbsA)> sum(AbsA,1)';
    
    res = all(vf); % && all(vc);
    
    D = diag(diag(A));
    U = triu(A,1);
    L = tril(A,-1);
    T = -D\(L+U);   %T de Jacobi
    J = max(abs(eig(T)))
    T = -(D+L)\U;   % T de Gauss Seidel
    GS = max(abs(eig(T)))
end

