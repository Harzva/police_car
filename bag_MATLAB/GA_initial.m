function Population=GA_Initial(pop_size,chromo_size)
%nΪȾɫ�峤�ȣ�������ѡ�����Ʒ����
%PΪ��ʼ��Ⱥ��С
global  Population;
for i=1:pop_size
    for j=1:chromo_size
        temp=rands(1,1);
        if temp>0
            Population(i,j)=1;
        else 
            Population(i,j)=0;
        end
    end
end
clear i;
clear j;
clear temp;

        
    

