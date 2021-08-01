function [out]=picker(condition, in1, in2)
if condition==true
    out=in1;
elseif condition == false
    out=in2;
end
end