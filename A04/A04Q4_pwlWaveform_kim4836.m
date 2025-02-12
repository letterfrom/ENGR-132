%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 132 
% Program Description 
% This MATLAB script plots a piecewise linear waveform, calculates
% and displays the instantaneous voltage at a user-specified time,
% and handles invalid input with an error message.
%
% Assignment Information
%   Assignment:     A04, Problem 4
%   Author:         Dakyung Kim, kim4836@purdue.edu
%   Team ID:        N/A
%   Academic Integrity:
%     [v] I worked with one or more peers but our collaboration
%        maintained academic integrity.
%     Peers I worked with: Name, login@purdue [repeat for each]
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%% ____________________
%% INITIALIZATION
% Define time vector and corresponding voltage values
t = linspace(0, 9, 1000); % Time from 0 to 9 ms
v = zeros(size(t)); % Initialize voltage vector

% Initialize piecewise function
v(t >= 0 & t < 1) = 0;
v(t >= 1 & t < 2) = 3 * t(t >= 1 & t < 2) - 3;
v(t >= 2 & t < 4) = 0.5 * t(t >= 2 & t < 4) + 2;
v(t >= 4 & t < 5) = 4;
v(t >= 5 & t < 6) = -3 * t(t >= 5 & t < 6) + 19;
v(t >= 6 & t < 8) = -0.5 * t(t >= 6 & t < 8) + 4;
v(t >= 8 & t < 9) = 0;

% User input for time value in milliseconds
user_time = input('Enter a time value in milliseconds (0 <= t < 9): ');


%% ____________________
%% WAVEFORM GRAPH

figure ();
plot(t, v, 'b-');
xlabel('Time (ms)'); % Appropriate x axis label with units
ylabel('Voltage (V)'); % Appropriate y axis label with units
title('Instantaneous Voltage vs. Time'); % Graph title
grid on;



%% ____________________
%% SELECTION STRUCTURE
% Error statement displayed if user input is out of range
if user_time < 0 || user_time >= 9
    % Nested if statement to post appropriate error message
    if user_time < 0
        error('Error. Input value should be greater than or equal to 0 ms.');

    else
        error('Error. Input value should be less than 9 ms.');

    end
end

% Find the corresponding voltage value for the user input time
if user_time >= 0 && user_time < 1
    user_voltage = 0;

elseif user_time >= 1 && user_time < 2
    user_voltage = 3 * user_time - 3;

elseif user_time >= 2 && user_time < 4
    user_voltage = 0.5 * user_time + 2;

elseif user_time >= 4 && user_time < 5
    user_voltage = 4;

elseif user_time >= 5 && user_time < 6
    user_voltage = -3 * user_time + 19;

elseif user_time >= 6 && user_time < 8
    user_voltage = -0.5 * user_time + 4;

elseif user_time >= 8 && user_time < 9
    user_voltage = 0;

end

 fprintf('At time t = %.2f ms, the voltage v(t) = %.2f V\n', user_time, user_voltage);

%% ____________________
%% ACADEMIC INTEGRITY STATEMENT
% I have not used source code obtained from any other unauthorized
% source, either modified or unmodified.  I have not provided
% access to my code to anyone in any way. The script I am 
% submitting is my own original work.