%Problemas de calor inicial
%Ecuaciones de primer orden

%y(0) = 1
%a) y' = t
%b) y' = t^2*y
%c) y' = 2*(t+1)*y

f = @(t,y) t;
[t,y] = euler(f,0,10,1,0.1)

plot(t,y);
xlabel('t');
ylabel('y');