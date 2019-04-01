function [x] = lupSolucion(A,b)
    [L,U,~,~]=lup(A);
    
    d = gauss(L,b);
    x = gauss(U,d);
    
end

