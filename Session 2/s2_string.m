clc; clear; close all;

str1 = "a";
chr1 = 'a';

str2 = "b";
chr2 = 'b';

str1 + str2
chr1 + chr2
double(chr1)

disp("-----")
join([str1, str2])
strcat([str1, str2])
strcat(str1, str2)
[str1, str2]

disp("-----")
join([chr1, chr2])
strcat([chr1, chr2])
strcat(chr1, chr2)
[chr1, chr2]

disp("-----")
join([chr1, str2])
strcat([chr1, str2])
strcat(chr1, str2)
[chr1, str2]

disp("-----")
chr3 = 'Euler';
str3 = "Euler";

chr3(1)
str3(1)

chr3(2)
% str3(2)

str4 = strjoin([str1, str3, str2, chr3(2)], '~')

str5 = strjoin([str1, str3, newline, chr3(2)], '~')

'g' + newline + 'h'
"g" + newline + "h"
