function dif = shooting1(f,t0,tf,y0,y1,h,s)
    yz0 = [y0;s];
    [~,yz] = ivps(f,t0,tf,yz0,h,4);
    dif = y1 - yz(1,end);

end

