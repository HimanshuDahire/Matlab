%check the entered date is valdi or not
function [a]=valid_date(y,m,d)
    %check the year is leap or not
tic;
if mod(y,4)==0
    if mod(y,100)==0 && mod(y,400)~=0
        c=0;
    else
        fprintf('It is a leap year');
        c=1;
    end
else
    c=0;
end

mon=fix(m);
day=fix(d);

%check for scalar
if ~isscalar(m) || ~isscalar(d) || ~isscalar(y)
    a=false;
    return
end
%checking the month is valid or not
    if mon==2 && c==1 && (1<=day && day<=29)
        a=true;
    elseif mon==2 && c~=1 && (1<=day && day<=28)
        a=true;
    elseif mon==1 && (1<=day && day<=31)
        a=true;
    elseif mon==3 && (1<=day && day<=31)
        a=true;
    elseif mon==4 && (1<=day && day<=30)
        a=true;
    elseif mon==5 && (1<=day && day<=31)
        a=true;
    elseif mon==6 && (1<=day && day<=30)
        a=true;
    elseif mon==7 && (1<=day && day<=31)
        a=true;
    elseif mon==8 && (1<=day && day<=31)
        a=true;
    elseif mon==9 && (1<=day && day<=30)
        a=true;
    elseif mon==10 && (1<=day && day<=31)
        a=true;
    elseif mon==11 && (1<=day && day<=30)
        a=true;
    elseif mon==12 && (1<=day && day<=31)
        a=true;
    else
        a=false;
    end
toc;
end