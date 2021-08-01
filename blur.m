function output=blur(img,w)
B=double(img);
[row,col]=size(B);
xx=2*w+1;
for ii=1:row
    for jj=1:col
        m=ii-fix(xx/2);
        n=ii+fix(xx/2);
        o=jj-fix(xx/2);
        p=jj+fix(xx/2);
        if m<1
            m=1;
        end
        if n>row
            n=row;
        end
        if o<1
            o=1;
        end
        if p>col
            p=col;
        end
        A=B([m:n],[o:p]);
        C(ii,jj)=mean(A(:));
    end
end
    output=uint8(C);
end