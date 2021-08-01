%this fi=unction calculates difference of max and min value of each row as
%mmr and difference between min and max value of matrix
function [mmr, mmm]=minimax(M)
a=max(M,[],2); b=min(M,[],2);
mmr=(a-b)';
z=min(M,[],'all');
y=max(M,[],'all');
mmm=y-z;
end