g=@(x,y) x.^2-3*x*y+y.^2-3*y;
[x,y]=Euler(g,0,0.15,2,3);
