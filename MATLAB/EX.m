
[x,y]=meshgrid(-1:0.1:1,-1:0.1:1);
dx=x.^5*y.^2-x;
dy=x.^4*y.^3+y;
figure
quiver(x,y,dx,dy);

