clc; clear;

n = 652;
c = 0;

while n > 1
    c = c + 1;
    if rem(n, 2)==0
        n = n/2;
    else
        n = (3*n+1);
    end
end
disp(c)