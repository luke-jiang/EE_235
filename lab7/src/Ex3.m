% FILE: Ex3.m
% NAME: LUKE JIANG
% DESCRIPTION: Amplitude Demodulation

clear all; close all;
load Ex3.mat;
% Fs, t, y
% construct output z
z = y .* cos(500 * t);
% fourier transformation
N = 8192;
z_abs = abs(fftshift(fft(z, N)));
% compute w vector
w_period = 2 * pi * Fs / N;
w = (-N / 2:(N / 2)-1) * w_period;
% plotting
figure;
subplot(2, 1, 1);
plot(t, z);
subplot(2, 1, 2);
plot(w, z_abs);
    xlim([-1500 1500]);
    ylim([0 10000]);
% define the 4th order filter
b = [0 0 0 0 2*10^9];
a = [240 3*10^4 2.2*10^6 10^8 2*10^9];
xr = lsim(b, a, z, t);
xr_abs = abs(fftshift(fft(xr, N)));
figure;
subplot(2, 1, 1);
plot(t, xr);
subplot(2, 1, 2);
plot(w, xr_abs);
    xlim([1000, 1000]);
    ylim([0, 10000]);
    
