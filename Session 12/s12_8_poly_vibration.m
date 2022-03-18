clc; clear; close all

syms w
m0 = 10; m = [1, 2, 1, 5, 2];
n = length(m);

k = [100, 150, 100, 500, 250];
k0 = 1000;

M = eye(n + 1).*[1, m];
M(1) = m0;

K = eye(n+1).*[1, k];
K(1, :) = -[1, k];
K(:, 1) = -[1, k];
K(1) = sum(k) + k0;

D = det(K - w.*M);
D = sym2poly(D);
w = sqrt(roots(D));

w0 = linspace(0, max(w)*1.2, 1500);
y = FRF(w, w0);
semilogy(w0, y)

function P = FRF(omegaz, w0)
    P = 1;
    n = length(omegaz);
    for i = 1:n
        m = omegaz(i)^2;
        P = P.*1./(w0.^2 - m);
    end
    P = abs(P);
end