best_individualfunction Population=GA_exchange(pop_size,chromo_size,cross_rate)
%�Ŵ��㷨��������
%cross_rateΪ��������
global  Population;
POP=[];
%k=floor(n*pc);  %���ڽ�����Ⱦɫ����Ŀ
%���õ��㽻������
j=1;%���ڽ����Ⱦɫ�����
for i=1:pop_size
    test(i)=rand;
    if test(i)<cross_rate
        for z=1:chromo_size
            POP(j,z)=Population(i,z);%������Ҫ�����Ⱦɫ��
        end
        POP(j,chromo_size+1)=i;%������Ҫ�����Ⱦɫ�����
        p(j)=randint(1,1,[1 chromo_size-1]);%���������-1,l-1����һ����,p(j)���潻��λ��
        j=j+1;
    end
end
k0=j-1;
k=floor(k0/2);
if k>=1
    for m=1:k
        for t=p(2*m-1)+1:chromo_size%����λ�ô�p+1�����
        s=POP(2*m-1,t);
        POP(2*m-1,t)=POP(2*m,t);
        POP(2*m,t)=s;
        end
    end
    for m=1:k0
        for i=1:chromo_size
        Population(POP(m,chromo_size+1),i)=POP(m,i);%������Ⱥ����
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
% %�Ŵ��㷨��������
% %pcΪ��������
% Population1=Population;
% POP=[];
% n=length(Population(:,1));
% %k=floor(n*pc);  %���ڽ�����Ⱦɫ����Ŀ
% %���õ��㽻������
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
    
        
        
    
    