clc; clear; close all;

methods = ["linear", "nearest", "next", "previous", "pchip", "PCHIP", "v5cubic", "makima", "spline"];

n = 15;
xMax = 15;
x = linspace(0, xMax, n);
xq = linspace(0, xMax, 15*n);

y = rand(1, n)+0.2*sin(5*x)-0.2;

nsub = length(methods)+1;
subplot(ceil(nsub/2), 2, 1)
plot(x, y)

for i = 1:nsub-1
    subplot(ceil(nsub/2), 2, i+1)
    c = interp1(x,y,xq,methods(i));
    plot(x, y)
    hold on
    plot(xq, c)
    disp(methods(i))
end