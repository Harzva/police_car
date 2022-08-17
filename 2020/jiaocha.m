function  w2=jiaocha(w1)

[m,N]=size(w1);

w2=w1;

for i=1:2:N-2
    p=rand(1);
    if p<0.7
        k=ceil(rand(1)*14);
        w2(1:k,i)=w1(1:k,i+1);
        w2(1:k,i+1)=w1(1:k,i);
    end
end
    
    