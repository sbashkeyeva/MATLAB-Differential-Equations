function [  x,y ] = Runge_Kutta( f,x0,b,y0,N )
%UNTITLED9 Summary of this function goes here
%   Detailed explanation goes here
h=(b-x0)/N;
x=x0:h:b;
y=zeros(size(x));
y(1)=y0;
for k=1:N
   K1=f(x(k),y(k));
   K2=f(x(k)+h/2,y(k)+h*(K1)/2);
   K3=f(x(k)+h/2,y(k)+h*(K2)/2);
   K4=f(x(k)+h,y(k)+h*K3);
   y(k+1)=y(k)+h*(K1+2*K2+2*K3+K4)/6;
end
x=x';
y=y';


end
