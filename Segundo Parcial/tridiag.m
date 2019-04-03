%Rebeca Baños García 157655
%Vectores de igual tamaño, e es vector subdiagonal, f es vector diagonal,
%g vector superdiagonal, r = vector del lado derecho
function [x,i] = tridiag(e,f,g,r)
    n = length(r);
    x = zeros(n,1);
    g(1,1) = g(1,1)/f(1,1);
    r(1,1) = r(1,1)/f(1,1);
    
    for i = 1:n
        res = f(i,1)-e(i,1)*g(i-1,1);
        if(i<n)
             g(i,1) = g(i,1)/res;
        end
        r(i,1) = ((r(i,1)-e(i,1)*r(i-1,1)))/res;
    end
    
    x(n,1)=r(i,1);
    for j=n-1:-1:1
        x(j,1) = r(i,1)-g(i,1)*x(j+1,1);
    end   
    
end

