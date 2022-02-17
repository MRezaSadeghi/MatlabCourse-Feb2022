clc; clear;
format compact
word = 'amicroz';
% word = 'ssme';
n = 2;




x = char(rem(word - 97 + n, 26) + 97)

char(rem(x - 97 - n+26, 26) + 97)

% x = double(word)
% x = x - 97
% x = x + n
% x = rem(x, 26)
% x = x + 97
% x = char(x)
% 
% y = double(x)
% y = y - 97
% y = y - n
% y = rem(y+26, 26)
% y = y + 97
% char(y)

% rem(word + n - 96, 26) + 96
% 
% cr = char(rem(word + n - 96, 26) + 96)
% 
% (-cr + n)
% 
% x = rem((-cr + n) + 96, 26)+96
% 
% word1 = char(x)