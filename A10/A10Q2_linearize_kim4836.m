%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 132 
% Program Description 
% This program creates linearized data and displays it along with its linearized model.
% Template for A10 - Problem 2
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%% ____________________
%% INITIALIZATION
% DATA SET 1
% Function type: Power
x1 = [6, 31, 59, 87, 116, 145, 165, 196, 231, 257];
y1 = [2, 118, 487, 1251, 2527, 4238, 6790, 9016, 13672, 16553];

% DATA SET 2
% Function type: Logarithmic
x2 = [3, 5, 9, 13, 23, 39, 69, 121, 197, 335];
y2 = [7, 110, 203, 328, 463, 591, 636, 762, 876, 984];


%% ____________________
%% Data Linearization Calculations
%transform data
% Data Set 1
x1_lin = log10(x1); % log(x)
y1_lin = log10(y1); % log(y)

coeff1_lin = polyfit(x1_lin, y1_lin, 1);
M1_lin = coeff1_lin(1); % Extract slope
B1_lin = coeff1_lin(2); % Extract intercept

predicted1 = M1_lin * x1_lin + B1_lin; %get linearized value using B and M

% Data Set 2
x2_lin = log10(x2); % log(x)
y2_lin = y2;        % y remains unchanged

coeff2_lin = polyfit(x2_lin, y2_lin, 1);
M2_lin = coeff2_lin(1); % Extract slope
B2_lin = coeff2_lin(2); % Extract intercept

predicted2 = M2_lin * x2_lin + B2_lin; %get linearized value using B and M


%% ____________________
%% Text Display
fprintf("Data set 1\n");
fprintf("Function type: Power\n");
fprintf("Linearized Model: log(y1) = %.3f * log(x1) + %.3f\n", M1_lin, B1_lin);
fprintf("----------------------------------\n");
fprintf("Data set 2\n");
fprintf("Function type: Logarithmic\n");
fprintf("Linearized Model: y2 = %.3f * log(x2) + %.3f\n", M2_lin, B2_lin);

%% ____________________
%% Figure Display
figure(1)
plot(x1_lin, y1_lin, "b*");
hold on
plot(x1_lin, predicted1, "b-")
xlabel("x1")
ylabel("log(y1)")
title("[DATA SET 1] log(y1) vs log(x1) - Linearized model and data")
legend("original data", "modeled equation", "location", "best")
grid on

figure(2)
plot(x2_lin, y2_lin, "b*");
hold on
plot(x2_lin, predicted2, "b-")
xlabel("log(x2)")    
ylabel("y2")
title("[DATA SET 2] y2 vs log(x2) - Linearized model and data")
legend("original data", "modeled equation", "location", "best")
grid on


%% ____________________
%% ACADEMIC INTEGRITY STATEMENT
% I have not used source code obtained from any other unauthorized
% source, either modified or unmodified. I have not provided
% access to my code to anyone in any way. The script I am 
% submitting is my own original work.







