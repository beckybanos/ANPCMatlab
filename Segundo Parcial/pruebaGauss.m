%Prueba de Gauss Jordan

% A = [1,2,-3,-1;0,-3,2,6;-3,-1,3,1;2,3,2,-1];
% b = [0;-8;0;-8];
% 
% B = [1,2,-1;2,1,-2;-3,1,1];


% x = GaussTarea(A,b);
% y = gauss(A,b);
% [L,U,P] = lup(B);
% L*U;
% P*B;

A = [3,-0.1,-0.2;0.1,7,-0.3;0.3,-0.2,10]
b1 = [1;0;0], b2 = [0;1;0], b3 = [0;0;1]
[L,U,P]=lup(A)
% [x] = lupSolucion(A,b1)
% inv=inversaLU(A)
% d = determinanteLU(A)