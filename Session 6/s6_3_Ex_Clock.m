clc; clear;

time_array = [1440*60*365, 1440*60*30, 1440*36, 3600, 60, 1];


word = ["year", "month", "day", "hour", "minute", "second"];
n = length(word);
start = zeros(1, n);

for i = 1:n
    req = sprintf("Eneter %s: ", word(i));
    start(i) = input(req);
end

rng(sum(start))
end1 = [2022+randi(50), randi(12), randi(30), randi(24), randi(60), randi(60)];
progress = dot(start - clock, time_array)/dot(start - end1, time_array);
fprintf("Pregress: %2.2f %%\n", progress*100)
