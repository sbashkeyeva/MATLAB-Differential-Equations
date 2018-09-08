syms n x t
pi = 3.14;
f(t) = (-2*(pi).^4*t) / 5 + ((-24)*(2*(-1).^n+1) * sin(2*n*t)*cos(n*x)) /(n.^5);

for t = 0 : (pi/100) : (pi)
    z = symsum(f(t), 'n', 1, 3)
    ezplot(z, [0, 4*pi]);
    hold on
    pause(0.05)
end