f=@(x,y)x.^2-2*x*y;
[x1,y1]=Euler(f,0,2,3,10);
[x2,y2]=Euler(f,0,2,3,20);
[x3,y3]=Euler(f,0,2,3,40);
g=@(x,y)exp(x.^2).*(x.^2);
[x1,U11]=Euler(g,0,2,3,10);
[x2,U12]=Euler(g,0,2,3,20);
[x3,U13]=Euler(g,0,2,3,40);
y4=(U11).*exp(-1*((x1).^2));
y5=(U12).*exp(-1*((x2).^2));
y6=(U13).*exp(-1*((x3).^2));