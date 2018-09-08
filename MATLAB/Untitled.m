a=2
L=1
b=0.5
n=fix(a/h)+1
m=fix(b/h)+1
x=linspace (0,a,n)
y=linspace (0,b,m)
U=zeros(n,m)
ave=70
U=ave*ones(n,m)
U(1,1)=50
U(1,end)=130
k=0.5*(h^2)/(a^2)
m=fix(b/k)+1
t=linspace(0,b,m)
U=zeros(n,m)
U(:,0)=sin(pi*x)
U(1,:)=0
U(0,:)=0
U(end,:)=0
for j=1:m-1
    for i=2:n-1
        U(i,j+1)=(1-2*(a^2)*k/(h^2))*U(i,j)+(a^2)*k/(h^2)*(U(i+1,j)+U(i-1,j))
    end
end
[xx, tt] = meshgrid(t, x);
mesh(xx, tt, U)
xlabel('Time (sec)')
ylabel('X coordinate (m)')
zlabel('Temperature (F)')
