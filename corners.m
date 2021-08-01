%this function tells us 4 corner elements of a matrix
function [top_left, top_right, bottom_left, bottom_right]=corners(Z)
top_left=Z(1,1);
top_right=Z(1,end);
bottom_left=Z(end,1);
bottom_right=Z(end,end);
end