format long
matriz=xlsread('tablas','A2:D12');
%matriz

sueldoN = 45000;
i=1;

disp(matriz(1,2));
while matriz(i,2) <= sueldoN 
    i=i+1;
    disp(i);       
end

sueldo = sueldoN + matriz(i,3) + matriz(i,1)*matriz(i,4)/100;

disp('i')
disp(i)

disp(sueldo);

if sueldo <= matriz(f+1,1)
    sueldo = sueldoN + matriz(f+1,3) + (sueldoN-matriz(f+1,1))*matriz(f+1,4)/100;
end

sueldoB= sueldo;
disp(sueldoB);