function [min_s,lujing,min_g] = path(x,y,r,s)
% xΪ��ʼ·�ڣ� yΪ��ֹ·�ڣ�
% min_sΪx��y֮�����̾��룻lujinΪx��y��·����min_gΪ������·������
n = length(r(1,:));% nΪ·������
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