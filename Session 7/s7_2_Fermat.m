clc; clear; close all

a = 10;
n = linspace(0, 150, 1000);
theta = n*137.508*pi/180;

r = a*sqrt(theta);

polarplot(theta, r, '.k')
hold on
polarplot(-theta, r, '.k')

for i = 1:3
    polarplot(theta+i*pi/2, r, '.k')
    polarplot(-theta-i*pi/2, r, '.k')
end