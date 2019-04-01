% y = @(x) x.^2 + 1;
% fplot(y, [-4,4]);
% grid on;
% 
% x = sqrt(-1);

% a = 2 + 3i
% aC = a'
% r = abs(a)
% theta = angle(a)
% % real(a)
% % imag(a)
% 
% r*cos(theta)
% r*sin(theta)
% y = r*(cos(theta)+i*sin(theta))
% z = r*exp(i*theta)

t = 0:255;
z1 = exp(i*1*(2*pi/256)*t)  %para cada t da un complejo
z2 = exp(i*2*(2*pi/256)*t)  
plot(t,real(z1))
hold on
plot(t,imag(z1))
plot(t,real(z2))
plot(t,imag(z2))