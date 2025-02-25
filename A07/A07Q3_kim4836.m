function [out1] = A07_A07Q3_38245429(in1, in2)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 132 
% Program Description 
%   Function template for MATLAB Skills - UDFs & Nested Structures
%
% Assignment Information
%   Assignment:     A07, Problem 3
%   Author:         Dakyung Kim, kim4836@purdue.edu
%   Team ID:        224-09
%   Academic Integrity:
%     [v] I worked with one or more peers but our collaboration
%        maintained academic integrity.
%     Peers I worked with: N/A
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% FUNCTION 

%B: is in1 less than 12
if in1 < 12
%C: Assign out1 to equal -88
    out1 = -88;
%D: Is in2 less than 1 or not an integer
elseif in2 < 1 | mod(in2,1) ~= 0

%E: Assign out1 to equal -888
    out1 = -888;
else
%F: Initialize out1(1) as the sum of in1 and in2
    out1(1) = in1 + in2;

    %G: Is out1 between 12 and 21, inclusive?
    if out1 >= 12 && out1 <= 21

        %H: Reassign out1 as half the sum of in1 and in2
        out1 = (in1 + in2) / 2;

    %I: Reassign out1 as twice the sum of in1 and in2
    else
        out1 = (in1 + in2) * 2;
    end
end

%J: Return the scalar out1 as an output argument
fprintf("%g", out1);


%% ____________________
%% ACADEMIC INTEGRITY STATEMENT
% I have not used source code obtained from any other unauthorized
% source, either modified or unmodified.  Neither have I provided
% access to my code to another. The function I am submitting
% is my own original work.



