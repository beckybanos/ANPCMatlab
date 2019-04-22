%Problemas de valor inicial
%Ecuaciones de primer orden

%y(0) =1
%a) y' = t
%b) y' = t^2*y
%c) y' = 2*(t+1)*y

% f = @(t,y) t;
% f = @(t,y) t^2*y;
% [t,y] = ivps(f,0,2,1,0.1,4)
% plot(t,y)

f = @(t,y1y2) [-0.5*y1y2(1);
               4-0.3*y1y2(2)-0.1*y1y2(1)];
y1y20=[4;6];
[t,y1y2] = ivps(f,0,2,y1y20,0.5,1)
plot(t,y1y2)
legend('y1','y2');