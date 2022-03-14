clc; clear; close all

n1 = 6000; n2 = 1000;

x = linspace(-1, 1, n1);
y = linspace(-1, 1, n2);

[X, Y] = meshgrid(x, y);

Z = sqrt(1 - X.^2 - Y.^2);
Z(imag(Z) > 0) = NaN;

% fplot(@(x) x.^2)

% color
% CO(:,:,1) = normalize(X, 'range').^2; % red
% CO(:,:,2) = normalize(X.*X, 'range');%ones(n2, n1)/2; % green
% CO(:,:,3) = normalize(Z*1, 'range'); % blue

% surf(X, Y, Z)
% hold on
% surf(X, Y, -Z)


a = 2;
b = 1;
funx = @(theta,phi) a*cos(theta).*cos(phi);
funy = @(theta,phi) b*cos(theta).*sin(phi);
funz = @(theta,phi) b*sin(theta);
fsurf(funx,funy,funz,[-pi/2 pi/2 -pi pi])


function nor = normali(X)
    nor = (X - min(X(:)))/(max(X(:)) - min(X(:)));
end


%contourf(X, Y, Z)
