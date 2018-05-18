% FILE: Ex3.m
% NAME: LUKE JIANG
% DESCRIPTION: Matlab Plotting Basics

% Clear all variables ans close all windows
clear all;
close all;

% PART A
Fs = 5;
t = -2:(1/Fs):4;
x = 2 - t;
figure;
subplot(1,2,1);
plot(t, x);
    xlim([-5 5]);
    ylim([-5 5]);
    grid on;
    xlabel('t');
    ylabel('2-t');
% PART B
y = -0.5*t.^2;
subplot(1,2,2);
plot(t, y);
    xlim([-5 5]);
    ylim([-5 5]);
    grid on;
    xlabel('t');
    ylabel('-0.5t^2');
% PART C
figure;
Fs1 = 10;
Fs2 = 1;
Fs3 = 0.5;
t = 0:(1/Fs1):5;
x = cos(2*pi.*t);
subplot(3,1,1);
plot(t, x);
    grid on;
    xlabel('t');
    ylabel('2*pi*t');
t = 0:(1/Fs2):5;
x = cos(2*pi.*t);
subplot(3,1,2);
plot(t, x);
    grid on;
    xlabel('t');
    ylabel('2*pi*t');
t = 0:(1/Fs3):5;
x = cos(2*pi.*t);
subplot(3,1,3);
plot(t, x);
    grid on;
    xlabel('t');
    ylabel('2*pi*t');
    
