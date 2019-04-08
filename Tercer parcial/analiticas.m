%Solucion analitica de ecuaciones diferenciales

syms y(t)

%Separacion de variables
%y' = cy
%y(0) = y0     = 3
% c = 2;
% eqn = diff(y,t) ==c*y;
% yG = dsolve(eqn)
% cnd = y(0) == 3;    %condicion inicial
% yP = dsolve(eqn,cnd)    %Sin condicion inicial nos da la solución general
% 
% fplot(yP, [0 2])   %Grafica función
% xlabel('t');
% ylabel('y');
% title('dy/dt=cy; y(0)=3');

syms x(t)
%x'(t) = -t/x
% x(0) = 3
eqn = diff(x,t) == -t/x;
xG = dsolve(eqn)
cnd = x(0) == 3;
xP = dsolve(eqn,cnd)

fplot(xP, [-3, 3])   %Grafica función
xlabel('t');
ylabel('x');
title('dx/dt=cx; x(0)=3');
hold on
cnd = x(0)==-3;
xP = dsolve(eqn,cnd)
fplot(xP, [-3, 3])   %Grafica función
xlabel('t');
ylabel('x');
title('dx/dt=cx; x(0)=3');

axis equal square
grid on

% % y' = -2ty
% % y(0) = 4
% c = 4;
% eqn = diff(y,t) == -2*t*y;
% yG = dsolve(eqn)
% cnd = y(0) == 4;
% yP = dsolve(eqn,cnd)

% %y' = -y^2
% %y(1) = 1
% c = 0;
% eqn = diff(y,t) == -y^2;
% yG = dsolve(eqn)
% cnd = y(1) == 1;
% yP = dsolve(eqn,cnd)