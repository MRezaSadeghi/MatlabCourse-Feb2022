clc; clear; close all;

x = 3
eval('x')
eval('3 + 4')

A = [3, 4; 5, 6];
repmat(A, 2, 3)

M = [3, 4, 5, 6];
i = randi(10)
try
    % disp(i)
    disp(M(i)+100)
catch
    disp("No")
end

A = xlsread("data.xlsx");
A

