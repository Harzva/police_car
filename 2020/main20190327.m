clear all
clc


sheet1 = xlsread('ditushuju.xls',1);%读入点的数据
x = sheet1(:,2);%点的横坐标
y = sheet1(:,3);%点的纵坐标
no_point=size(x,1);

sheet2 = xlsread('ditushuju.xls',2);%读入路的数据
start = sheet2(:,1);
terminal = sheet2(:,2);
no_start = size(start,1);

figure()
for i = 1:no_point
    plot(x(i),y(i),'.r');
    hold on
end

for i=1:no_start
    plot([x(start(i)),x(terminal(i))],[y(start(i)),y(terminal(i))],'b');
    hold on
end


for i=1:no_point
     str_i=num2str(i);
     text(x(i)+10,y(i)+10,str_i);
     hold on;
end
%画标识    
a=10^8*ones(no_point);
%产生距离邻接矩阵

for k=1:no_start
    i=start(k);j=terminal(k);
    a(i,j)=sqrt((x(i)-x(j))^2+(y(i)-y(j))^2);
    a(j,i)=a(i,j);
end
for i=1:no_point 
    a(i,i)=0;
end

[d,r]=floyd(a);

%遗传算法

no_jingche=15;
N=200;

w0=rand(no_jingche,N);
w1=ceil(w0*307);


y=f_fitness(w1,d);
no_circle=2000;
fitness_best=zeros(1,no_circle);
for i=1:no_circle
    i;
    
    w1=jiaocha(w1);
    w1=bianyi(w1);
    w1=xuanze(w1,y);
    y=f_fitness(w1,d);
    fitness_best(i)=max(y);
end

figure(2);
plot(fitness_best);

















P=zeros(307);

for i=1:no_point
    for j=1:no_point
        if d(i,j)<=2000
            P(i,j) = 1;
        end
    end
end

record = [];
M=16;
for k=1:M
    no_P = sum(P,2);
    [value_max num_max] = max(no_P); 
    record =[record num_max];
    for j=1:no_point
    if P(num_max,j) ==1
        plot(x(j),y(j),'r*');
    end
end
    for j=1:no_point
        if P(num_max,j) == 1
            P(:,j) =zeros(no_point,1);
        end
    end
end

Q=zeros(M,no_point);

for i=1:size(record,2)
    plot(x(record(i)),y(record(i)),'.b','MarkerSize',30);
    Q(i,:) = d(record(i),:);
    hold on
end

for i=1:M
    for j=1:no_point
        if Q(i,j)<=2000
                Q(i,j) = 1;
        else 
             Q(i,j) = 0;
        end
    end
end

radio = sum(Q);

K=0;
for i=1:no_point
    if radio(i) == 0
        K=K+1;
    end
end

    


for j=1:no_point
    if P(num_max,j) ==1
        plot(x(j),y(j),'r*');
    end
end
    
    

    


