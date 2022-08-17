function [outputArg1,outputArg2] = untitled8(inputArg1,inputArg2)
%UNTITLED8 此处提供此函数的摘要
%   此处提供详细说明
outputArg1 = inputArg1;
outputArg2 = inputArg2;
end



gw = [5, 8, 3, 2, 6, 6, 5, 4, 7, 5];
gv = [2, 4, 7, 7, 3, 6, 3, 5, 4, 6];
v = 30;
n = 10;
% dp =linspace(0,v,1);
dp=zeros(1,v+1)
for i=1:n
    for j=2:v+1
        if j-gw(i)>=1
            dp(j) = max(dp(j), dp(j - gw(i))+ gv(i));
            dp;
        else
        end
    end
end
dp