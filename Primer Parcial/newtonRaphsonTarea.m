function [i] = newtonRaphsonTarea(x0, f)
i=1;    %contador
fx(i)=x0;   %valor inicial en la funcion
 
syms x;
TOL = eps;
f1=subs(f,x,fx(i)); %regresa f reemplazando las x por fx(i)
z=diff(f); %derivada de f
d=subs(z,x,fx(i)); %regresa z, reemplazando todas las x por fx(i)
 
ea(1)=100;  %error aproximado
 
while abs(ea(i))>=TOL;  %checa si el error esta dentro de la tolerancia
    fx(i+1)=fx(i)-f1/d;     %método de newton raphson 
    f1=subs(f,x,fx(i+1));   %evalua en la funcion los nuevos valores de x
    d=subs(z,x,fx(i+1));    %evalua en la derivada de la funcion los nuevos valores de x
    ea(i+1)=abs((fx(i+1)-fx(i))/fx(i+1)*100);   %cambia el valor del error aproximado
    i=i+1;
end

disp('Resultado:');
disp(fx(i));
    
end