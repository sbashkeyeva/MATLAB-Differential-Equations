function [ x,y ] = Euler( f,x0,b,y0,N )
%UNTITLED7 Summary of this function goes here
%   Detailed explanation goes here
h=(b-x0)/N;
x=x0:h:b;
y=zeros(size(x));
y(1)=y0;
for k=1:N
    y(k+1)=y(k)+h*(f(x(k),y(k)));
end 
x=x';
y=y';

end

