function fvalue=GA_fitnessvalue(pop_size,chromo_size,p,w0,w)
%使用惩罚法计算适应度值 
%p为背包问题中每个被选物体的价值
%w0为背包问题中背包总容积
%w为背包问题中每个被选物品的容积
global  Population;
global  fitness_value;
fitness_value=zeros(1,pop_size);
for i=1:pop_size
    for j=1:chromo_size
    a(i,j)=p(j)* Population(i,j);%第i个染色体第j个物品的价值
    wx(i,j)=w(j)*Population(i,j);%第i个染色体第j个物品的体积
    end
      f=sum( a(i,:));%第i个染色体的价值和
      b=min(w0,abs(sum(w)-w0));
       if abs(sum(wx(i,:))-w0)>b*0.99%sum(wx(i,:)第i个染色体重量和
       P=0.99;
       else
       P=abs(sum(wx(i,:))-w0)/b;
       end
fitness_value(i)=f*(1-P)*(1-P)*(1-P);
end
clear i;
clear j;
clear a;
clear wx;









% function fitnessvalue=GA_fitnessvalue(x,p,w0,w)
% %使用惩罚法计算适应度值 
% %x为染色体
% %p为背包问题中每个被选物体的价值
% %w0为背包问题中背包总容积
% %w为背包问题中每个被选物品的容积
% l=length(x);
% for i=1:l
%     a(i)=p(i).*x(i);
% end
% f=sum(a);
% b=min(w0,abs(sum(w)-w0));
% for i=1:l
%     wx(i)=w(i).*x(i);
% end
% if abs(sum(wx)-w0)>b*0.99
%     p=0.99;
% else
%     p=abs(sum(wx)-w0)/b;
% end
% fitnessvalue=f*(1-p)*(1-p)*(1-p);