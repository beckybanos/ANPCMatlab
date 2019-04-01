f = @(x) - 0.1*x.^4 - 0.15*x.^3 - 0.5*x.^2 - 0.25*x + 1.2;
[ss, fd, te] = diff(f, 0.5,11);

loglog(ss,te);
xlabel('step size');
ylabel('error');
title('error versus step size');