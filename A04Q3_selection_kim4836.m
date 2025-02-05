%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 132 
% Script for MATLAB Skills - Selection Structure
%
% Assignment Information
%   Assignment:     A04, Problem 3
%   Author:         Dakyung Kim, kim4836@purdue.edu
%   Team ID:        N/A
%   Academic Integrity:
%     [v] I worked with one or more peers but our collaboration
%        maintained academic integrity.
%     Peers I worked with: N/A
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% ____________________
%% SELECTION STRUCTURE

A = 100;

if A >= 285
    A = A * -3;

elseif A <= 19 || A > 256
    A = A ^ 0.1;

elseif A >= 141 && A <= 181
    A = A + 134;

elseif A <= 57 || A > 208
    A = A + 127;

else
    fprintf('A is invalid\n');

end

disp(A);


%% ____________________
%% ACADEMIC INTEGRITY STATEMENT
% I have not used source code obtained from any other unauthorized
% source, either modified or unmodified. I have not provided
% access to my code to anyone in any way. The script I am 
% submitting is my own original work.