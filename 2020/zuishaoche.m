function [c,d] = zuishaoche(r_num,s2,n)
% n为车辆数；
% c为所覆盖路口数；
% d为N辆车所在的路口；
c = 0;
b = zeros(n,1);
for i = 1:n
    a = max(r_num);
    
    c = c+a;
    b = find(r_num == a);
    d(i) = b(1);
    
    
    s = s2;
    m = length(r_num);
    for i = 1:m
        if s2(d,i) == 0
            continue;
        else
            s(i,:) = 0;
        end
    end
    s3 = zeros(m,m);
    s3 = s|s3;
    r1 = zeros(1,m);
    for i = 1:m
        r1(i) = sum(s3(:,i));
    end
    r_num =r1;
    s2 = s;

end