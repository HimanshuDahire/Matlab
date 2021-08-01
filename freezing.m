function [numfreez]=freezing(v)
%numfreez is number of days with sub zero temperature
numfreez=length(v(v<32));
end