%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 132 
% Program Description 
% This program performs linear regression based on the data that contains
% the concentration of chloride and percent of failed bonds in the
% assembly. Also calculate sample given data and plot regression line and
% raw data.
%
% Assignment Information
%   Assignment:     A09, Problem 1
%   Author:         Dakyung Kim, kim4836@purdue.edu
%   Team ID:        224-09
%   Academic Integrity:
%     N/A
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% ____________________
%% INITIALIZATION
data = readmatrix('data_NaCltest_bondfailure.txt'); %read whole data containing test results
cloride_con = data(:, 1); %cloride concentration values(ug/cm^2)
failed_bond = data(:, 2); %bond failure percentage values(%)
y_bar = mean(failed_bond); %average value of bond failure value(%)

%% ____________________
%% REGRESSION CALCULATIONS
%get slope and intercept
coeffs = polyfit(cloride_con, failed_bond, 1); 
slope = coeffs(1); %slope of linear regression
intercept = coeffs(2); %y intercept of linear regression

%calculate f(x) value. predicted bond failure percentage calculation using
%linear regression(%)
predicted_fail = cloride_con * slope + intercept; 

%Calculate SSE
SSE = sum((failed_bond -  predicted_fail) .^ 2);
%Calculate SST
SST = sum((failed_bond - y_bar) .^ 2);
%Calculate r_squared value
r_squared = 1 - SSE/SST;

%% ____________________
%% PREDICTION CALCULATIONS
sample_cloride = [0.125, 0.255]; %given cloride concentration values(ug/cm^2)
%Calculate predicted bond failure percent value(%)
sample_fail = sample_cloride .* slope + intercept; 

%% ____________________
%% FORMATTED TEXT DISPLAYS
fprintf("Linear model Equation: y = %.3fx %.3f\n", slope, intercept)
fprintf("Linear model Equation: bond failure = %.3f * Cloride concentration %.3f\n", slope, intercept)
fprintf("Goodness of fit results\n")
fprintf("SSE: %.3f\n", SSE)
fprintf("SST: %.3f\n", SST)
fprintf("r^2: %.3f\n", r_squared)

%% ____________________
%% FORMATTED FIGURE DISPLAYS
plot(cloride_con, failed_bond, 'b*');
hold on
plot(cloride_con, predicted_fail, 'r-');
title("Percentage of failed bond according to cloride concentrations")
xlabel("Chloride concentrations[ug/cm^2]")
ylabel("Failed bonds [percentage]")
legend('Original Data', 'Linear Model', 'location', 'southeast')
grid on 

%% ____________________
%% ACADEMIC INTEGRITY STATEMENT
% I have not used source code obtained from any other unauthorized
% source, either modified or unmodified.  Neither have I provided
% access to my code to another. The script I am submitting
% is my own original work.



