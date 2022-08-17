function y=f_fitness(w1,d)

[m,N]=size(w1);
no_point=size(d,1);
y=zeros(1,N);
% disp('f_fitness')
for j=1:N
    r=zeros(m,no_point);
    for i=1:m
        r(i,:)=d(w1(i,j),:);
    end
    
    for ki=1:m
        for kj=1:no_point
            if r(ki,kj)<=2000
               r(ki,kj)=1;
            else r(ki,kj)=0;
            end
        end
    end
    yy=sum(r,1);
    for k=1:no_point
        if yy(k)>0
            y(j)=y(j)+1;
        end
    end
end
y=y./no_point;

    
            
    
    
        
        