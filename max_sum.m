function [summa, index]=max_sum(v,n)
%n is consicutve elements of v whose sum is largest possible
%v is a row vector
if n>length(v) || ~isrow(v)
    summa=0;
    index=-1;
else
last=length(v)-n+1;
a=1; 
B=zeros(1,last);
for i=a:last
    s=v(a);
    for j=1:n-1
        s=s+v((1*j)+a);
    end
    B(a)=s;
    a=a+1;
end
[summa, index]=max(B);
end
end