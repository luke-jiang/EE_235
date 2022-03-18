clear all; close all;
load CommsSignals.mat;
load L4Ex3signal.mat;
t_r = (0:length(r)-1)*(1/Fs);
% plot r
figure;
plot(t_r, r);
rm_rows = size(rm, 1);
message_bits = zeros(1, rm_rows);

for i = 1:rm_rows
    signal = rm(i, :);
    % i = t0*Fs + 1
    width = (length(signal) - 1)/Fs;
    symbol = decode(signal, width, Fs, x0, x1);
    message_bits(i) = symbol;
end
message_bits
%Question 3: EE