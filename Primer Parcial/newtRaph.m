%Método de Newton Raphson: parte de una suposicion inicial y la evalua en
%la función, de ahí saca la tangente hacai el eje x y es tu principal
%aproximación. Convergencia es cuadrática
function [x, i] = newtRaph(f, a, b)
    
    if sign(f(a))*sign(f(b)) >= 0
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
