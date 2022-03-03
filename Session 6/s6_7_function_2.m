clc; clear;

fact(5)

function y = fact(x)
    if (x == 0) || (x == 1)
        y = 1;
    else
        y = fact(x-1)*x;
    end
end