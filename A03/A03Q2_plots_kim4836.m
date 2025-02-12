%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 132 
% Program Description 
% Script for MATLAB Skills - Plots
%
% Assignment Information
%   Assignment:     A03, Problem 2
%   Author:         Dakyung Kim, kim4836@purdue.edu
%   Team ID:        N/A
%   Academic Integrity:
%     [v] I worked with one or more peers but our collaboration
%        maintained academic integrity.
%     Peers I worked with: N/A
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%% ____________________
%% INITIALIZATION
% X data: cost in US dollars
x = [103, 121, 112, 128, 148, 130, 137, 159, 173, 154, 191, 184];

% Y data: distance in meters
y1 = [93, 86, 85, 85, 84, 71, 71, 70, 63, 60, 59, 55];
y2 = [145, 143, 135, 132, 127, 118, 118, 103, 103, 102, 95, 95];

%% ____________________
%% FIGURE 1
figure(1);                 % Figure 1
plot(x, y1, 'ms'); % Plot y1 vs x 
title('Distance according to the cost'); % Descriptive figure title
xlabel('Cost (US dollars)'); % Label x-axis with units
ylabel('Distance (meters)'); % Label y-axis with units
grid on; % Add grid lines for axes
legend('y_1 vs x', 'Location', 'northeast'); % Add a legend for clarity

%% ____________________
%% FIGURE 2
figure(2); % Figure 2

% Top subplot
subplot(2, 1, 1); % Create the top subplot
plot(x, y1, 'ms'); % Plot y1 vs x 
title('Distance y_1 vs Cost x'); % Descriptive title for the top subplot
xlabel('Cost (US dollars)'); % Label x-axis with units
ylabel('Distance (meters)'); % Label y-axis with units
grid on; % Add grid lines for axes

% Bottom subplot
subplot(2, 1, 2); % Create the bottom subplot
plot(x, y2, 'bd'); % Plot y2 vs x 
title('Distance y_2 vs Cost x'); % Descriptive title for the bottom subplot
xlabel('Cost (US dollars)'); % Label x-axis with units
ylabel('Distance (meters)'); % Label y-axis with units
grid on; % Add grid lines for axes

% Overall title
sgtitle('Distance according to the cost'); % Add an overall title to Figure 2


%% ____________________
%% FIGURE 3
figure(3); % Designate Figure 3

% Plot y1 vs x
plot(x, y1, 'ms'); % Plot y1 vs x 
hold on; % Retain the current plot for overlaying y2

% Plot y2 vs x
plot(x, y2, 'bd'); % Plot y2 vs x 

% Format
title('Distance according to the cost for two volume dataset'); % Descriptive figure title
xlabel('Cost (US dollars)'); % Label x-axis with units
ylabel('Distance (meters)'); % Label y-axis with units
grid on; % Add grid lines for better readability
legend('y_1 vs x', 'y_2 vs x', 'Location', 'northeast'); % Add a legend to differentiate plots
hold off; % Release hold


%% ____________________
%% ACADEMIC INTEGRITY STATEMENT
% I have not used source code obtained from any other unauthorized
% source, either modified or unmodified. I have not provided
% access to my code to anyone in any way. The script I am 
% submitting is my own original work.





