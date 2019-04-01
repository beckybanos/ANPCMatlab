%Prueba de Newton Raphson de varias variables 
% x = [y;z];

f = @(x) [x(1)^2 + x(1)*x(2) - 10;
          x(2)+3*x(1)*(x(2)^2)- 57];

J = @(x) [2*x(1)+x(2), x(1); 
         3*x(2)^2, 1+6*x(1)*x(2)];

x = [3;5];
[x,i] = newtonRaphsonVar(f,J,x);
f(x);

% syms xs1 xs2;
sym('xs' ,[2,1]);
% xs = [xs1;xs2];
fs = [xs(1)^2+xs(1)*xs(2)-10;
      xs(2)+3*xs(1)*xs(2)^2-57];
  
Js = jacobian(fs,xs)

% matlabFunction(fs)
% matlabFunction(Js)