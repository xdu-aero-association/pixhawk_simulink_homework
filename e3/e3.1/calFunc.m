
function Y = calFunc(x,p)
%���ģ�ͺ���
kx = p(1);
ky = p(2);
kz = p(3);
bx = p(4);
by = p(5);
bz = p(6);

Ka=[kx 0 0;0 ky 0;0 0 kz];
ba=[bx by bz]';
m = length(x);
Y=zeros(1,m);
for i=1:m  
    Y(i)=norm(Ka*(x(1:3,i)+ba));
end
end