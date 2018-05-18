% FILE: Ex4.m
% NAME: LUKE JIANG
% DESCRIPTION: Matlab Plotting Basics

% Clear all variables ans close all windows
clear all;
close all;

% PART A
load chirp.mat
chirpSound = y;
chirpFs = Fs;
load gong.mat
gongSound = y;
gongFs = Fs;
% PART B
t_chirp = (0:length(chirpSound-1)-1)*(1/chirpFs);
t_gong = (0:length(gongSound-1)-1)*(1/gongFs);
% PART C
figure;
subplot(2,1,1);
plot(t_chirp, chirpSound);
    xlabel('t_{chirp}');
    ylabel('chirpSound');
subplot(2,1,2);
plot(t_gong, gongSound);
    xlabel('t_{gong}');
    ylabel('gongSound');
% PART D
sound(chirpSound, chirpFs);
pause(4);
sound(gongSound, gongFs);
