% FILE: Ex1.m
% NAME: LUKE JIANG
% DESCRIPTION: Filtering

clear all; close all;
% generate x
Fs = 10;
t = 0:(1 / Fs):(500 - 1 / Fs);
x = cos(0.1 * t);
% compute X(jw)
N = 8192;
x_fft = fftshift(fft(x, N));
xw_abs = abs(x_fft);
% compute vector of frequency sample
w_period = 2 * pi * Fs / N;
w = (-N / 2:(N / 2)-1) * w_period;
% plot x(t) and xw_abs(w)
figure(1);
subplot(2, 2, 1);
plot(t, x);
    xlim([100 400]);
    ylim([-2, 2]);
subplot(2, 2, 2);
plot(w, xw_abs);
    xlim([-0.5 0.5]);
% compute frequency response
H_fft = 3 ./ (3 + j * w);
Hw_abs = abs(H_fft);
figure(2);
plot(w, Hw_abs);
    xlim([-25 25]);
    xlabel('w');
    ylabel('abs(Hw)')
    title('plot of magnitude of Hw versus w');
% compute y(t)
y_fft = x_fft .* H_fft;
y_ifft = ifft(fftshift(y_fft), N);
y = real(y_ifft);
% compute corresponding sample vector t_y
t_y = (0:length(y) - 1) * (1 / Fs);
% go back to windiw #1 and plot
figure(1);
subplot(2, 2, 3);
plot(t_y, y);
    xlim([100 400]);
    ylim([-2 2]);
    xlabel('t_{y}');
    ylabel('y');
    title('plot of t_{y} versus y');
% compute y with lsim
% define filter coefficients
b = [0 3];
a = [1 3];
y = lsim(b, a, x, t);
% plot y in window #1 again
figure(1);
subplot(2, 2, 4);
plot(t_y, y);
    xlim([100 400]);
    ylim([-2 2]);
    xlabel('t_{y}');
    ylabel('y');
    title('plot of t_{y} versus y by lsim');

% Question #1:
%
