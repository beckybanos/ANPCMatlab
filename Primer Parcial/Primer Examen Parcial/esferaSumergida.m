%Rebeca Baños García 157655
%Determinar la altura de esfera de corcho

R = 1;  %radio de la esfera
de = 200;  %densidad de la esfera
da = 1000;  %densidad del agua
g = 9.81;

v = (4/3)*(pi*(R^2));   %volumen de la esfera
m = v*de;   %masa de la esfera
pe = m*g;   %peso de la esfera
f = @(h) (de*(((pi*(h^2))/3)*((3*R)-h)))*g;    %fuerza total

interval = [0, R+3];
fplot(f, interval);
title('Función de Esfera')
grid on;

[x,i] = biseccion(f,R,R+3)  %R por ser el radio de la esfera y R+3 para que supere el 3 de la fórmula del volumen fuera del agua y así la función pueda cambiar de signo

disp('Peso de la esfera: ');
disp(pe);
disp('Volumen sumergido: ');
disp(v-x);
disp('Fuerza de flotación: ');
disp(x);