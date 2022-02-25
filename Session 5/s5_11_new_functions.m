clc; clear;

rng();
A = randi(5, [1, 6]);

% Max and Min
% [val, ind] = max(A);
[val, ind] = min(A);


B = zeros(2, 2, 4, 2);

A
cumsum(A)
movsum(A, 4)
movsum(A, [2, 3])
diff(A)
