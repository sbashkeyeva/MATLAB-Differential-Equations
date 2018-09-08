f=@(x,y) 3./(x.^3)+1-2*y./x;
[x1,y1]=Midpoint(f,1,2,1,10);
[x2,y2]=Midpoint(f,1,2,1,20);
[x3,y3]=Midpoint(f,1,2,1,40);
y4=(9*log(x1)+x1.^3+2)./(3*x1.^2);
y5=(9*log(x2)+x2.^3+2)./(3*x2.^2);
y6=(9*log(x3)+x3.^3+2)./(3*x3.^2);
A=[y1,y4];
B=[y2,y5];
C=[y3,y6];
err1=abs(y1-exp(x1));
err2=abs(y2-exp(x2));
err3=abs(y3-exp(x3));
plot(x1,err1,'g')
hold on
plot(x2,err2,'m')
hold on 
plot(x3,err3,'b')


