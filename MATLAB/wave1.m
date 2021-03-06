a = 1;
L = 1;
b = 0.5;
h = 0.1;
r=1;
n = fix(L/h)+1;
x = linspace(0, L, n);
k = 0.1;
m = fix(b/k)+1;
t = linspace(0, b, m);
U = zeros(n, m);
U(:, 1) = 1-abs(2*x-1);
U(1, :) = 0;
U(end, :) = 0;
U(:, 2) = (1-r^2)*(1-abs(2*x-1))+(r^2/2)*(1-abs(2*(x+h)-1)+(1-abs(2*(x-h)-1)))

for j = 2 : m-1
    for i = 2 : n-1
        U(i, j+1) = (2-(2*a^2*k^2/(h^2)))*U(i, j) + (a^2*k^2/(h^2))*(U(i+1, j)+U(i-1, j))-U(i,j-1)
    end
end
[xx, tt] = meshgrid(t, x);
mesh(xx, tt, U)
xlabel('Time (sec)')
ylabel('X coordinate (m)')
zlabel('Displacement (F)')
