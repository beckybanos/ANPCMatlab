%The solution to_A*x=b is a critical point of f(x).
%Moreover, the matrix of second derivatives of f is A, and its assumed
%positive definiteness guarantees that the solution of our problem is the
%unique minimizer of f:
% Let e be an error term
% f(x+e) = (1/2)*((x+e)'*A*(x+e)) - b'*(x+e) + c
% f(x+e) = (1/2)*((x'+e')*(A*x+A*e)) - b'*(x+e) + c
% f(x+e) = (1/2)*((x'*A*x) + e'*A*x + x'*A*e + e'*A*e) - b'*x - b'*e + c
%Reducción de sistema

% Por simetría de A
% f(x+e) = (1/2)*(x'*A*x) - b'*x + c + e'*A*x + (1/2)*e'*A*e - b'*e
% Como A*x = b
% f(x+e) = f(x) + e'*b + (1/2)*e'*A*e - b'*e
% f(x+e) = f(x) + (1/2)*e'*A*e
% If A is positive-definite, then the latter term is positive for all
% e~=0 and therefore x minimizes f.

%r(i+1) = b - A*x(i+1) = b - A*(x(i) + alfa(i)*r(i))
%= r(i) - alfa(i)*A*r(i)
%r'(i+1)*r(i) = (r(i) - alfa(i)*A*r(i))'*r(i)
% = (r'(i) - alfa(i)*(A*r(i))')*r(i)
% = (r'(i) - alfa(i)*r'(i)*A')*r(i)
%alfa(i) = (r´(i)*r(i))/(r(i)'*A*r(i))
%r'(i+1)*r(i) = 0

%Problema 3:
%Representado en Matlab:
%x(1)^2 + x(1)*x(2) = 10
%x(2) + 3*x(1)*x(2)^2 = 57
f = @(x) [ x(1)^2 + x(1)*x(2) - 10 ;
 x(2) + 3*x(1)*x(2)^2 - 57 ];

J = @(x) [ 2*x(1) + x(2), x(1);
 3*x(2)^2, 1 + 6*x(1)*x(2) ];


%Sacar jacobiano
syms xs1 xs2;
xs = [xs1;xs2];
fs = [ xs1^2 + xs1*xs2 - 10 ;
       xs2 + 3*xs1*xs2^2 - 57 ];
      
Js = jacobian(fs,xs)

% La aproximación inicial no puede ser [0;0] porque la Jacobiana sería 0
x = [1.5; 3.5];
[y,iter] = newtonRaphsonVar(f,J,x) % [2;3]





