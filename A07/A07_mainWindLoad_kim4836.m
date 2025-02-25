function A07_mainWindLoad_kim4836
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 132 
% Program Description 
% This function initializes value, get wind pressure for both cases for
% each wall type, and plot height vs wind pressure for windward hall.
%
% Function Call
% A07_mainWindLoad_kim4836
%
% Assignment Information
%   Assignment:     A07, Problem 4
%   Author:         Dakyung Kim, kim4836@purdue.edu
%   Team ID:        224-09
%   Peers I worked with: N/A
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% ____________________
%% INITIALIZATION
height = 12:12:96; %vector of height for each level(ft)
building_height = 96; %height of the building(ft)
wind_speed = 115; %speed of wind(mph)
Gust = 0.85; %gust factor
K_d = 0.85; %wind directionality factor
K_zt = 1.0; %topographic factor
GC_pi = [0.18, -0.18]; %internal pressure coefficient
windward_C_p = 0.8; %external pressure coefficient for windward wall
Leeward_C_p = -0.3; %external pressure coefficient for Leeward wall
Side_C_p = -0.7; %external pressure coefficient for side walls

%% ____________________
%% CALCULATIONS
%velocity pressure for building height, 96ft(pounds per square foot)
velocity_pressure = A07_velocityPress_kim4836(building_height, K_zt, K_d, wind_speed);

%velocity pressure of height for each level(pounds per square foot)
velocity_pressure_windward = A07_velocityPress_kim4836(height, K_zt, K_d, wind_speed);

%Windward wall wind pressure with positive and negative internal pressure(pounds
%per square foot)
[windward_p, windward_n] = A07_windPress_kim4836(velocity_pressure_windward, velocity_pressure, Gust, windward_C_p, GC_pi);

%Leeward wall wind pressure with positive and negative internal pressure(pounds
%per square foot)
[Leeward_p, Leeward_n] = A07_windPress_kim4836(velocity_pressure, velocity_pressure, Gust, Leeward_C_p, GC_pi);

%Side walls wind pressure with positive and negative internal pressure(pounds
%per square foot)
[Side_p, Side_n] = A07_windPress_kim4836(velocity_pressure, velocity_pressure, Gust, Side_C_p, GC_pi);


%% ____________________
%% FORMATTED TEXT & FIGURE DISPLAYS

plot(windward_p, height, 'ms');
hold on
plot(windward_n, height, 'bd');
title("Height according to the different wind pressure");
xlabel('Wind pressure (psf)');
ylabel('Height (ft)');
grid on
legend("Positive pressure", 'Negative pressure','location','northwest');

fprintf("Wind pressure for positive internal pressure of Leeward wall is %.3f psf\n", Leeward_p);
fprintf("Wind pressure for negative internal pressure of Leeward wall is %.3f psf\n", Leeward_n);
fprintf("Wind pressure for positive internal pressure of Side walls is %.3f psf\n", Side_p);
fprintf("Wind pressure for negative internal pressure of Side walls is %.3f psf\n", Side_n);


%% ____________________
%% ACADEMIC INTEGRITY STATEMENT
% I have not used source code obtained from any other unauthorized
% source, either modified or unmodified.  Neither have I provided
% access to my code to another. The function I am submitting
% is my own original work.



