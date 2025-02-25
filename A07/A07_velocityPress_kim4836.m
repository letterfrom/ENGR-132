function [pressure] = A07_velocityPress_kim4836(height, K_zt, K_d, wind_speed)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 132 
% Program Description 
% This function calculate the velocity pressure
%
% Function Call
% [pressure] = A07_velocityPress_kim4836(height, K_zt, K_d, wind_speed)
%
% Input Arguments
% Height: height(ft)
% topographic factor: K_zt
% wind directionality factor: K_d
% basic wind speed: wind_speed(mph)
% 
% Output Arguments
% velocity pressure: pressure
%
% Assignment Information
%   Assignment:     A07, Problem 04
%   Author:         Dakyung Kim, kim4836@purdue.edu
%   Team ID:        224-09
%   Academic Integrity:
%     N/A
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% ____________________
    %% INITIALIZATION
    count = 1; %number of iterations
    
%% ____________________
%% CALCULATIONS

for z = height;
    if z < 15
%velocity pressure exposure coefficient for height lower than 15 ft
        K_z = 2.01 * (15 / 1200) ^ (2 / 7);

    elseif z >= 15 & z <= 1200
%velocity pressure exposure coefficient between 15ft and 1200ft(inclusive)
        K_z = 2.01 * (z / 1200) ^ (2 / 7);
    end

%velocity pressure calculation
    pressure(count)= 0.00256 * K_z * K_zt * K_d * wind_speed ^ 2; 
%calculate iterations   
    count = count + 1;
end

%% ____________________
%% ACADEMIC INTEGRITY STATEMENT
% I have not used source code obtained from any other unauthorized
% source, either modified or unmodified.  Neither have I provided
% access to my code to another. The function I am submitting
% is my own original work.



