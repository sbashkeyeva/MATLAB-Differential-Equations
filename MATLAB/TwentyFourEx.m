[x,y]=meshgrid(-2:.2:2,-2:0.2:2);
dy=-(3*x.*y+2*y.*y+y);
dx=x.*x+2*x.*y+x+2*y;
dyu=dy./sqrt(dx.^2+dy.^2);
dxu=dx./sqrt(dx.^2+dy.^2);
quiver(x, y,dxu, dyu)