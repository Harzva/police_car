function w2=xuanze(w1,fitness)
[m,N]=size(w1);
s=sum(fitness);
p=fitness/s;
[v1 v2] = max(fitness);
w2=w1;
a=rand(1,N);
for i=1:N-1
   if a(i)<=p(1),w2(:,i)=w1(:,1);
   else
        for j=2:N
             if a(i)>sum(p(1:j-1)) & a(i)<=sum(p(1:j))
                 w2(:,i)=w1(:,j);
                 break;
             end
        end
   end
end
w2(:,N) = w1(:,v2);