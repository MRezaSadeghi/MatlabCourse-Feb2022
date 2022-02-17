clc; clear;

% create a magic matrix
M = magic(3);
M1 = [2, 3, 4; 5 7 0];

% disp(M)
% disp(M1)

% get size
[r, c] = size(M1);
fprintf("r=%d\t c=%d\n", [r, c])
fprintf("r=%d\t c=%d\n", size(M1))

[a, ~] = size(M1);
fprintf("a=%d\n", a)

fprintf("rows=%d\n", size(M1, 1))
fprintf("cols=%d\n", size(M1, 2))

% some new matrices:
mi = eye(4);
m1 = ones(5);
m11 = ones(4, 6);
m0 = zeros(4);
m00 = zeros(1, 5);

% sorting
v = [4, 5, 3, 8, 0, 6, -10];
m = [v; v+4; v-6];

sort(m);
sort(m, 'descend');
sort(m, 2);
sort(m, 2,'ComparisonMethod','abs');

%index and sort
u = [1 6 3 5 6 8 9];
[sorted, index] = sort(v)
u(index)

%indexing
A = [4, 5, 6, 2, 4, 6, 9];
A(A>=4)

