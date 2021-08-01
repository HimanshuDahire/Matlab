%finding next prime humber after the given number
function [k]=next_prime(n)
a=n;
while a>=n
    a=a+1;
    k=isprime(a);
    if k==true
        break
    end   
end
k=a;
end
