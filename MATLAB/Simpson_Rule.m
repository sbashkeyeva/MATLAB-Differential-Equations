function [ x ] = Simpson_Rule( f,x0,b,N )
%UNTITLED23 Summary of this function goes here
%   Detailed explanation goes here
h=(b-x0)/N;
x=0;
for k=1:N
    x=(h./6)*(f(x0)+f(b))+(h./3)*f(x0+k*h)+(2.*h/3)*f(x0+((2*k-1)*h)./2);
end
x=x*h;
end

