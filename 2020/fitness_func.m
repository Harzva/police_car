function [c,c1]= fitness_func(d,che)
%UNTITLED16 此处提供此函数的摘要
%   此处提供详细说明

%% r_num 为只有一辆警车在i路口接到报警，可以到的路口数；（3分钟；速度40KM/h；可以行驶R=2000m）；
% s2 为一辆警车的距离矩阵；
% r_num 为一辆警车在第i路口可到达的路口数；
R = 2000;c
s2 = d;
s2(find(d>R)) = 0;
s3 = zeros(m,m);
s3 = s2|s3;
r_num = zeros(1,m); 
for i = 1:m
    r_num(i) = sum(s3(:,i));
end

%% 贪心法求出最少车辆；（12辆为最优解）

% N辆车所覆盖的路口情况；
% che为有N辆；
% c为所覆盖路口数；
% c1为N辆车所在的路口；
che = 15;
[c,c1] = zuishaoche(r_num,s2,che);% 最少车
selected_id=c1
num_reach_scene=c
ratio_reach_scene=c/307

end
