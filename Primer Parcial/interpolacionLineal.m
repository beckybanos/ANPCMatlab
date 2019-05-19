
%Método de interpolación lineal. Parecido al de bisección, parte de formar
%una linea recta de las soposiciones iniciales y choca con el cero
function [x, i] = interpolacionLineal(f, a, b)
    
    if sign(f(a))*sign(f(b)) >= 0       %Checa si son de signo distinto las soposiciones inciales
        error('f(a)f(b)<0 no se satisface')
    end 
    MAX = 66;
    TOL = eps;
    fa = f(a);
    x = b-((f(b)*(b-a))/(f(b)-f(a))); fx = f(x);    
    i = 0;
    
    while abs((b-a)/x) > TOL && fx~=0 && i<=MAX        
        if sign(fa)==sign(fx)
            a = x;
            fa=f(a);
        else
            b = x;
        end 
        x = b-((f(b)*(b-a))/(f(b)-f(a))); fx = f(x);      
        i = i + 1;
    end
    
end