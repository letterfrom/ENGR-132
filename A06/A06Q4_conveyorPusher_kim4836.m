%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 132 
% Program Description : Calculates the amount of work done by the pusher
% to move the bag. Reads the given matrix, stores the calculated value
% in an array and plots it
%
% Assignment Information
%   Assignment:     A06, Problem 4
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
pusher = readmatrix('data_pusher_force_displacement.csv'); % Read time, displacement, and force value of the pusher
displacement = pusher(:, 2); % Displacement the bag was moved (m)
force = pusher(:, 3); % Force exerted by the pusher (N)
tempW = 0; % Variable to store work value temporarily
work = []; % Work done by the pusher to move the bag

%% ____________________
%% CALCULATIONS

for k = 2:length(displacement)
    % Calculate the given equation
    % Use temporary variable storing to calculate sigma(sum of everything)
    tempW = tempW + ((force(k) + force(k - 1)) / 2 * (displacement(k)-displacement(k - 1)));
    
    % Store the calculated value in the index
    work(k) = tempW;

end

%% ____________________
%% FORMATTED FIGURE DISPLAY
% Create a figure with two subplots in a single column
subplot(2, 1, 1);

% Plot force graph with respect to distance
plot(displacement, force, 'bs');
title("Pusher Force vs. Displacement"); % Set title for the first plot
xlabel('Distance (m)'); % Label x-axis
ylabel('Force (N)'); % Label y-axis
grid on;

% Create a second subplot
subplot(2, 1, 2);

% Plot work graph with respect to distance
plot(displacement, work, 'bs');
title("Work Done by the Pusher"); % Set title for the second plot
xlabel('Distance (m)'); % Label x-axis
ylabel('Work (J)'); % Label y-axis
grid on;

% Set a title for the entire figure
sgtitle('Force and Work according to displacement of the bag');


%% ____________________
%% ACADEMIC INTEGRITY STATEMENT
% I have not used source code obtained from any other unauthorized
% source, either modified or unmodified. I have not provided
% access to my code to anyone in any way. The script I am 
% submitting is my own original work.







