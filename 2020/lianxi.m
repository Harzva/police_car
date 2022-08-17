%1. 编程 求1*2*3*…*10。
S=1;
for i=1:10
    S=S*i;
end
S 
%2. 给出区间（-100，100）内的任意三个数，找出最大的数。
a=rand(1)*200-100;
b=rand(1)*200-100;
c=rand(1)*200-100; 
if a>b 
    d=a;
else
    d=b
end 
if  d>c
    max_abc=d;
else
     max_abc=c;
end
max_abc


%3. 生成元素随机为-1，0，1的4*6矩阵，使得-1，0，1的个数出现的概率分别为0.2，0.3，0.5。
b=rand(4,6);
a=zeros(4,6);
for i=1:4
    for j=1:6
        if b(i,j)<=0.2
            a(i,j)=-1;
        elseif   b(i,j)>0.5  
            a(i,j)=1;
        end
    end
end
            

%4. 画出一个复合y=sin(x/x^2+x^3)函数在[-5,5]的图像。
x=-5:0.1:5;
y=sin(x./(x.^2+x.^3));
plot(x,y)

%5. 定义一个函数，功能是实现求一个矩阵的最大元素的平方，并统计最大的元素出现的次数。


