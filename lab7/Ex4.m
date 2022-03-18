% FILE: Ex4.m
% NAME: LUKE JIANG
% DESCRIPTION: decoding a morse code message

clear all; close all;
load Ex4.mat;
% y, t, Fs
figure;
b = [0 0 0 0 2*10^9];
a = [240 3*10^4 2.2*10^6 10^8 2*10^9];
for i = 1:3
    c = cos(i * 1000 * t);
    z = y .* c;
    xr = lsim(b, a, z, t);
    subplot(3, 1, i);
    plot(t, xr);
        xlabel('t');
        ylabel(['xr of i =', num2str(i)]);
        title(['Message m', numrstr(i), '(t)']);  
end
