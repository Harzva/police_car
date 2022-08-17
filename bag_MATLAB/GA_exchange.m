best_individualfunction Population=GA_exchange(pop_size,chromo_size,cross_rate)
%遗传算法交换算子
%cross_rate为交换概率
global  Population;
POP=[];
%k=floor(n*pc);  %用于交换的染色体数目
%采用单点交换算子
j=1;%用于交叉的染色体个数
for i=1:pop_size
    test(i)=rand;
    if test(i)<cross_rate
        for z=1:chromo_size
            POP(j,z)=Population(i,z);%保存需要交叉的染色体
        end
        POP(j,chromo_size+1)=i;%保存需要交叉的染色体序号
        p(j)=randint(1,1,[1 chromo_size-1]);%随机产生（-1,l-1）的一个数,p(j)保存交叉位置
        j=j+1;
    end
end
k0=j-1;
k=floor(k0/2);
if k>=1
    for m=1:k
        for t=p(2*m-1)+1:chromo_size%交叉位置从p+1到最后
        s=POP(2*m-1,t);
        POP(2*m-1,t)=POP(2*m,t);
        POP(2*m,t)=s;
        end
    end
    for m=1:k0
        for i=1:chromo_size
        Population(POP(m,chromo_size+1),i)=POP(m,i);%更新种群个体
        end
    end
end
    clear i;
    clear j;
    clear k0;
    clear k;
    clear t;
    clear s;
    clear m;








% function Population1=GA_exchange(Population,pc)
% %遗传算法交换算子
% %pc为交换概率
% Population1=Population;
% POP=[];
% n=length(Population(:,1));
% %k=floor(n*pc);  %用于交换的染色体数目
% %采用单点交换算子
% j=1;
% l=length(Population(1,:));
% for i=1:n
%     test(i)=rand;
%     if test(i)<pc
%         for z=1:l
%             POP(j,z)=Population(i,z);
%         end
%         POP(j,l+1)=i;
%         p(j)=randint(1,1,[1 l-1]);
%         j=j+1;
%     end
% end
% k0=j-1;
% k=floor(k0/2);
% if k>=1
%     for m=1:k
%         for t=p(2*m-1)+1:l
%         s=POP(2*m-1,t);
%         POP(2*m-1,t)=POP(2*m,t);
%         POP(2*m,t)=s;
%         end
%     end
%     for m=1:k0
%         for i=1:l
%         Population1(POP(m,l+1),i)=POP(m,i);
%         end
%     end
% end
    
        
        
    
    