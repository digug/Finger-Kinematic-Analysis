function F = loop4_int1_2d(x)
global R6; global R8; global R9; global R10; global R12; 
global theta6; global theta8; global theta9; global theta10; global theta12; 
global count;

F(1) = R6*cosd(theta6(1,count)) + R8*cosd(theta8(1,count)) + R9*cosd(theta9(1,count)) + R10*cosd(theta10(1,count)) + R12*cosd(theta12(1,count)) - x(1);
F(2) = R6*sind(theta6(1,count)) + R8*sind(theta8(1,count)) + R9*sind(theta9(1,count)) + R10*sind(theta10(1,count)) + R12*sind(theta12(1,count)) - x(2);

% Outputs: x(1) - X, x(2) - Y