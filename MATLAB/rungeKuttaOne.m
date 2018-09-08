f=@(x,y) 2*x.^2+3*y.^2-2;
[x1,y1]=Runge_Kutta(f,2,2.1,1,2);
g=@(x,y) x.^2-3*x.*y+y.^2-3*y;
[x2,y2]=Runge_Kutta(g,0,0.1,2,2);
p=@(x,y) sin(x*y)-x.^2*y;
[x3,y3]=Runge_Kutta(p,1,1.04,pi,2);