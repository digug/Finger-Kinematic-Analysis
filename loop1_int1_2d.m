function F = loop1_int1_2d(x)
global range; global R2; global R3; global theta1;
F(1) = R2*cosd( x(1) ) + R3*cosd(x(2)) - range*cosd(theta1); %x direction
F(2) = R2*sind(x(1)) + R3*sind(x(2)) - range*sind(theta1);   %y direction

% Outputs: x(1) - theta2, x(2) - theta3