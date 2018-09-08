h=@(x,y) sin(x*y)-x.^2*y;
[x,y]=Euler(h,1,1.6,pi,3)