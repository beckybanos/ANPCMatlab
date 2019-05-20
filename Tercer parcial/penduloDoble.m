%Problema del doble péndulo
g = 9.81;
theta1 = 0.5;
theta2 = 0;
L1 = 1;
L2 = L1;
M1 = 0.25;
M2 = M1;
diftheta1 = 0;
diftheta2 = 0;

%Caso 1

f = @(t,vt)[L1*sin(vt(1)),(L1*sin(vt(1)))+L2*sin(vt(2));
    -L1*cos(vt(1)),(-L1*cos(vt(1)))-L2*cos(vt(2))];

y0=[theta1,theta2];


[t,vt] = ivps(f,0,5,y0,0.1,4)