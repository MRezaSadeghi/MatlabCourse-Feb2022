clc; clear; close all;

n = 1500;
nbin = 15;
x = randn(1, n)*10 + 1;

histogram(x, nbin)

hold on

t = linspace(0, 100, 50);
tt = 100*(4+sin(0.1*t(1:end-1)));
h = histogram('BinEdges',t,'BinCounts',tt)
h.FaceAlpha = 0.3;
h.FaceColor = 'r';
h.EdgeColor = 'y';
h.LineWidth = 0.01