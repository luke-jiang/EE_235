% FILE: Ex2.m
% NAME: LUKE JIANG
% DESCRIPTION: Filtering

clear all; close all;
load MorseCode.mat;
% contains Fs, dash, dot
t_morse = (0:length(dash) - 1) * (1 / Fs);
% plot dash and dot
figure;
subplot(2, 1, 1);
plot(t_morse, dash);
    ylim([-40 40]);
    title('dash');
subplot(2, 1, 2);
plot(t_morse, dot);
    ylim([-40 40]);
    title('dot');
% construct letter X
x = [dash dot dot dash];
% find t_x
t_x = (0:length(x) - 1) * (1 / Fs);
% fourier transformation
N = 8192;
x_fft = fftshift(fft(x, N));
x_abs = abs(x_fft);
% compute corresponding w
w_period = 2 * pi * Fs / N;
w = (-N / 2:(N / 2)-1) * w_period;
% plot x_abs
figure;
subplot(2, 1, 1);
plot(t_x, x);
subplot(2, 1, 2);
plot(w, x_abs);
    xlim([-1000 1000]);
% implement amplitude modulation
y = x .* cos(500 * t_x);
y_abs = abs(fftshift(fft(y, N)));
figure;
subplot(2, 1, 1);
plot(t_x, y);
subplot(2, 1, 2);
plot(w, y_abs);
    xlim([-1000 1000]);
    ylim([0 10000]);
