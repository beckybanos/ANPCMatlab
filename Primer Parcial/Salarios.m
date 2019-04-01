neto = 45000;
datos = xlsread('DatosImpuestos.xlsx');
a = (1 + datos(1,end)/100)*neto;
b = (1 + datos(end-1,end)/100)*neto;
datos (11,2)=inf;

f = @(bruto) calcSalNeto(bruto, datos, neto) - neto;
%[x,i] = biseccion(f, a, b);
[x,i] = interpolacionLineal(f, a, b);
fprintf('El salario bruto necesatio es de: %d y las iteraciones de la fueron: %d\n',x,i);

function y = calcSalNeto(bruto, datos, neto)
    %vector de 1 y 0 que nos indica en que rango de sueldo estamos
    inside = datos(1:11,2) - neto >= 0;
    n = find(inside, 1, 'first');
    y = (bruto - datos(n,3) - ((bruto-datos(n,1))*(datos(n,4)/100)));
    %y = (salariobruto - cantidafija -((salariobruto -
    %inferior)*porcentaje/100)).    
end