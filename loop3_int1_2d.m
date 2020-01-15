function F = loop3_int1_2d(x)
global R7; global R8; global R9; global R10; global R11; 
global theta7; global theta8; global theta11;
global count;

F(1) = R8*cosd(theta8(1,count)) + R9*cosd(x(1)) + R10*cosd(x(2)) - R7*cosd(theta7(1,count)) - R11*cosd(theta11(1,count)); %x direction
F(2) = R8*sind(theta8(1,count)) + R9*sind(x(1)) + R10*sind(x(2)) - R7*sind(theta7(1,count)) - R11*sind(theta11(1,count)); %y direction

% Outputs: x(1) - theta9, x(2) - theta10