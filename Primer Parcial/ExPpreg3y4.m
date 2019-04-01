%Problema 3 y 4
% Bungee Jumper
% Realizado por:
% Alberto Zainos M.
% Encontrar la m que nos da una cierta V = 36
% Tiempo = 4s ; cd= 0.25 ; g= 9.81 m/s2
% Nuestro volumen se encuentra en funcion de la h.

%3.- Programa la funci�n [x,i] = iqi(f,a,b,c) que implemente el m�todo �inverse quadratic
    %interpolation� definido por la ecuaci�n de recurrencia:
    %Prueba tu implementaci�n solucionando f=@(x) x.^3+x-1 en el intervalo [0,1] y compara su
    %desempe�o con el de otros m�todos vistos en clase. 

f= @(x) x.^3 + x - 1;           %Nuestra funcion a evaluar

[x,i] =iqi(f,.5,0,1);               % implementamos nuestra funcion con 3 puntos en el intervalo [0,1]
[xnr,j] =newtonRaphson_fx(f,.5);    % Probamos el m�todo de NewtonRhapson en el punto intermedio de nuestro intervalo.

% Imprimimos los resultados.
fprintf('IQI hizo: %d iteraciones \n',i);
fprintf('IQI converge en : %2.16f \n\n',x);
fprintf('NR hizo: %d iteraciones \n',j);
fprintf('NR converge en : %2.16f \n\n',xnr(j));

%_____________________________________________________________________________Fin pregunta 3

% %Pregunta 4 
% %Determina la masa m de un �bungee jumper� que, en ca�da libre (g=9.81 m/s2), alcanza una
% %velocidad v=36 m/s despu�s de un tiempo t=4 s, conociendo el coeficiente de arrastre cd=0.25
% %kg/m.
% 
% g=9.81;        % g = m/s2.
% V=36;          % Nuestra Velocidad es de 36
% cd=0.25;
% t=4;
% lin=linspace(1,70,70);             %Definimos el eje x de nuestra gr�fica.
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
% title('Evaluac�n funci�n despejada');
% legend('Funcion V(m)','Eje X (Cero)')
% xlabel('m');
% ylabel('V(m)');
% grid on;
% %--------------------------------------------------------------------FIN.
% 
% %---------------------IMPLEMENTACI�N DE LOS M�TODOS--------------------
% [xb,i]=Biseccion_fx(v,5,12);    %Los m�todos cerrados los probamos en el 
% [xi,j]=InterpLin_fx(v,3,15);    % intervalo [ , ]; despues de ver la gr�fica
% [xnr,k]=newtonRaphson_fx(v,10); % Los m�todos abiertos los probamos en un
% [xs,l]=Secante_fx(v,0,10);      % �un valor cercano al deseado? al parecer s�
% [xiqi,m] =iqi(f,0,.5,1);        % M�TODO RECIEN AGREGADO
% %%--------------------------------------------------------------------FIN.
% 
% % %-----------GRAFICAMOS LOS VECTORES RESULTANTES DE CADA M�TODO.
% % hold on;                %Mantenemos la gr�fica
% % grid on;                %Habilitaci�n de la cuadricula
% % %axis([1 11 1.5 2.4]);   %Establecemos los limites de los ejes
% % title('Convergencia de los m�todos'); % Le ponemos titulo a la gr�fica.
% % plot(lin,xb,'b','LineWidth',1);       %graficamos Biseccion en azul
% % plot(lin,xnr,'r','LineWidth',1);      %graficamos NewtonRhapson en rojo
% % plot(lin,xi,'y','LineWidth',1);       %graficamos InterpolLin en amarillo
% % plot(lin,xs,'k','LineWidth',1);       %graficamos Secante en negro
% % hold off;                             %dejamos de retener.
% % legend('Biseccion','Newton Raphson','InterPolLin','Secante');
% % % 
% %----------Imprimimos el n�mero de iteraciones de cada m�todo
% %----Junto con el valor que convergieron en dicho numero de iteraci�n
% fprintf('Bisecci�n hizo: %d iteraciones \n',i);
% fprintf('Bisecci�n converge en : %2.16f \n\n',xb(i));
% fprintf('Interpolaci�n Linear hizo: %d iteraciones \n',j);
% fprintf('Interpolacion Lineal converge en : %2.16f \n\n',xi(j));
% fprintf('Newton Raphson hizo: %d iteraciones \n',k);
% fprintf('Newton Rhapson converge en : %2.16f \n\n',xnr(k));
% fprintf('Secante hizo: %d iteraciones \n',l);
% fprintf('Secante converge en : %2.16f \n\n',xs(l));
% fprintf('IQI hizo: %d iteraciones \n',m);
% fprintf('IQI converge en : %2.16f \n\n',xiqi);
% 
% %%--------------------------------------------------------------------FIN pregunta 4.

