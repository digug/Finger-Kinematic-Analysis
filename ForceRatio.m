clc;close all;clear;
x = 0:0.1:50;
m = 18.792;
y = m.*x;
plot(x,y, 'linewidth', 3)
set(gca,'FontSize',18)
grid on
title('Force Applied on Slider vs Force Experienced by Finger Tip', 'fontsize', 18)
xlabel('Force on Finger Tip (N)', 'fontsize', 18)
ylabel('Force Exerted on Slider (N)', 'fontsize', 18)