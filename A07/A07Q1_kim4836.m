function [w, v, s] = A07Q1_Function_Skill_38245429(b, f, a)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 132 
% Program Description 
%   Function template for MATLAB Skills - UDFs
%
% Assignment Information
%   Assignment:     A07, Problem 1
%   Author:         Dakyung Kim, kim4836@purdue.edu
%   Team ID:        224-09
%   Academic Integrity:
%     [v] I worked with one or more peers but our collaboration
%        maintained academic integrity.
%     Peers I worked with: N/A
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% ____________________
%% CALCULATIONS

% Coded operations within the function
% Input variable : b, f, a
% Output variable : w, v, s
w = (f * 20) / b;
v = a * 2;
s = w - v;
m = w + v - s; 

%% ____________________
%% FORMATTED TEXT DISPLAYS

% Display m to the Command Window with 2 decimal places
fprintf('%.2f\n', m);

%% ____________________
%% ACADEMIC INTEGRITY STATEMENT
% I have not used source code obtained from any other unauthorized
% source, either modified or unmodified.  Neither have I provided
% access to my code to another. The function I am submitting
% is my own original work.



