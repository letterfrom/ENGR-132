%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 132 
% Program Description 
% 
%
% Assignment Information
%   Assignment:     A06, Problem 2
%   Author:         Dakyung Kim, kim4836@purdue.edu
%   Team ID:        224-09
%   Academic Integrity:
%     [v] I worked with one or more peers but our collaboration
%        maintained academic integrity.
%     Peers I worked with: Luke Sheaffer, lsheaffe@purdue.edu
%                          Travis Shoemake, shoemat@purdue.edu
%                          Minsu Cho, cho617@purdue.edu
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



%% ____________________
%% INITIALIZATION
format longg

% Earth parameters
grav = 398600.4418; % Gravitational Parameter (km^3/s^2)
earthR = 6378.1363; % Earth's Radius (km)
oblatF = 0.001082635; % Oblateness factor (unitless)
rotation_per = [23 56 4]; % Earth's rotational period [hr min sec]

% Orbit parameters
inc = 98.5705; % inclination (deg)
numDays = 27; % Revisit Time (days)
numOrbs = 385; % Revisit Orbit Number (unitless)
a0 = 0; % Initial Semi major axis value for each iteration, a_n-1 (km)
a1 = 6500; % Final Semi major axis  value for each iteration, a_n (km)

% iteration parameter
i = 0;
tolerance = 10^(-6); % accuracy tolerance given (unitless)
%% ____________________
%% CALCULATIONS

% Calculate Earth's rotational speed in rad/sec
rot_speed = 2 * pi / (rotation_per(1) * 3600 + rotation_per(2) * 60 + rotation_per(3)); % Rotational Speed

while (abs(a1 - a0) > tolerance)
    
    %sets initial semi major axis value to 6500km
    a0 = a1;

    % Calculate mean anomaly
    mean_A = sqrt(grav/a0^3);

    % Calculate 2 functions of a for the Newton Raphson method
    f_a = 3 * oblatF * (earthR)^2 * mean_A / (2 * a0^2) * ...
      (numDays * (3-4 * sind(inc)^2) - numOrbs * cosd(inc)) - ...
      numOrbs * rot_speed + numDays * mean_A;

    fprime_a = (-21 * sqrt(grav) * oblatF * (earthR)^2)/(4*a0^(9/2)) * ...
       (numDays*(3-4*sind(inc)^2) - numOrbs*cosd(inc)) - ...
       3*numDays*sqrt(grav)/(2*a0^(5/2));
    
    a1 = a0 - f_a/fprime_a;  % Update the iteration of the semi-major axis
    i = i + 1; % Update iteration count
    
    fprintf('Iteration Count : %d\n', i);
    fprintf('Calculated semi-major axis value = %.15f\n\n', a1);

end

%% ____________________
%% FORMATTED TEXT & FIGURE DISPLAYS
fprintf("The predicted semi-major axis is: %.5f km\n", a1);


%% ____________________
%% ACADEMIC INTEGRITY STATEMENT
% I have not used source code obtained from any other unauthorized
% source, either modified or unmodified.  I have not provided
% access to my code to anyone in any way. The script I am 
% submitting is my own original work.


