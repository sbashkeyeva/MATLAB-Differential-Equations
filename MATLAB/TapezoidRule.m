function [ x ] =  TapezoidRule(f,x0,b,N )
h=(b-x0)/N;
x=0;
for k=1:N
    x=0.5*h*(f(x0)+f(b))+h*f(x0+k*h);
end
x=x*h;
end

