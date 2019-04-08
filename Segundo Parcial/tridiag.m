%Rebeca Baños García 157655
%Vectores de igual tamaño, e es vector subdiagonal, f es vector diagonal,
%g vector superdiagonal, r = vector del lado derecho

function [x] = tridiag(e,f,g,r)
    n = length(r);
    
    for j = 1:n-1
        mult = e(j+1)/f(j);
%         e(j+1) = e(j+1) - mult*f(j);    %esto es igual a cero
        f(j+1) = f(j+1) - mult*g(j);
%         g(j) = g(j) - mult*0;
        r(j+1) = r(j+1) - mult*r(j);
    end
    
    x(n) = r(n)/f(n);
    
    for i = n-1:-1:1
%         f(i)*x(i) + g(i)*x(i+1) = r(i);
        x(i) = (r(i)-g(i)*x(i+1))/f(i);        
    end    
end

