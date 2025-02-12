%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 132 
% Program Description 
% replace this text with your program description as a comment
%
% Assignment Information
%   Assignment:     A03, Problem 1
%   Author:         Dakyung Kim, kim4836@purdue.edu
%   Team ID:        N/A
%   Academic Integrity:
%     [v] I worked with one or more peers but our collaboration
%        maintained academic integrity.
%     Peers I worked with: N/A
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



%% ____________________
%% INITIALIZATION
format longg

grav_par = 398600.4418; % Gravitational Parameter
earthR = 6378.1363; % Earth's Radius
oblatF = 0.001082635; % Oblateness factor
rot_per = [23 56 4]; % Earth's rotational period
rev_T = 27; % Revisit Time
orb_num = 385; % Revisit Orbit Number
ini_axis = 6500; % Initial semi-major axis
n = sqrt(grav_par/a0^3); % Mean Anomaly

%% ____________________
%% CALCULATIONS
rot_speed = 2 * pi / (rot_per(1) * 3600 + rot_per(2) * 60 + rot_per(3)); % Rotational Speed
f_a = 3 * oblatF * (earthR)^2 * n / (2 * ini_axis^2) * ...
    (rev_T*(3-4*sind(98.5705)^2) - orb_num*cosd(98.5705)) - ...
    orb_num * rot_speed + rev_T * n;
fprime_a = (-21 * sqrt(grav_par) * oblatF * (earthR)^2)/(4*ini_axis^(9/2)) * ...
    (rev_T*(3-4*sind(98.5705)^2) - orb_num*cosd(98.5705)) - ...
    3*rev_T*sqrt(grav_par)/(2*ini_axis^(5/2));
semi_axis = ini_axis - f_a/fprime_a; % Estimated semi-major axis

%% ____________________
%% FORMATTED TEXT & FIGURE DISPLAYS
fprintf("The predicted semi-major axis is: %.5f km\n", semi_axis)


%% ____________________
%% ACADEMIC INTEGRITY STATEMENT
% I have not used source code obtained from any other unauthorized
% source, either modified or unmodified.  I have not provided
% access to my code to anyone in any way. The script I am 
% submitting is my own original work.


