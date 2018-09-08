[x,y]=meshgrid(-2:.2:2,-2:0.2:2);
dy=-(12*x*y-6*y.^3);
dx=9*x.^2+10*x*y.^2;
dyu=dy./sqrt(dx.^2+dy.^2);
dxu=dx./sqrt(dx.^2+dy.^2);
quiver(x, y,dxu, dyu)