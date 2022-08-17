clear
clc
a=0.95

% Weight= [5,8,3,2,6,6,5,4,7,5];% 物品的重量，其中0号位置不使用 。
% Value= [2,4,7,7,3,6,3,5,4,6];% 物品对应的价钱，0号位置置为空。
k=[2,4,7,7,3,6,3,5,4,6];
k=-k;
d=[5,8,3,2,6,6,5,4,7,5];
restriction=30;
num=length(k);
sol_new=ones(1,num);
E_current=inf;
E_best=inf;
sol_current=sol_new;
sol_best=sol_new;
t0=97;
tf=3;
t=t0;
p=1;
while t>=tf
    for r=1:100
        %产生随机扰动
        tmp=ceil(rand.*num);
        sol_new(1,tmp)=~sol_new(1,tmp);
        %检查是否满足约束
        while 1
            q=(sol_new*d<=restriction);
            if ~q
                p=~p;
                tmp=find(sol_new==1);
                if p
                    sol_new(1,tmp)=0;
                else
                    sol_new(1,tmp(end))=0;
                end
            else
                break
            end
        end
        %计算背包中的物品价值
        E_new=sol_new*k;
        if E_new<E_current
            E_current=E_new;
            sol_current=sol_new;
            if E_new<E_best
                %把冷却过程中最好的解保存下来
                E_best=E_new;
                sol_best=sol_new;
            end
            else
                if rand<exp(-(E_new-E_current)./t)
                    E_current=E_new;
                    sol_current=sol_new;
                else
                    sol_new=sol_current;
                end
            end
        end
        t=t.*a;
    end
    disp('最优解为:')
    sol_best
    disp('物品总价值等于:')
    val=-E_best;
    disp(val)
    disp('背包中物品重量是：')
    disp(sol_best * d)