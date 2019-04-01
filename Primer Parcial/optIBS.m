function [x,i] = optIBS(f,x0,x1,x2)
    f0 = f(x0);
    f1 = f(x1);
    f2 = f(x2);
    b1 = (f1-f0)/(x1-x0);
    b2 = (((f2-f1)/(x2-x1))-b1)/(x2-x0);
    i = 0;
    MAX = 66;
    TOL = eps;
    
   x = (x1+x2)/2-b1/(2*b2);
   
   while abs((x2-x0)/x3)<TOL && i<MAX  %% checar que poner en el while
       
       x0 = x1;
       x1 = x2;
       x2 = x;
       
       f0 = f1;
       f1 = f2;
       f2 = f(x);
       
       b1 = (f1-f0)/(x1-x0);
       b2 = (((f2-f1)/(x2-x1))-b1)/(x2-x0);
       x = (x1+x2)/2-b1/(2*b2);
       i = i+1;
   end 
       
   end