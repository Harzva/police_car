function [D,path] = floyd(A)
% D为最短路径距离矩阵，path为最短路径的下一跳地址，A为原始路径距离矩阵
n = size(A,1);    % 确定路径图的大小，n为算法需要运行的次数
% 初始化D和path值
D=A;
path=zeros(n,n);
for i = 1:n
    for j = 1:n
        if D(i,j) ~= inf;
            path(i,j) = j;
        end
    end
end
%做n次迭代，更新D和path
for k = 1:n
    for i = 1:n
        for j = 1:n
            if D(i,k) + D(k,j) < D(i,j);    %判定经过节点k是否能优化路径
                D(i,j) = D(i,k) + D(k,j);
                path(i,j) = path(i,k);
            end
        end
    end
end
