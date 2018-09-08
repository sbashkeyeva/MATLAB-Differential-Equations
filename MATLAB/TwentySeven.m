[x,y]=meshgrid(-4:.4:4,-4:0.4:4);
dy=-(3*x.^2*y.^2+2*y);
dx=2*x;
dyu=dy./sqrt(dx.^2+dy.^2);
dxu=dx./sqrt(dx.^2+dy.^2);
quiver(x, y,dxu, dyu)