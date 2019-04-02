%Prueba para a funcion jacobiana
A = [3,1,-1;2,4,1;-1,2,5];
b = [4;1;1];

[x,i] = jacobi1(A,b)
[y,n] = jacobi2(A,b)

% [x,i] = gaussSeidel1(A,b)
% [x,i] = gaussSeidel2(A,b)
% [x,i] = gaussSeidel3(A,b)
% [x,i] = gaussSeidel4(A,b)