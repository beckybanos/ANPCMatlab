%Método de bisección, parte por tener dos suposiciones iniciales que sean
%de diferente signo para que la raíz este dentro de ese intervalo. 
function [x, i] = biseccion(f, a, b)
    
    if sign(f(a))*sign(f(b)) >= 0   %Checa si son diferentes
        error('f(a)f(b)<0 no se satisface')
    end 
    
    TOL = eps;
    max = log2((b-a)/eps(a));
    fa = f(a);
    x = (a+b)/2; fx = f(x);    %Bisección
    i = 0;
    intervalo = num2hex(abs(b-a));
    fprintf('%2i %20.16f %20.16f %s \n',i,x,fx,intervalo); %print con formato: 2 columnas para la i, 20 columnas para
                                                       %f
    
    while abs((b-a)/x) > TOL && fx~=0 && i<=max        
        if sign(fa)==sign(fx)
            a = x;
            fa=f(a);
        else
            b = x;
        end 
        x = (a+b)/2; fx = f(x);         %se vuelven a instanciar las variables para darles el nuevo valor
        i = i + 1;
%         intervalo = num2hex(abs(b-a));
%         fprintf('%2i %20.16f %20.16f %s \n',i,x,fx,intervalo);
    end
    
end
