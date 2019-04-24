%Prblema del pendulo
g = 9.8;
l=1;

f = @(t,y)[y(2);-(g/l)*sin(y(1))];
          
y0=[pi/8;0];

%Método de Rk4
[t,y] = ivps(f,0,10,y0,0.1,4)
% [t,y] = ivps(f,0,10,y0,0.01,4)

plot(t,y);
grid on;
legend('\theta','\omega');

% %Método Euler
% % [t,wphi] = ivps(f,0,10,y0,0.1,1)
% [t,y] = ivps(f,0,10,y0,0.001,1)
% 
% plot(t,y);
% grid on;
% legend('\theta','\omega');


