%admission of student based on percentile scored
function [admit]=eligible(v,q)
ave=(v+q)/2;
if ave>=92 && v>88 && q>88
    admit=true;
else
    admit=false;
end
end