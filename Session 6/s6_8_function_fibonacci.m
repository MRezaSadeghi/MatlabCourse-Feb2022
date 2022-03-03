clc; clear;

n = 60;
fibox(n)
fibo(n)

function y = fibo(x)
    if (x == 1) || (x == 2)
        y = 1;
    else
        y = fibo(x-1) + fibo(x-2);
    end
end

function y = fibox(x)
    y = ((0.5+sqrt(5)/2)^x - ((0.5-sqrt(5)/2)^x))/sqrt(5);
    y = round(y);
end