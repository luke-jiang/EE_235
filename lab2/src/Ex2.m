% FILE: Ex2.m
% NAME: LUKE JIANG
% DESCRIPTION: TIME SHIFT OPERATIONS

% Clear all variables ans close all windows
clear all;
close all;

load train.mat;
t_y = (0:length(y)-1)*(1/Fs);
figure;
% plot the original signal
subplot(3, 1, 1);
plot(t_y, y);
    xlim([-1 5]);
    ylim([-2 2]);
    xlabel('time');
    ylabel('y(t)');
    title('graph of time and y(t)');
[y1, t_y1] = timeshift(y, Fs, 3);
subplot(3, 1, 2);
% plot the signal shifted by 3
plot(t_y1, y1);
    xlim([-1 5]);
    ylim([-2 2]);
    xlabel('t');
    ylabel('y(t-3)');
    title('graph of time and y(t-3)');
[y2, t_y2] = timeshift(y, Fs, -0.5);
subplot(3, 1, 3);
plot the signal shifted by -0.5
plot(t_y2, y2);
    xlim([-1 5]);
    ylim([-2 2]);
    xlabel('time');
    ylabel('y(t+0.5)');
    title('graph of time and y(t+0.5)');
% play three sound signals
sound(y, Fs);
sound(y1, Fs);
sound(y2, Fs);
  

