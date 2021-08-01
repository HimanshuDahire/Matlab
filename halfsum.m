%sum of elements of upper triangular martix
function [summa]=halfsum(A)
[a b]=size(A);
summa=0;
for i=1:a
    for j=i:b
        summa=summa+A(i,j);
    end
end
end