clc; clear;
format rat
x = pi/2;

n = 6;
s = 0;

for i = 1:n
    coeff = 1/factorial(2*i-1);
    s = s + coeff*x^(2*i-1)*(-1)^(i+1);
    err = abs(s-sin(x))/s*100;
    fprintf("True value = %2.2f, step = %d, pred value = %2.4f, error = %2.5f\n", [sin(x), i, s, err])
end