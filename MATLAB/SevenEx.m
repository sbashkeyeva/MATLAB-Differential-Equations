f=@(x,y) 3/(x.^3)+1-2*y./x;
[x1,y1]=Euler(f,1,2,1,10);
[x2,y2]=Euler(f,1,2,1,20);
[x3,y3]=Euler(f,1,2,1,40);
error1=abs(y1-exp(x1))
error2=abs(y2-exp(x2))
error3=abs(y3-exp(x3))
plot(x1,error1,'r')
plot(x2,error2,'m')
plot(x3,error3)
y4=(1/(3*2.^2))*(9*log(2)+x.^3+2)

