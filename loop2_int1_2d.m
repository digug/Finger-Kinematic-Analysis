function F = loop2_int1_2d(x)
 global theta4; global theta6; 
 global R4; global R5; global R6; global R7; 
 global count;

F(1) = R6*cosd(theta6(1,count)) + R7*cosd(x(2)) - R4*cosd(theta4(1,count)) - R5*cosd(x(1)); %x direction
F(2) = R6*sind(theta6(1,count)) + R7*sind(x(2)) - R4*sind(theta4(1,count)) - R5*sind(x(1)); %y direction

% Outputs: x(1) - theta5, x(2) - theta7