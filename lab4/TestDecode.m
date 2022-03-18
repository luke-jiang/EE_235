clear all; close all;
load CommsSignals.mat;
s1 = decode(x1, 1, Fs, x0, x1)
s0 = decode(x0, 1, Fs, x0, x1)

% Question 2/3:
% The correlation would increase if we change the shape of x0 into a
% triangle. Correlation is defined as the value of convolution when there
% is maximum overlap. In this case, the time of maximum overlap doesn't
% change, but the value of convolution would increase, due to the
% fact that tri(t) >= x0(t) when 0<=t<=1.