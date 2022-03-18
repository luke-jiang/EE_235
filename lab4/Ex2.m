close all; clear all; 
load CommsSignals.mat;
% find correlation of y1
y1 = (1/Fs)*conv(x1, x1);
y1_corr = y1(length(x1))
% find correlation of y0
y0 = (1/Fs)*conv(x1, x0);
y0_corr = y0(length(x0))
% load noise signal and add it to x1
load Noise.mat;
r = x1 + n;
t_r = (0:length(r)-1)*(1/Fs);
% plot r
figure;
subplot(2, 1, 1);
plot(t_r, r);
    xlim([0 2]);
    title('x1 with noise');
    xlabel('Time');
    ylabel('r=x1+n');
% compute convolution of (r,x1) and (r,x0)
yr1 = (1/Fs) * conv(r, x1);
yr0 = (1/Fs) * conv(r, x0);
t_yr = (0:length(yr1)-1)*(1/Fs);
% plot the result of convolution
subplot(2, 1, 2);
hold on;
plot(t_yr, yr1, 'm');
plot(t_yr, yr0, 'r');
    title('yr1 and yr0');
    xlabel('Time');
    ylabel('yr1 and yr0');
    legend('yr1', 'yr0');
% compute two correlations
yr1_corr = yr1(length(x1))
yr0_corr = yr0(length(x0))





