function [coded]=caesar(a,b)

a=double(a);
shift=b-(95*fix(b/95));

    for i=1:length(a)
        if (a(i)+shift)>126
           a(i)=((a(i)+shift)-126)+31;
        elseif (a(i)+shift)<32
               a(i)=127-(32-(a(i)+shift));
        else
            a(i)=a(i)+shift;
        end   
    end
coded=char(a);
end