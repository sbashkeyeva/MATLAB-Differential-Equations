
[x,y]=meshgrid(-2:0.2:2,-2:0.2:2);
dy=3*x*y+2*y.^2+y;
dx=x.^2+2*x*y+x+2*y;
figure
quiver(x,y,dx,dy);
