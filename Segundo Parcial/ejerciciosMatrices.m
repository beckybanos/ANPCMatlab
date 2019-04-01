%Ejercicios matrices
% A = [2,1;1,2];
% x = [1;2];
% norm(x);
% ang = atand(x(2)/x(1));
% 
% % y = A*x;
% 
% RC = [0,1;-1,0];
% y = RC*x;    %matriz de rotación
% norm(y);
% ang2 = atand(y(2)/y(1));
% 
% a = pi/4;
% R = [cos(a), sin(a); -sin(a), cos(a)];
% 
% A = gallery(3);
% poly(A);
% roots(poly(A));
% 
% [lambda,x] = powerMethod(A)

A = magic(4);
A(1:4,3);
A(1:end, end-1);
A(:,end-1);

A(3:4,3);
max(A(:,3));

x = [1;2;3;4];
A(2,:)*x;

%Prueba Power Method
A = [3,2,-2;-1,1,4;3,2,-5]
[lambda,x] = powerMethod(A)

lambda*x
A*x