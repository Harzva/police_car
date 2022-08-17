function [min_s,lujing,min_g] = path(x,y,r,s)
% x为起始路口； y为终止路口；
% min_s为x，y之间的最短距离；lujin为x到y的路径；min_g为经过的路口数；
n = length(r(1,:));% n为路口数；
min_s = s(x,y);
lujing = zeros(1,n);

for i = 1:n
    a = x;
    lujing(i) = a;
    if a == y
        break;
    else
        a = r(x,y);
        x = a;
    end
end
b = zeros(1,n);
b = lujing|b;
min_g = sum(b);