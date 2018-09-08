
[x,y]=meshgrid(-2:0.2:2,-2:0.2:2);
dy=12*x*y+6*y.^3;
dx=9*x.^2+10*x*y.^2;
figure
quiver(x,y,dx,dy);

