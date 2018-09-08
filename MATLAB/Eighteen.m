f=@(x,y)(exp(x)/((1+x.^2).^2))-(2*x*y)/(1+x.^2);
[x1,y1]=Euler(f,0,2,1,10);
[x2,y2]=Euler(f,0,2,1,20);
[x3,y3]=Euler(f,0,2,1,40);
g=@(x,y)(exp(x)./(1+x.^2));
[x11,U11]=Euler(g,0,2,1,10);
[x12,U12]=Euler(g,0,2,1,20);
[x13,U13]=Euler(g,0,2,1,40);
x4=linspace(0,2,11);
x5=linspace(0,2,21);
x6=linspace(0,2,41);
y4=(U11)./(1+(x4).^2);
y5=(U12)./(1+(x5).^2);
y6=(U13)./(1+(x6).^2);