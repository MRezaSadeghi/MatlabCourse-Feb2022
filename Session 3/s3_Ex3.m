clc; clear;
format compact

word = 'hagh';

rng(0)

R = 1:26;
R = R(randperm(length(R)));

char(R(new)+ word-96)