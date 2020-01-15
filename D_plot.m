clc;close all;clear;
x1_2 = cell2mat(struct2cell(load('x1_2')));
x2_3 = cell2mat(struct2cell(load('x2_3')));
x3_4 = cell2mat(struct2cell(load('x3_4')));
x4_1 = cell2mat(struct2cell(load('x4_1')));
y1_2 = cell2mat(struct2cell(load('y1_2')));
y2_3 = cell2mat(struct2cell(load('y2_3')));
y3_4 = cell2mat(struct2cell(load('y3_4')));
y4_1 = cell2mat(struct2cell(load('y4_1')));

v1_2 = cell2mat(struct2cell(load('v1_2')))./100;
v2_3 = cell2mat(struct2cell(load('v2_3')))./100;
v3_4 = cell2mat(struct2cell(load('v3_4')))./100;
v4_1 = cell2mat(struct2cell(load('v4_1')))./100;

a1_2 = cell2mat(struct2cell(load('a1_2')))./100;
a2_3 = cell2mat(struct2cell(load('a2_3')))./100;
a3_4 = cell2mat(struct2cell(load('a3_4')))./100;
a4_1 = cell2mat(struct2cell(load('a4_1')))./100;

t_int_v1_2 = cell2mat(struct2cell(load('t_int_v1_2')));
t_int_v2_3 = cell2mat(struct2cell(load('t_int_v2_3')));
t_int_v3_4 = cell2mat(struct2cell(load('t_int_v3_4')));
t_int_v4_1 = cell2mat(struct2cell(load('t_int_v4_1')));

t_int_a1_2 = cell2mat(struct2cell(load('t_int_a1_2')));
t_int_a2_3 = cell2mat(struct2cell(load('t_int_a2_3')));
t_int_a3_4 = cell2mat(struct2cell(load('t_int_a3_4')));
t_int_a4_1 = cell2mat(struct2cell(load('t_int_a4_1')));

plot(x1_2,y1_2, 'linewidth', 3)
xlim([-10 4])
ylim([-10 2])
grid on 
hold on
plot(x2_3,y2_3, 'linewidth', 3)
plot(x3_4,y3_4, 'linewidth', 3)
plot(x4_1,y4_1, 'linewidth', 3)
hold off
set(gca,'FontSize',18)
title('Posture Analysis for The Finger Tip', 'fontsize', 20)
xlabel('X-Position (cm)', 'fontsize', 18)
ylabel('Y-Position (cm)', 'fontsize', 18)
legend({'Interval 1', 'Interval 2', 'Interval 3', 'Interval 4'}, 'fontsize', 20, 'location', 'northeast')

figure
plot(t_int_v1_2,v1_2, 'linewidth', 3)
ylim([0 1.2])
grid on 
hold on
plot(t_int_v2_3,v2_3, 'linewidth', 3)
plot(t_int_v3_4,v3_4, 'linewidth', 3)
plot(t_int_v4_1,v4_1, 'linewidth', 3)
hold off
title('Absolute Velocity of Finger Tip vs Time', 'fontsize', 20)
xlabel('Time (s)', 'fontsize', 18)
ylabel('Absolute Velocity (m/s)', 'fontsize', 18)
legend({'Interval 1', 'Interval 2', 'Interval 3', 'Interval 4'}, 'fontsize', 20, 'location', 'northwest')

figure
plot(t_int_a1_2,a1_2, 'linewidth', 3)
ylim([0 35])
grid on 
hold on
plot(t_int_a2_3,a2_3, 'linewidth', 3)
plot(t_int_a3_4,a3_4, 'linewidth', 3)
plot(t_int_a4_1,a4_1, 'linewidth', 3)
hold off
title('Absolute Acceleration of Finger Tip vs Time', 'fontsize', 20)
xlabel('Time (s)', 'fontsize', 18)
ylabel('Absolute Acceleration (m/s^2)', 'fontsize', 18)
legend({'Interval 1', 'Interval 2', 'Interval 3', 'Interval 4'}, 'fontsize', 20, 'location', 'northwest')