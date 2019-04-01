%Función que saca la lambda que es donde converge y la x que es la  matriz
%multiplicada por un vector de puros unos entre la norma. 
%Máximo eigen valor es lambda y el vector que corresponde a ese eigen valor

function [lambda,x] = powerMethod(A)
    TOL = eps;
    MAX = 100;
    i = 0;
    cond = true;
    
    [~,n] = size(A);
    lambdaPorX = ones(n,1);
    %lambdaPorX = "puros unos"
    lambda = norm(lambdaPorX);
    x = lambdaPorX/lambda;
   
    while cond
        lambdaA = lambda;
        lambdaPorX = A*x;
        lambda= norm(lambdaPorX);
        x = lambdaPorX/lambda;
        i = i+1;
        cond = abs((lambda-lambdaA)/lambda)> TOL && i<MAX;
    end
    
end

