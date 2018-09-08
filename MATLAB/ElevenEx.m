f=@(x,y) (-2*x-cos(x))/(3*y.^2+4*y);
[x1,y1]=Euler(f,0,1,1,10)
[x2,y2]=Euler(f,0,1,1,20)
[x3,y3]=Euler(f,0,1,1,40)