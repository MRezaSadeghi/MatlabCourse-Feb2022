clc; clear;

R = (1:26) + 96;
n = length(R);

rng(4)
newR = R(randperm(n));

word = 'guilty';
char(newR(word - 96))