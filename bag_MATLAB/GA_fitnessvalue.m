function fvalue=GA_fitnessvalue(pop_size,chromo_size,p,w0,w)
%ʹ�óͷ���������Ӧ��ֵ 
%pΪ����������ÿ����ѡ����ļ�ֵ
%w0Ϊ���������б������ݻ�
%wΪ����������ÿ����ѡ��Ʒ���ݻ�
global  Population;
global  fitness_value;
fitness_value=zeros(1,pop_size);
for i=1:pop_size
    for j=1:chromo_size
    a(i,j)=p(j)* Population(i,j);%��i��Ⱦɫ���j����Ʒ�ļ�ֵ
    wx(i,j)=w(j)*Population(i,j);%��i��Ⱦɫ���j����Ʒ�����
    end
      f=sum( a(i,:));%��i��Ⱦɫ��ļ�ֵ��
      b=min(w0,abs(sum(w)-w0));
       if abs(sum(wx(i,:))-w0)>b*0.99%sum(wx(i,:)��i��Ⱦɫ��������
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
% %ʹ�óͷ���������Ӧ��ֵ 
% %xΪȾɫ��
% %pΪ����������ÿ����ѡ����ļ�ֵ
% %w0Ϊ���������б������ݻ�
% %wΪ����������ÿ����ѡ��Ʒ���ݻ�
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