function Population=GA_tubian(pop_size,chromo_size,pe_tubian)
%�Ŵ��㷨ͻ������
%peΪͻ�����
global  Population;
for i=1:pop_size
    for j=1:chromo_size
        test=rand;
        if test<pe_tubian
            Population(i,j)=1-Population(i,j);
        end
    end
end

