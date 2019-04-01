function [x,i] = metICI(f,a,b,c)
TOL = sqrt(eps);
MAX = 66;
i = 0;
fa = f(a);
fb = f(b);
fc = f(c);
parte1=fc*((fb*fa)/((fc-fb)*(fc-fa)));
parte2=fb*((fc*fa)/((fb-fc)*(fb-fa)));
parte3=fa*((fc*fb)/((fa-fc)*(fa-fb)));

x = parte1+parte2+parte3;
cond = true;

    while cond
        disp("holi:");
        disp(x);
        fa = f(b);
        fb = f(c);
        fc = f(x);
        x = fc*((fb*fa)/((fc-fb)*(fc-fa))) + fb*((fc*fa)/((fb-fc)*(fb-fa))) + fa*((fc*fb)/((fa-fc)*(fa-fb)));
        i = i + 1;
        cond = TOL < (abs((fb-fc)/fb)) && f(c) ~=0 && i <= MAX; %cuando no se cumple ninguna de esta se cmabia a false
    end

end

