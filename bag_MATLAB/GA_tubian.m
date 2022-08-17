function Population=GA_tubian(pop_size,chromo_size,pe_tubian)
%遗传算法突变算子
%pe为突变概率
global  Population;
for i=1:pop_size
    for j=1:chromo_size
        test=rand;
        if test<pe_tubian
            Population(i,j)=1-Population(i,j);
        end
    end
end

