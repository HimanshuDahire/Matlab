function [distance]=get_distance(A,B)
[~, ~, sheet]=xlsread('Distances.xlsx');
[a,b]=size(sheet);m=0;n=0;

for i=2:a
    if strcmp(sheet{i,1},A)==1
        m=i;
    end
end
for j=2:b
    if strcmp(sheet{1,j},B)==1
        n=j;
    end
end
if m>1 && n>1
    distance=sheet{m,n};
else
    distance=-1;
end
end