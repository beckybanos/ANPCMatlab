%bvp
t0 = 0;
tf = 1;

y0 = 1;
y1 = 3;

N = 100;
h = (tf-t0)/(N-1);

M = [0,1;4,0];
f = @(t,yz) M*yz;
g = @(s) shooting1(f,t0,tf,y0,y1,h,s);

% s = -1;              %aproximación
% dif = shooting1(f,t0,tf,y0,y1,h,s)
% s = 0;              %aproximación
% dif1 = shooting1(f,t0,tf,y0,y1,h,s)

[z0, i] = biseccion(g, -1, 0);

yz0 = [y0,z0];
[t,yz] = ivps(f,t0,tf,yz0,h,4);
plot(t,yz(1,:));

%Diferencias finitas
r = zeros(N-2);
r(1) = -1;
r(N-2) = -3;
e = ones(N-2);
f = -(2+4*h^2)*ones(N-2);
g = ones(N-2);
[w] = tridiag(e,f,g,r);
y = zeros(N);
y(1) = 1;
y(2:N-1) = w;
y(N) = 3;
plot(y);





