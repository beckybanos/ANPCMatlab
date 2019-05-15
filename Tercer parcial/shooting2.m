%Rebeca Ba�os Garc�a        157655
%M�todo de shooting. Utiliza el m�todo de RK4 para la soluci�n. Le entran
%los par�metros de la funci�n, el timepo inicial, el tiempo final, los
%dos valores iniciales, la distancia del salto y s es nuestro guess principal.
%El m�todo nos regresa como resultado la diferencia entre el segundo valor
%inicial y el resultado de aplicar rk4.
function dif = shooting2(f,t0,tf,y11,y21,h,y22)
    y0 = [y11;y21];
    [~,yz] = ivps(f,t0,tf,y0,h,4);
    dif = y22 - yz(2,end);
end
