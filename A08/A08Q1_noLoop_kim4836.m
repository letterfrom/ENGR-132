%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 132 
% Program Description 
% Script for A08 Problem 1: MATLAB Skills - Removing Loops
%
% Assignment Information
%   Assignment:     A08, Problem 1
%   Author:         Dakyung Kim, kim4836@purdue.edu
%   Team ID:        224-09
%   Academic Integrity: N/A
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%% ____________________
%% SOLUTION WITH NO LOOP
% Variable declaration
vec = [7, 1, -41, -44, -9, -6, 58, 62, 49];
newvec = zeros(1,numel(vec));  % pre-allocate newvec with zeros

% if vec(idx) > -28 & vec(idx) < -3
idx1 = (vec > -28) & (vec < -3);
numerator1 = 9 ./ (vec(idx1) - 2);
denominator1 = 5 * vec(idx1).^2 + 5 * vec(idx1);
newvec(idx1) = numerator1 ./ denominator1;

% else
idx2 = ~idx1;  % All elements that do not satisfy the first condition
numerator2 = 8 * vec(idx2).^2 - 2 ./ vec(idx2);
denominator2 = 9 * vec(idx2).^3;
newvec(idx2) = numerator2 ./ denominator2;


%% ____________________
%% ACADEMIC INTEGRITY STATEMENT
% I have not used source code obtained from any other unauthorized
% source, either modified or unmodified.  I have not provided
% access to my code to anyone in any way. The script I am 
% submitting is my own original work.