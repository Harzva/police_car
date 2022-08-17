% 0-1bag
gw = [5, 8, 3, 2, 6, 6, 5, 4, 7, 5];
gv = [2, 4, 7, 7, 3, 6, 3, 5, 4, 6];
v = 30;
n = 10;
dp=zeros(1,v+1);
for i=1:n
    for j=v+1:-1:2
        if j-gw(i)>1
            dp(j) = max(dp(j), dp(j - gw(i))+ gv(i));
            dp;
        else
        end
    end
end
dp
maxvalue_bag=dp(end)

