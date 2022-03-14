clc; clear; close all;

xMax = 30;
yMax = 40;
N = 180;
mounts = 6;


x = linspace(0, xMax, N);
y = linspace(0, yMax, N);
[X, Y] = meshgrid(x, y);

xm = x(randperm(N, mounts));
ym = y(randperm(N, mounts));


Z1 = 0;
for i = 1:mounts
%     disp(x(i))
    Ztemp = cos((xm(i) - X)/xMax) + cos((ym(i) - Y)/yMax);
    if i > 1
        Z1 = max(Z1, Ztemp);
    else
        Z1 = Ztemp;
    end
        
    
%     pause(2)
end
surf(X, Y, Z1)
fig = gcf;
fig.Color = '#FFFFFF';
shading interp
grid off
axis off

% plot(x, Z1)

% Z = 0;
% for i = 1:mounts
%     Z = Z + cos((xm(i) - X + Y)/xMax);
% end
% 
% surf(X, Y, Z)