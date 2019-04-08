%Rebeca Baños García 157655
%Prueba de todos los métodos del segundo examen parcial

%Prueba tridiag
f = [2.04;2.04;2.04;2.04];
e = [-1;-1;-1;-1];
g = [-1;-1;-1;-1];

r = [40.8;0.08;0.08;200.8];

[x] = tridiag(e,f,g,r)

%Prueba Jacobi4
A = [2,-6,-1;-3,-1,7;-8,1,-2];
b = [-38;-34;-20];

[j,n] = jacobi4(A,b)

%Prueba de Gauss Seidel Relaxation
A = [3,1,-1;2,4,1;-1,2,5];
b = [4;1;1];
lambda = 1.25;

[x,i] = gaussSeidelRelaxation(A,b,lambda)
[x,i] = gaussSeidel1(A,b)
[j,n] = jacobi4(A,b)

%Prueba Matriz A es positiva definida con método
A = [2,4;4,5];
[square,sym,pd] = isPositiveDefinite(A)
[square,sym,pd] = positivaDefinida(A)

%Encuentra puntos en común de tres esferas
A = [1,-2,0;-2,2,-1;4,-2,3];
R =  5;

% fe =@(x) [(x(1)-A(1,1))^2+(x(2)-A(1,2))^2+(x(3)-A(1,3))^2 - R^2;
%                  (x(1)-A(2,1))^2+(x(2)-A(2,2))^2+(x(3)-A(2,3))^2 - R^2;
%                  (x(1)-A(3,1))^2+(x(2)-A(3,2))^2+(x(3)-A(3,3))^2 - R^2];
%            
% J = @(x) [ 2*x(1) - 2, 2*x(2) - 2, 2*x(3);
%            2*x(1) - 2, 2*x(2), 2*x(3) - 2;
%            2*x(1), 2*x(2) - 2, 2*x(3) - 2];
       
% x = [0;0;0];[x,i] = newtonRaphsonVar(fe,J,x)    %Punto en común de las 3 esferas
% fe(x)
             
syms xs1 xs2 xs3;
xs = [xs1;xs2;xs3];
fs =[(xs(1)-A(1,1))^2+(xs(2)-A(1,2))^2+(xs(3)-A(1,3))^2 - R^2;
     (xs(1)-A(2,1))^2+(xs(2)-A(2,2))^2+(xs(3)-A(2,3))^2 - R^2;
     (xs(1)-A(3,1))^2+(xs(2)-A(3,2))^2+(xs(3)-A(3,3))^2 - R^2];
      
Js = jacobian(fs,xs)
f = matlabFunction(fs);
f =@(x) [(x(1)-A(1,1))^2+(x(2)-A(1,2))^2+(x(3)-A(1,3))^2 - R^2;
          (x(1)-A(2,1))^2+(x(2)-A(2,2))^2+(x(3)-A(2,3))^2 - R^2;
          (x(1)-A(3,1))^2+(x(2)-A(3,2))^2+(x(3)-A(3,3))^2 - R^2];
             
J = @(x) [2*x(1) - 2, 2*x(2) + 4,     2*x(3);
          2*x(1) + 4, 2*x(2) - 4, 2*x(3) + 2;
          2*x(1) - 8, 2*x(2) + 4, 2*x(3) - 6];
      
x = [1;1;1];
[x,i] = newtonRaphsonVar(f,J,x)
fx = f(x)

