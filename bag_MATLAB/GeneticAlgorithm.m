function [m,n,p,q] = GeneticAlgorithm(pop_size, chromo_size, generation_size, cross_rate,pe_tubian,p,w0,w)

global G ; %��ǰ��
global fitness_value;%��ǰ����Ӧ�Ⱦ���
global best_fitness;%���������Ӧֵ
global fitness_avg;%����ƽ����Ӧֵ����
global best_individual;%������Ѹ���
global best_generation;%��Ѹ�����ִ�



fitness_avg = zeros(generation_size,1);


fitness_value(pop_size) = 0.;
best_fitness = 0.;
best_generation = 0;
GA_Initial(pop_size,chromo_size);%��ʼ��
for G=1:generation_size   
  GA_fitnessvalue(pop_size,chromo_size,p,w0,w);  %������Ӧ�� 
   GA_copy(pop_size,chromo_size);%ѡ�����
   GA_exchange(pop_size,chromo_size,cross_rate);%�������
   GA_tubian(pop_size,chromo_size,pe_tubian);%�������
end
plotGA(generation_size);%��ӡ�㷨��������
m = best_individual;%�����Ѹ���
n = best_fitness;%��������Ӧ��
g = best_generation;%�����Ѹ�����ִ�

clear i;
clear j;