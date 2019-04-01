function [sueldoB]=calcularSueldoBruto(sueldoN)

matriz=xlsread('tablas','A2:D12');
% if(sueldoN>=0)
    for i=1:length(matriz)
        if sueldoN <= (matriz(i,2))
            f=i;
        end
         
    end
% end
sueldo = sueldoN + matriz(f,3) + matriz(f,1)*matriz(f,4)/100;
        if sueldo <= matriz(f+1,1)
            sueldo = sueldoN + matriz(f+1,3) + (sueldoN-matriz(f+1,1))*matriz(f+1,4)/100;
        end
        sueldoB= sueldo;
end
