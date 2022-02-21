clc; clear;
format rat

n = 5;
A = zeros(n);

tic()
for i = 1:n
    for j = 1:n
        A(i, j) = 1/(i+j-1);
    end
end
toc()
tic()
hilb(5);
toc()