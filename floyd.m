function [D,path] = floyd(A)
% DΪ���·���������pathΪ���·������һ����ַ��AΪԭʼ·���������
n = size(A,1);    % ȷ��·��ͼ�Ĵ�С��nΪ�㷨��Ҫ���еĴ���
% ��ʼ��D��pathֵ
D=A;
path=zeros(n,n);
for i = 1:n
    for j = 1:n
        if D(i,j) ~= inf;
            path(i,j) = j;
        end
    end
end
%��n�ε���������D��path
for k = 1:n
    for i = 1:n
        for j = 1:n
            if D(i,k) + D(k,j) < D(i,j);    %�ж������ڵ�k�Ƿ����Ż�·��
                D(i,j) = D(i,k) + D(k,j);
                path(i,j) = path(i,k);
            end
        end
    end
end
