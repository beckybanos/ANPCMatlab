function [square,sym,pd] = isPositiveDefinite(A)

    [m,n] = size(A);
    square = m==n;
    sym = square && isequal(A,A');
    pd = sym && all(eig(A)>0);  %checa los eigen valores
end

