%Tarea IVPSR con Matriz de Coeficiente

% f = @(t,yz) [3*yz(1)-2*yz(2);
%                2*yz(1)-2*yz(2)];
%            
M = [3 -2; 2 -2];
% f = @(t,yz) [M(1,1)*yz(1)+M(1,2)*yz(2);
%                M(2,1)*yz(1)+M(2,2)*yz(2)];

f = @(t,yz) M*yz
           
yz0=[1;-1];
[t,yz] = ivps(f,0,2,yz0,0.1,1)
plot(t,yz)
legend('y','z');
