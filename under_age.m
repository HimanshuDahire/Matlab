%function to check the age limit
function [a]=under_age(age, limit)
if nargin<2
    limit=21;
end
if age<limit && age>0
    a=true;
elseif age<0 || age>=limit
    a=false;
end     
end