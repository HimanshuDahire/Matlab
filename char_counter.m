function charnum=char_counter(fname,character)
fid=fopen(fname, 'rt');
if fid<0
    charnum=-1;
    return
end
if ischar(character)==0
    charnum=-1;
    return
end
x=fileread(fname);
n=length(x);
count=0;
for i=1:n
    if(x(i)==character)&&ischar(character)
        count=count+1;
    end
end
charnum=count