% Epsilon
%Mayor número que cuando lo sumo a uno me da diferente de 1
%Solo funciona con potencias de 2

x = 6;

while (1 + (x/2) > 1)
    x = x/2;
end

 disp (x);
 disp(eps);
 
%Programa que sume 10 veces .1 
suma = 0;

for i = 1:10
    suma = suma + 0.1;
end

 disp(suma); 
 isequal (suma,1);
 
 cero = 1-0.9-0.1;
 
 s1 = 1e-16; 
 s = 1 + s1;
 s2 = s-1;
 d = (2^53+1)-2^53;
 
 b = 1e-16 + 1 - 1e-16;
 c = 1e-16 - 1e-16 + 1;
 
 