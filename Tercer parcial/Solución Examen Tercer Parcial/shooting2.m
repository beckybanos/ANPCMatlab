function dif = shooting2(f,t0,tf,y11,y21,h,y22)
    y0 = [y11; y21];
    [t, y] = ivps(f,t0,tf,y0,h, 4);
    dif = y22 - y(2,end);
end


