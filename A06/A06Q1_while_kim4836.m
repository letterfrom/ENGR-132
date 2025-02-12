%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 132 
% Script for MATLAB Skills - WHILE Loop
%
% Assignment Information
%   Assignment:     A06, Problem 1
%   Author:         Dakyung Kim, kim4836@purdue.edu
%   Team ID:        224-09
%   Academic Integrity:
%     [v] I worked with one or more peers but our collaboration
%        maintained academic integrity.
%     Peers I worked with: N/A
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% ____________________
%% WHILE Loop

% Initialize the given variable
A = 41;
B = 2033373;
i = 0; % iteration number checker

while (A < 94 || B > 11)
    A = A + 11;
    B = B * 0.3;
    C = A / B;

    i = i + 1; % update the iteration number checker
end

% print out the result
fprintf('The loop was performed %d times, and the final value of C is %.0f', i, C);


%% ____________________
%% ACADEMIC INTEGRITY STATEMENT
% I have not used source code obtained from any other unauthorized
% source, either modified or unmodified. I have not provided
% access to my code to anyone in any way. The script I am 
% submitting is my own original work.