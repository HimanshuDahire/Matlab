clc; clear;
diary 'product.txt'
load('n.txt');
for i=1:length(n)
    fac=factor(n(i));
    len=length(fac);
    if len>3
        x=fac(1);
        for ii=1:(len-3)
            fac(1)=x*fac(ii+1);
            x=fac(1);
        end
        facnew=flip([fac(1),fac(len-1),fac(len)]);
    elseif len<3
        facnew=flip([[1] fac]);
        if len<2
            facnew=flip([[1] [1] fac]);
        end
    elseif len==3
        facnew=flip(fac);
    end
    %fprintf('The factor of %d is: ',n(i))
    fprintf('%d     %d      %d\n',facnew)
end