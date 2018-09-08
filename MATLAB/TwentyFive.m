[x,y]=meshgrid(-1:.1:1,-1:0.1:1);
dy=-x.^4.*y.^3-y;
dx=x.^5.*y.^2-x;
quiver(x, y,dx, dy)