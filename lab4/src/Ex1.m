close all; clear all;
% create x1 and x0
Fs = 8000;
x1 = ones(1, Fs);
x0 = -x1;
% convolve x1 with itself and with x0
y1 = (1/Fs) * conv(x1, x1);
y0 = (1/Fs) * conv(x1, x0);
t_y = (0:length(y1)-1) * (1/Fs);
% plot the result of consolution
figure;
subplot(2, 1, 1);
plot(t_y, y1);
    title('y1 = x1*x1');
    xlabel('Time');
    ylabel('y1');
subplot(2, 1, 2);
plot(t_y, y0);
    title('y0 = x1*x0');
    xlabel('Time');
    ylabel('y0');


% Question 1/3:
% According to the commutative nature of convolution, x1*x2 = x2*x1
% Therefore, a swapped input should produce the same convolution output.