%Rebeca Baños García    157655
%Método ivps (inicial value problem solution) donde soluciona una ecuacióm diferencial dependiendo el
%método qeu se solicite. Recibe la función, el tiempo inicia, el tiempo
%final, los valores iniciales, la distancia de salto h y el método que se
%desee usar. En este caso 1 es euler, 2 es trapecio, 3 es punto medio y 4
%es RK4.
%El método regresa el cambio en el tiempo junto con las soluciones de cad
%tiempo avanzado.
function [t,y] = ivps(f,t0,tf,y0,h,solver)

    switch solver
        case 1
            fhandle = @euler;
        case 2
            fhandle = @trap;
        case 3 
            fhandle = @midpoint;
        case 4
            fhandle = @rk4;
        otherwise
            fhandle = @ralston;
    end
    
    t = t0:h:tf;
    y = zeros(length(y0),length(t));
    y(:,1) = y0;
    
    for i=1:1:length(t)-1
        y(:,i+1) = y(:,i) + h*fhandle(f,t(i),y(:,i),h);   %Valor phi calculado dependiendo el método de arriba
    end
    
    function phi = euler(f,t,y,~)
        phi = f(t,y);
    end

    function phi = trap(f,t,y,h)
        s1 = f(t,y);
        yp = y + h*s1;
        s2 = f(t+h,yp);
        phi = (s1+s2)/2;
    end

    function phi = midpoint(f,t,y,h)
        s1 = f(t,y);
        ym = y + (h/2)*s1;
        phi = f(t+h/2,ym);
    end

    function phi = rk4(f,t,y,h)
        s1 = f(t,y);
        s2 = f(t+h/2,y + (h/2)*s1);
        s3 = f(t+h/2,y + (h/2)*s2);
        s4 = f(t+h,y + h*s3);
        phi = (s1 + 2*s2 + 2*s3 + s4)/6;
    end

    function phi = ralston(f,t,y,h)
        s1 = f(t,y);
        s2 = f(t+(3*h/4),y+(3*h/4)*s1);
        phi = y + (s1+2*s2)/3;
    end
end

