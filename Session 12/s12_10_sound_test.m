clc; close all

[y,fs] = audioread('Tahrang.mp3');
% sound(y, fs*0.98)
n_slice = 0.25*fs;

s = y(1:n_slice, 1);
n = length(s);
t = linspace(0, n/fs, n);

FFT = fft(s);
A = abs(FFT)/(n*2);
A = A(1:floor(n/2));
f =  linspace(0, fs/2, floor(n/2));
loglog(f, A)
xlim([50, 2000])
grid on

% plot(t, s)
% clear sound;