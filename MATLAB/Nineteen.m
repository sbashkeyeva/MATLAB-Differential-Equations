f=@(x,y)(exp(x.^2)-(x+1)*y)/x;
[x1,y1]=Euler(f,1,1.5,2,10);
[x2,y2]=Euler(f,1,1.5,2,20);
[x3,y3]=Euler(f,1,1.5,2,40);
g=@(x,y)exp(x.^2+x);
[x11,U11]=Euler(g,1,1.5,(2*exp(1)),10);
[x12,U12]=Euler(g,1,1.5,(2*exp(1)),20);
[x13,U13]=Euler(g,1,1.5,(2*exp(1)),40);
x4=linspace(1,1.5,11);
x5=linspace(1,1.5,21);
x6=linspace(1,1.5,41);
y4=(U11)./(exp(x4).*(x4));
y5=(U12)./(exp(x5).*(x5));
y6=(U13)./(exp(x6).*(x6));