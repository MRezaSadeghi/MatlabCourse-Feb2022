clc; clear;

A = [3, 4, 5, 2, 4, 5];
B = [5, 1, 3, 2, 7, 0];
M = [A;B];
M
any(M>2)
all(M>2)
any(rem(M, 2) == 0)