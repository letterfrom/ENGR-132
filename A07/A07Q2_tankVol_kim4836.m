function [tank_volume, fluid_volume, drain_time] = A07Q2_tankVol_kim_4836(vec_dim, height, diameter, orientation)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 132 
% Program Description 
% This program calculate the drainage time for any tank with a given size,
% fluid height, orientation, and drain size.
%
% Function Call
% [tank_volume, fluid_volume, drain_time] = A08Q4_tankVol_lee4686(vec_dim, height, diameter, orientation)
%
% Input Arguments
% Vector value of length and diameter of tank: vec_dim(m)
% Scalar value that has the fluid height inside the tank: height(m)
% Scalar that has the drain opening's diameter: diameter(m)
% Scalar value indicating the orientation of the tank: orientation(m)
%
% Output Arguments
% Maximum volume of the tank (scalar): tank_volume(m^3)
% Volume of fluid in the tank (scalar): fluid_volume(m^3)
% Drain time (scalar): drain_time(s)
%
% Assignment Information
%   Assignment:     A07, Problem 2
%   Author:         Dakyung Kim, kim4836@purdue.edu
%   Team ID:        224-09
%   Academic Integrity:
%     [v] I worked with one or more peers but our collaboration
%        maintained academic integrity.
%     Peers I worked with: N/A
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% ____________________
%% INITIALIZATION
g = 9.806; %Earth's gravitational constant(m/s^2)
C_d = 0.8; %Discharge coefficient
L = vec_dim(1); %Tank length (m)
D = vec_dim(2); %Tank diameter(m)
R_t = D/2; %Tank radius(m)


%% ____________________
%% CALCULATIONS & FORMATTED TEXT DISPLAY
%Drain cross-sectional area (m^2)
A_n = (diameter / 2) ^ 2 * pi;

%Maximum tank volume(m^3)
tank_volume = (D / 2) ^ 2 * pi * L;

if(orientation == 0)
    fprintf("The tank is horizontal\n");
%Angle of Sector form(degree)
    angle = 2 * acosd((R_t-height)/(R_t));

%Fluid volume calculation in horizontal cylinder(m^3)
    fluid_volume = (angle / 360) * ((R_t) ^ 2 * pi) - sqrt(R_t^2-(R_t-height)^2) * (R_t - height);

%drain time calculation in horizontal cyliner(s)
    drain_time = (L * sqrt(8) * (D ^ (3/2) - (D - height) ^ (3/2))) / (3 * C_d * A_n * sqrt(g));    
    
elseif(orientation ==90)
    fprintf("The tank is vertical\n");

%Fluid volume calculation in vertical cylinder(m^3)
    fluid_volume = height * (vec_dim(2) / 2) ^ 2 * pi;

%drain time calculation in vertical cylinder(s)
    drain_time = (pi * (D ^ 2)) / (sqrt(9 * g) * C_d * A_n) * sqrt(height);

else
    drain_time = -99;
    fluid_volume = -99;
    fprintf("Orientation value is invalid\n");  

end

fprintf("Maximum volume of the tank: %.3fm^3\n", tank_volume);
fprintf("Fluid volume: %.3fm^3 \nDrainage time: %.3fs\n", fluid_volume, drain_time);


%% ____________________
%% ACADEMIC INTEGRITY STATEMENT
% I have not used source code obtained from any other unauthorized
% source, either modified or unmodified.  Neither have I provided
% access to my code to another. The function I am submitting
% is my own original work.



