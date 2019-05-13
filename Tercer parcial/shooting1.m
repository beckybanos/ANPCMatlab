%Método de shooting. Utiliza el método de RK4 para la solución. Le entran
%los parámetros de la función, el timepo inicial, el tiempo final, los
%dos valores iniciales, la distancia del salto y s es nuestro guess principal.
%El método nos regresa como resultado la diferencia entre el segundo valor
%inicial y el resultado de aplicar rk4.
function dif = shooting1(f,t0,tf,y0,y1,h,s)
    yz0 = [y0;s];
    [~,yz] = ivps(f,t0,tf,yz0,h,4);
    dif = y1 - yz(1,end);

end

