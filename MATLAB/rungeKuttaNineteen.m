f=@(x,y)(exp(x.^2)-(x+1).*y)./x;
[x1,y1]=Runge_Kutta(f,1,1.5,2,20);
[x2,y2]=Runge_Kutta(f,1,1.5,2,40);
[x3,y3]=Runge_Kutta(f,1,1.5,2,80);
%g=@(x,u) exp(x.^2+x)*(-1-2*x);
g=@(x,u)exp(x.^3).*x;
%g=@(x,y)exp(x.^2+x);
[x1,u1]=Runge_Kutta(g,1,1.5,2,20);
[x2,u2]=Runge_Kutta(g,1,1.5,2,40);
[x3,u3]=Runge_Kutta(g,1,1.5,2,80);
%y11=(u1.*exp(-x1))./x1;
y11=u1./(1+x1.^2);
y12=u2./(1+x2.^2);
y13=u3./(1+x3.^2);
A=[y1,y11]
B=[y2,y12]
C=[y3,y13]