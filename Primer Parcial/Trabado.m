% Stephanie Lizeth Malvaes

%modelo de caida libre
%solución numérica usando euler
%g=9.81; %m/s^2
% m=70;%kg
% cd=0.25; %resisstencia del aire
global g;
%g=9.81; %m/s^2
global m;
%m=70;%kg
global cd;
% cd=0.25; %resisstencia del aire

syms v(t) g cd m;
eqn =diff(v,t) == g - (cd/m)*v^2;
cond= v(0) == 0;
vSym(t) = dsolve(eqn, cond)

tf=20;
%fplot(vel, [0,tf]);

g=9.81; %m/s^2
m=70;%kg
cd=0.25; %resisstencia del aire

vel = subs(vSym) 
fplot(vel, [0, tf]);             % plots over the specified interval
hold on;

h=2;
vter=sqrt(g*m/cd);
t=0:h:tf;
v=zeros(size(t));
w=ones(size(t));
for i=1:1:length(v)-1
    v(i+1)=v(i) + h*f(v(i));
end
plot(t,v);
xlabel('t,s');
ylabel('v,m/s');
title('Caída libre');
grid on;
hold on
 plot(t,vter*w);
%plot([0,tf],vter*ones(size([0,tf])),'--b');

% dv/dt = g -(cd/m)*v^2
function a=f(v)
global g;
global m;
global cd;
a= g - (cd/m)*v^2;
end