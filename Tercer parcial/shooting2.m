%Rebeca Baños García        157655
%Método de shooting. Utiliza el método de RK4 para la solución. Le entran
%los parámetros de la función, el timepo inicial, el tiempo final, los
%dos valores iniciales, la distancia del salto y s es nuestro guess principal.
%El método nos regresa como resultado la diferencia entre el segundo valor
%inicial y el resultado de aplicar rk4.
function dif = shooting2(f,t0,tf,y11,y21,h,y22)
    y0 = [y11;y21];
    [~,yz] = ivps(f,t0,tf,y0,h,4);
    dif = y22 - yz(2,end);
end
