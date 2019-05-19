%Método de proporción aúrea: partes de la distancia que hay entre las x,
%se saca la relacion de li y l2 y su respectiva distancia para poder sacar
%el minimo. Una vez que se obtiene el minimo, se elimina la parte donde no
%esta y adquieren nuevos valores
function [x,i] = optAurea(f,a,b)
    phi = (1+sqrt(5))/2;
    g = phi - 1;
    d = g*(b-a);

    x1 = a + d; f1 = f(x1);
    x2 = b - d; f2 = f(x2);
    MAX = 60;

    i = 0;  
    x = (a+b)/2;
    while abs((b-a)/x)>sqrt(eps) && i<MAX
        d = g*d;
        if f1<f2
            a = x2;
            %d = g*(b-a);
            x2 = x1; f2 = f1;
            x1 = a + d; f1 = f(x1);
        else
            b = x1;
            %d = g*(b-a);
            x1 = x2; f1 = f2;
            x2 = b - d; f2 = f(x2);
        end
        x = (a+b)/2;   
        i = i+1;
    end
end

