clc; clear;

% Tridiagonal Matrix
n = 6;
m = 2;

% rng(0);
a = randi(9, [1, n]);

%% Diagnoal Matrix
A = eye(n).*a;

%% Tridiagonal Matrix
B = zeros(n);
for i = 1:n
    t = a(i);
    for j = 0:m-1
        B(i, i+j) = t;
        B(i+j, i) = t;
    end
end

B = B(1:n, 1:n)

