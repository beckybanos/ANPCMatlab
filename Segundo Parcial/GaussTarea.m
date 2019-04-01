%Método de elimincacion de Gauss del libro
function x = GaussTarea(A,b)
    [m,n] = size(A);    %Verifcia las dimensiones de A y que sea cuadrada
    if m~=n
        error('Matrix A debe ser cuadrada'); 
    end
    
    matrizCompleta = [A b]; %Junta en una sola matriz las ecuaciones con las soluciones
    
    [~,nMC]=size(matrizCompleta);    %Numero de columnas de la matriz completa
    
    %Empieza ciclo de Eliminación de Gauss.
    for k=1:n-1
        for i=k+1:n
            factor = matrizCompleta(i,k)/matrizCompleta(k,k);   %Encuentra el factor común para dividir cada renglón
            matrizCompleta(i,k:nMC) = matrizCompleta(i,k:nMC)-factor*matrizCompleta(k,k:nMC);  %Sustituye el siguiente renglón por los números ya operados
        end
    end
    
    %Sustición en ecuaciones
    x = zeros(n,1); %Se crea el vector de respuestas
    x(n) = matrizCompleta(n,nMC)/matrizCompleta(n,n);   %Encuentra la solución del último coeficiente
    for i = n-1:-1:1    %Sustituye los coeficientes que va encontrando en las incógnitas faltantes para encontrar todas
        x(i) = (matrizCompleta(i,nMC)-matrizCompleta(i,i+1:n)*x(i+1:n))/matrizCompleta(i,i);    %Las guarda en el vector de resultados
    end 
end

