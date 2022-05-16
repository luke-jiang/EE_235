% FILE: Ex1.m
% NAME: LUKE JIANG
% DESCRIPTION: TIME SCALE OPERATIONS

% Clear all variables ans close all windows
clear all;
close all;

load train.mat;
t_y = (0:length(y)-1)*(1/Fs);
figure;
% plot the original signal
subplot(3, 1, 1);
plot(t_y, y);
    xlim([0 4]);
    ylim([-2 2]);
    xlabel('time');
    ylabel('y(t)');
    title('graph of time and y(t)');
[y1, t_y1] = timescale(y, Fs, 2);
% plot the 2-scaled signal
subplot(3, 1, 2);
plot(t_y1, y1);
    xlim([0 4]);
    ylim([-2 2]);
    xlabel('time');
    ylabel('y(2t)');
    title('graph of time and y(2t)');
[y2, t_y2] = timescale(y, Fs, 0.5);
% plot the 0.5-scaled signal
subplot(3, 1, 3);
plot(t_y2, y2);
    xlim([0 4]);
    ylim([-2 2]);
    xlabel('time');
    ylabel('y(0.5t)');
    title('graph of time and y(0.5t)');
% play three signals
sound(y, Fs);
sound(y1, Fs);
sound(y2, Fs);

% speed: y1>y>y2


