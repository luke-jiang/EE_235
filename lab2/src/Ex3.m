% FILE: Ex3.m
% NAME: LUKE JIANG
% DESCRIPTION: RECOVERING AUDIO FILE

% Clear all variables ans close all windows
clear all;
close all;

load s5.mat;
figure;
subplot(2, 1, 1);
t_y = (0:length(y)-1)*(1/Fs);
% plot the distorted signal
plot(t_y, y);
    xlabel('t');
    ylabel('y(t)');
    title('distorted audio signal');
% play the distorted file
sound(y, Fs);
% guess: y(t)=x(2t-0.5)
% operate timescale and timeshift
[y1, t1] = timescale(y, Fs, 0.5);
[y2, t2] = timeshift(y1, Fs, -0.5);
subplot(2, 1, 2);
% plot the recovered signal
plot(t2, y2);
    xlabel('t');
    ylabel('y(0.5*t+0.25))');
    title('recovered signal');
% play the recovered signal
sound(y2, Fs);
% with great power comes great responsibility
