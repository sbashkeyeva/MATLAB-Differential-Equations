f=@(x,y) (2*x+1)/(5*y.^4+1);
[x1,y1]=Heun(f,2,3,1,10);
[x2,y2]=Heun(f,2,3,1,20);
[x3,y3]=Heun(f,2,3,1,40);
R1=y1.^5+y1-x1.^2-x1+4;
R2=y2.^5+y2-x2.^2-x2+4;
R3=y3.^5+y3-x3.^2-x3+4;
A=[y1,R1];
B=[y2,R2];
C=[y3,R3];
plot(x1,y1,'g')
hold on
plot(x2,y2,'m')
hold on 
plot(x3,y3,'r')
