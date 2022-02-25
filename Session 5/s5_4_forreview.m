clc; clear;

rng(0);
n = 5;

a = randi(9, [1, n]);
b = randi(9, [1, n]);
s0 = sum(a);

s = 0;
for i = a
    s = s + i;
end
s
s = 0;
for i = 1:length(a)
    s = s + a(i);
end
s