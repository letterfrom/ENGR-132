%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 132 
% Program Description 
% Script for MATLAB Skills - FOR Loop
%
% Assignment Information
%   Assignment:     A06, Problem 3
%   Author:         Dakyung Kim, kim4836@purdue.edu
%   Team ID:        224-09
%   Academic Integrity:
%     [v] I worked with one or more peers but our collaboration
%        maintained academic integrity.
%     Peers I worked with: N/A
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%% ____________________
%% FOR LOOP

% Initialize given variable
M = 12;
N = 3;
S = 2;
count = 0; % variable to count the number of iteration

% Define control vector
Z = [6, 29, 4, 13, 16, 19, 22, 9, 16, 26, 24, 20];

% Assign the number of element in Z
num = length(Z);

for i = 1:num
    T = N * Z(i) + M;
    V = Z(i) - N;
    S = T + V - S;

    count = count + 1; % update the number of iteration
end

fprintf('There was %d iterations.\n', count); % print iteration number
fprintf('Final value for S is %d', S); % print final value of S


%% ____________________
%% ACADEMIC INTEGRITY STATEMENT
% I have not used source code obtained from any other unauthorized
% source, either modified or unmodified.  I have not provided
% access to my code to anyone in any way. The script I am 
% submitting is my own original work.