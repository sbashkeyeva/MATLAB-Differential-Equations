f=@(x,y) (-2*x-cos(x))./(3*y.^2+4*y);
[x1,y1]=Heun(f,0,1,1,10);
[x2,y2]=Heun(f,0,1,1,20);
[x3,y3]=Heun(f,0,1,1,40);
err1=abs(y1-exp(x1));
err2=abs(y2-exp(x2));
err3=abs(y3-exp(x3));
plotyy(x1,err1,x2,err2)
plot(x1,err1,'r')
hold on
plot(x2,err2,'m')
hold on 
plot(x3,err3,'b')
