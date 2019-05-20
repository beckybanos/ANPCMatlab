%Ejercicio con 3 ecuaciones NewtonRaphsonVariables
%3*x(1)-cos(x(2)*x(3)) - 3/2;
%4*x(1)^2-625*x(2)^2+2*x(2)-1;
%exp(-x(1)*x(2)) + 20*x(3) + (10*pi-30)/3

% x = [x1;x2;x3];

f = @(x) [3*x(1)-cos(x(2)*x(3)) - 3/2;
          4*x(1)^2-625*x(2)^2+2*x(2)-1;
          exp(-x(1)*x(2)) + 20*x(3) + (10*pi-30)/3];

J = @(x) [3,x(3)*sin(x(2)*x(3)), x(2)*sin(x(2)*x(3));
        8*x(1),2 - 1250*x(2),0;
        -x(2)*exp(-x(1)*x(2)), -x(1)*exp(-x(1)*x(2)),20];

x = [0;0;0];
[x,i] = newtonRaphsonVar(f,J,x)
f(x);

% syms xs1 xs2 xs3;
% xs = [xs1;xs2;xs3];
sym('xs',[3,1]);
fs = [3*xs(1)-cos(xs(2)*xs(3)) - 3/2;
     4*xs(1)^2-625*xs(2)^2+2*xs(2)-1;
     exp(-xs(1)*xs(2)) + 20*xs(3) + (10*pi-30)/3];
      
Js = jacobian(fs,xs);
