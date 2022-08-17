function  w2=bianyi(w1)
w2=w1;
[m,N]=size(w1);
p=0.1;
a=rand(m,N);
for i=1:m
    for j=1:N-1
        if a(i,j)<p
           w2(i,j)=ceil(rand(1)*307);
        end
    end
end