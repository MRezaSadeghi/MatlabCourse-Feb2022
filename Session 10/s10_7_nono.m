clc; clear; close all;

% rng(7);

n = 6;
M = randi([0, 1], [1, n])

D = diff(M);
ind = 1:n;
zero_end = ind(D == 1);
one_end = ind(D == -1);

arr = zeros(1, ceil(n/2));

if (M(1) == 1) && (M(end) == 1)
    arr(1) = one_end(1);
    for i = 2:length(zero_end)
        arr(i) = one_end(i) - zero_end(i-1);
    end
    arr(length(zero_end) + 1) = n - zero_end(end);
    
elseif (M(1) == 0) && (M(end) == 1)
    for i = 1:length(one_end)
        arr(i) = one_end(i) - zero_end(i);
    end
    arr(length(zero_end) + 1) = n - zero_end(end);
    
elseif (M(1) == 1) && (M(end) == 0)
    arr(1) = one_end(1);
    for i = 2:length(zero_end)+1
        arr(i) = one_end(i) - zero_end(i-1);
    end
    
elseif (M(1) == 0) && (M(end) == 0)
    for i = 1:length(zero_end)
        arr(i) = one_end(i) - zero_end(i);
    end
    arr;
end

arr(arr == 0) = [];
arr
    


