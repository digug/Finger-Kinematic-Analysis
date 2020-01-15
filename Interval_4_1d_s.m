clc;close all;clear;
%% System set up
%All values are in *cm*

global range;
global R1; global R2; global R3; global R4; global R5; global R6; global R7; global R8; global R9; global R10; global R11; global R12; 
global c1; global c2; global c3; global c4; global c5; global c6; global c7; global c8; 

%Link lengths 
R1 = 3.760300764;
R2 = 1.559835367;
R3 = 5.18820883;
R4 = 1.565425507;
R5 = 4.324904893;
R6 = 4.491118386;
R7 = 0.8230549295;
R8 = 0.7160969196;
R9 = 2.462083945;
R10 = 1.067716719;
R11 = 2.812958391;
R12 = 3.258119865;

%Constant angles
c1 = 128.21;
c2 = 100.16;
c3 = 257;
c4 = 61.31;
c5 = 126.65;
c6 = 112.83;
c7 = 47.3;
c8 = 180.07;

global theta1; global theta2; global theta3; global theta4; global theta5; global theta6; global theta7; global theta8; global theta9; global theta10; global theta11; global theta12; 
global X; global Y;

a = 4.71; b = 3.76;
c = -0.01;

theta1 = 0;

theta2 = zeros(size(a:c:b));
theta3 = zeros(size(a:c:b));
theta4 = zeros(size(a:c:b));
theta5 = zeros(size(a:c:b));
theta6 = zeros(size(a:c:b));
theta7 = zeros(size(a:c:b));
theta8 = zeros(size(a:c:b));
theta9 = zeros(size(a:c:b));
theta10 = zeros(size(a:c:b));
theta11 = zeros(size(a:c:b));
theta12 = zeros(size(a:c:b));

X = zeros(size(a:c:b));
Y = zeros(size(a:c:b));

theta2_g = 261.07;
theta3_g = 17.28;
theta5_g = 192.56;
theta7_g = 165.03;
theta9_g = 299.08;
theta10_g = 235.28;
% X_g = -0.5051;
% Y_g = -1.6667;

X_g = -1.1;
Y_g = -3.1;

global count;
count = 1;

%% Interval 2-3

options = optimset('Display','off'); % turn off fsolve message
for range = a:c:b %for range 4
         x = fsolve(@loop1_int1_2d, [theta2_g, theta3_g], options);
         theta2(1,count) = x(1); theta2_g = x(1);
         theta3(1,count) = x(2); theta3_g = x(2);
         
         theta4(1,count) = theta2(1,count) - c1; 
         theta6(1,count) = c8;

         x = fsolve(@loop2_int1_2d, [theta5_g, theta7_g], options);
         theta5(1,count) = x(1); theta5_g = x(1);
         theta7(1,count) = x(2); theta7_g = x(2);
         
         theta8(1,count) = theta6(1,count) - c4;
         theta11(1,count) = theta7(1,count) + c5;

         x = fsolve(@loop3_int1_2d, [theta9_g, theta10_g], options);
         theta9(1,count) = x(1); theta9_g = x(1);
         theta10(1,count) = x(2); theta10_g = x(2);
         
         theta12(1,count) = theta10(1,count) + c6;
         
         x = fsolve(@loop4_int1_2d, [X_g, X_g], options);
         X(1,count) = x(1); X_g = x(1);
         Y(1,count) = x(2); Y_g = x(2);
         
         count = count + 1;
end

subplot(3,1,1)
plot(X,Y)

in_v = 2.219460227;
T = (a-b)/in_v;
t = T/size(a:c:b,2);

u = diff(X)./t;
v = diff(Y)./t;
ax = diff(u)./t;
ay = diff(v)./t;
abs_v = sqrt(u.^2+v.^2);
abs_a = sqrt(ax.^2+ay.^2);

To = cell2mat(struct2cell(load('T3')));
Tf = T+To;

t_int_v = linspace(To,Tf,size(a:c:b,2)-1);
t_int_a = linspace(To,Tf,size(a:c:b,2)-2);

subplot(3,1,2)
plot(t_int_v,u)
hold on
plot(t_int_v,v)
hold off

subplot(3,1,3)
plot(t_int_a,ax)
hold on
plot(t_int_a,ay)
hold off

save('x4_1','X')
save('y4_1','Y')
save('v4_1','abs_v')
save('a4_1','abs_a')
save('t_int_v4_1','t_int_v')
save('t_int_a4_1','t_int_a')