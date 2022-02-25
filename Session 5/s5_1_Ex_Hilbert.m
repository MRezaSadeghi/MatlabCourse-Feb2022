clc; clear;
format rat

% Hilbert Matrix
n = 8000;

%% Method 0
tic()
H = hilb(n);
fprintf("Method 0.0 -> Elapsed time: %2.2f ms\n", toc()*1000)

%% Method 1
tic()
for i = 1:n
    for j = 1:n
        H(i, j) = 1/(i + j -1);
    end
end
fprintf("Method 1.0 -> Elapsed time: %2.2f ms\n", toc()*1000)

%% Method 2
tic()
for i = 1:n
    H(i, :) = 1./(i:n+i-1);
end
fprintf("Method 2.0 -> Elapsed time: %2.2f ms\n", toc()*1000)

%% Method 2.1
tic()
a = 0:n-1; 
for i = 1:n
    H(i, :) = 1./(a+i);
end
fprintf("Method 2.1 -> Elapsed time: %2.2f ms\n", toc()*1000)

%% Method 3
tic()
A = 1:n;
H(1, :) = 1./A;
for i = 2:n
    H(i, :) = 1./(1./H(i-1, :) + 1);
end
fprintf("Method 3.0 -> Elapsed time: %2.2f ms\n", toc()*1000)

