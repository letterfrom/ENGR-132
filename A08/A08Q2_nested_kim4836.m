%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 132 
% Program Description 
% Script for A08 Problem 2: MATLAB Skills - Nested Loops
%
% Assignment Information
%   Assignment:     A08, Problem 2
%   Author:         Dakyung Kim, kim4836@purdue.edu
%   Team ID:        224-09
%   Academic Integrity: N/A
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%% ____________________
%% FLOWCHART TRANSLATION
a = 0; % assign a = 0
b = 10; % assign b to value given
count_outer = 0; % assign count_outer = 0
total_iterations = 0; % assign total_iterations = 0
sum_ab = a + b; %assign sum_ab = a + b

if (sum_ab < 1000) % Is sum_ab < 1000?
    count_outer = count_outer + 1;
    a = a + 1;

    for c = 2:5:14 % control vector as c that starts at 2, increments by 5, and ends with 14
        a = 2 * a + c;
        b = 7 * c;
        sum_ab = a + b;
        total_iterations = total_iterations + 1;
    end
end

%display results
fprintf("Total outer loop iterations: %d\n", count_outer);
fprintf("Total iterations: %d\n", total_iterations);
fprintf("Sum of a and b: %d\n", sum_ab);



%% ____________________
%% ACADEMIC INTEGRITY STATEMENT
% I have not used source code obtained from any other unauthorized
% source, either modified or unmodified.  I have not provided
% access to my code to anyone in any way. The script I am 
% submitting is my own original work.