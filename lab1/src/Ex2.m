% FILE: Ex2.m
% NAME: [Luke Jiang]
% DESCRIPTION: More MatLab Variables and Operations

% Clear all variables and close all windows
clear all;
close all;

% PART A
Fs = 2;
t = 0:1/Fs:3;
x = 0.5*t;
y = t.^2;
% PART B
z = x - 2*y;
% PART C
t_index = 2*Fs + 1;
w1 = z(t_index)
% PART D
t_start = 0*Fs + 1;
t_end = 1.5*Fs + 1;
w2 = z(t_start:t_end)