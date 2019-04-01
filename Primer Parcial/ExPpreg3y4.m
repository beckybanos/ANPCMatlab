%Problema 3 y 4
% Bungee Jumper
% Realizado por:
% Alberto Zainos M.
% Encontrar la m que nos da una cierta V = 36
% Tiempo = 4s ; cd= 0.25 ; g= 9.81 m/s2
% Nuestro volumen se encuentra en funcion de la h.

%3.- Programa la función [x,i] = iqi(f,a,b,c) que implemente el método “inverse quadratic
    %interpolation” definido por la ecuación de recurrencia:
    %Prueba tu implementación solucionando f=@(x) x.^3+x-1 en el intervalo [0,1] y compara su
    %desempeño con el de otros métodos vistos en clase. 

f= @(x) x.^3 + x - 1;           %Nuestra funcion a evaluar

[x,i] =iqi(f,.5,0,1);               % implementamos nuestra funcion con 3 puntos en el intervalo [0,1]
[xnr,j] =newtonRaphson_fx(f,.5);    % Probamos el método de NewtonRhapson en el punto intermedio de nuestro intervalo.

% Imprimimos los resultados.
fprintf('IQI hizo: %d iteraciones \n',i);
fprintf('IQI converge en : %2.16f \n\n',x);
fprintf('NR hizo: %d iteraciones \n',j);
fprintf('NR converge en : %2.16f \n\n',xnr(j));

%_____________________________________________________________________________Fin pregunta 3

% %Pregunta 4 
% %Determina la masa m de un “bungee jumper” que, en caída libre (g=9.81 m/s2), alcanza una
% %velocidad v=36 m/s después de un tiempo t=4 s, conociendo el coeficiente de arrastre cd=0.25
% %kg/m.
% 
% g=9.81;        % g = m/s2.
% V=36;          % Nuestra Velocidad es de 36
% cd=0.25;
% t=4;
% lin=linspace(1,70,70);             %Definimos el eje x de nuestra gráfica.
% 
% 
% v= @(m) sqrt((m*g)./cd).*tanh(sqrt((g*cd)./m))*t - V;       %Nuestra funcion V(m)-V =0
% 
% %--------------------GRAFICACIoN DE LA FUNCION---------------------------
% interval=[0,100];        %Nuestro intervalo sugerido que contiene un cero.
% axis([-2 100 -5 10]);
% fplot(v,interval,'b','LineWidth',1);
% z=@(x) 0*x;
% hold on;
% fplot(z,interval,'r','LineWidth',1);
% title('Evaluacón función despejada');
% legend('Funcion V(m)','Eje X (Cero)')
% xlabel('m');
% ylabel('V(m)');
% grid on;
% %--------------------------------------------------------------------FIN.
% 
% %---------------------IMPLEMENTACIÓN DE LOS MÉTODOS--------------------
% [xb,i]=Biseccion_fx(v,5,12);    %Los métodos cerrados los probamos en el 
% [xi,j]=InterpLin_fx(v,3,15);    % intervalo [ , ]; despues de ver la gráfica
% [xnr,k]=newtonRaphson_fx(v,10); % Los métodos abiertos los probamos en un
% [xs,l]=Secante_fx(v,0,10);      % ¿un valor cercano al deseado? al parecer sí
% [xiqi,m] =iqi(f,0,.5,1);        % MéTODO RECIEN AGREGADO
% %%--------------------------------------------------------------------FIN.
% 
% % %-----------GRAFICAMOS LOS VECTORES RESULTANTES DE CADA MÉTODO.
% % hold on;                %Mantenemos la gráfica
% % grid on;                %Habilitación de la cuadricula
% % %axis([1 11 1.5 2.4]);   %Establecemos los limites de los ejes
% % title('Convergencia de los métodos'); % Le ponemos titulo a la gráfica.
% % plot(lin,xb,'b','LineWidth',1);       %graficamos Biseccion en azul
% % plot(lin,xnr,'r','LineWidth',1);      %graficamos NewtonRhapson en rojo
% % plot(lin,xi,'y','LineWidth',1);       %graficamos InterpolLin en amarillo
% % plot(lin,xs,'k','LineWidth',1);       %graficamos Secante en negro
% % hold off;                             %dejamos de retener.
% % legend('Biseccion','Newton Raphson','InterPolLin','Secante');
% % % 
% %----------Imprimimos el número de iteraciones de cada método
% %----Junto con el valor que convergieron en dicho numero de iteración
% fprintf('Bisección hizo: %d iteraciones \n',i);
% fprintf('Bisección converge en : %2.16f \n\n',xb(i));
% fprintf('Interpolación Linear hizo: %d iteraciones \n',j);
% fprintf('Interpolacion Lineal converge en : %2.16f \n\n',xi(j));
% fprintf('Newton Raphson hizo: %d iteraciones \n',k);
% fprintf('Newton Rhapson converge en : %2.16f \n\n',xnr(k));
% fprintf('Secante hizo: %d iteraciones \n',l);
% fprintf('Secante converge en : %2.16f \n\n',xs(l));
% fprintf('IQI hizo: %d iteraciones \n',m);
% fprintf('IQI converge en : %2.16f \n\n',xiqi);
% 
% %%--------------------------------------------------------------------FIN pregunta 4.

