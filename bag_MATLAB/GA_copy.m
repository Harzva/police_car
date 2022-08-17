function GA_copy(pop_size,chromo_size)
%复制算子
%Population为种群
global  Population;
global G;
global best_generation;
global fitness_value;
global fitness_table;
global fitness_avg;
global best_fitness;
global best_individual;
fval=fitness_value/sum(fitness_value);%每个染色体适应值所占比例
F(1)=0;
for j=1:pop_size
    F(j+1)=0;
    for k=1:j
        F(j+1)=F(j+1)+fval(k);
    end
end
%轮转法
for i=1:pop_size
    test=rand;
    for j=1:pop_size
        if((test>=F(j))&&(test<F(j+1)))
            Population1(i,:)=Population(j,:);
        end
    end
end
for i=1:pop_size
    for j=1:chromo_size
          Population(i,j)=Population1(i,j);
    end 
end
for i=1:pop_size    
    fitness_table(i) = 0.;
end
for i=1:pop_size
    if i==1
        fitness_table(i) = fitness_table(i) + fitness_value(i);    
    else
        fitness_table(i) = fitness_table(i-1) + fitness_value(i);
    end
end
fitness_avg(G) = fitness_table(pop_size)/pop_size;


if fitness_value(pop_size) > best_fitness
    best_fitness = fitness_value(pop_size);
    best_generation = G;
    for j=1:chromo_size
        best_individual(j) =  Population(pop_size,j);
    end
end
clear i;
clear j;
clear test;

        
        
