f=@(x,y) 3./(x.^3)+1-2*y./x;
[x1,y1]=Runge_Kutta(f,1,2,1,10);
[x2,y2]=Runge_Kutta(f,1,2,1,20);
[x3,y3]=Runge_Kutta(f,1,2,1,40);
R1=(9*log(x1)+x1.^3+2)./(3*x1.^2);
R2=(9*log(x2)+x2.^3+2)./(3*x2.^2);
R3=(9*log(x3)+x3.^3+2)./(3*x3.^2);
A=[y1,R1];
C=[y2,R2];
B=[y3,R3];
err1=abs(y1-exp(x1));
err2=abs(y2-exp(x2));
err3=abs(y3-exp(x3));
plot(x1,err1,'g')
hold on 
plot(x2,err2,'m')
hold on
plot(x3,err3,'b')


