function [m,n,p,q] = GeneticAlgorithm(pop_size, chromo_size, generation_size, cross_rate,pe_tubian,p,w0,w)

global G ; %当前代
global fitness_value;%当前代适应度矩阵
global best_fitness;%历代最佳适应值
global fitness_avg;%历代平均适应值矩阵
global best_individual;%历代最佳个体
global best_generation;%最佳个体出现代



fitness_avg = zeros(generation_size,1);


fitness_value(pop_size) = 0.;
best_fitness = 0.;
best_generation = 0;
GA_Initial(pop_size,chromo_size);%初始化
for G=1:generation_size   
  GA_fitnessvalue(pop_size,chromo_size,p,w0,w);  %计算适应度 
   GA_copy(pop_size,chromo_size);%选择操作
   GA_exchange(pop_size,chromo_size,cross_rate);%交叉操作
   GA_tubian(pop_size,chromo_size,pe_tubian);%变异操作
end
plotGA(generation_size);%打印算法迭代过程
m = best_individual;%获得最佳个体
n = best_fitness;%获得最佳适应度
g = best_generation;%获得最佳个体出现代

clear i;
clear j;