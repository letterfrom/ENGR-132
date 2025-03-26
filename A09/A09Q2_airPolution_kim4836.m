function A09Q2_airPolution_kim4836
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 132 
% Program Description 
% This program perform linear regressions on CO2 and CH4 data and get
% goodness of fit results. Also, this program plots the graph based on the
% calculated model.
%
% Function Call
% function A09Q2_airPolution_kim4836
%
% Input Arguments
% N/A
%
% Output Arguments
% N/A
%
% Assignment Information
%   Assignment:     A09, Problem 2
%   Author:         Dakyung Kim, kim4836@purdue.edu
%   Team ID:        224-09
%   Academic Integrity:
%     N/A
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% ____________________
%% INITIALIZATION
co2_data = readmatrix("co2_mm_gl.csv"); %CO2 data in NOAA format
ch4_data = readmatrix("ch4_mm_gl.csv"); %CH4 data in NOAA format
co2_year = co2_data(:, 3); %decimal year of CO2 data
co2 = co2_data(:, 4); %average co2(ppm)
co2_mean = mean(co2); %average value of whole CO2 concentration value(ppm)
ch4_year = ch4_data(:, 3); %decimal year of CH4 data
ch4 = ch4_data(:, 4); %average CH4 concentration value for each year(ppb)
ch4_mean = mean(ch4); %average value of whole CH4 concentration value(ppb)


%% ____________________
%% CALCULATIONS
%calculate slope and y intercept value of linear regression(CO2)
co2_coeffs = polyfit(co2_year, co2, 1);
%calculate f(x) or predicted CO2 concentration value using linear regression
predicted_co2 = co2_year * co2_coeffs(1) + co2_coeffs(2);
%calculate CO2 SSE value
SSE_co2 = sum((co2 -  predicted_co2) .^ 2);
%calculate CO2 SST value
SST_co2 = sum((co2 - co2_mean) .^ 2);
%calculate CO2 r^2 value
co2_r_squared = 1 - SSE_co2/SST_co2;

%calculate slope and y intercept value of linear regression(CH4)
ch4_coeffs = polyfit(ch4_year, ch4, 1); 
%calculate f(x) or predicted CH4 concentration value using linear regression
predicted_ch4 = ch4_year * ch4_coeffs(1) + ch4_coeffs(2);
%calculate CH4 SSE value
SSE_ch4 = sum((ch4 -  predicted_ch4) .^ 2);
%calculate CH4 SST value
SST_ch4 = sum((ch4 - ch4_mean) .^ 2);

%calculate CH4 r^2 value
ch4_r_squared = 1 - SSE_ch4/SST_ch4;


%% ____________________
%% FORMATTED TEXT DISPLAYS
%display co2 value
fprintf("CO2 Value\n")
fprintf("Linear model Equation: y = %.3fx %.3f\n", co2_coeffs(1), co2_coeffs(2))
fprintf("Linear model Equation: CO2 concentrations = %.3f * year %.3f\n", co2_coeffs(1), co2_coeffs(2))
fprintf("Goodness of fit results\n")
fprintf("SSE: %.3f\n", SSE_co2)
fprintf("SST: %.3f\n", SST_co2)
fprintf("r^2: %.3f\n\n", co2_r_squared)

%display ch4 value
fprintf("CH4 Value\n")
fprintf("Linear model Equation: y = %.3fx %.3f\n", ch4_coeffs(1), ch4_coeffs(2))
fprintf("Linear model Equation: CH4 concentrations = %.3f * year %.3f\n", ch4_coeffs(1), ch4_coeffs(2))

fprintf("Goodness of fit results\n")
fprintf("SSE: %.3f\n", SSE_ch4)
fprintf("SST: %.3f\n", SST_ch4)
fprintf("r^2: %.3f\n", ch4_r_squared)


%% ____________________
%% FORMATTED FIGURE DISPLAYS
figure(2)
subplot(2, 1, 1)
plot(co2_year, co2, 'b*', 'MarkerSize', 1);
hold on
plot(co2_year, predicted_co2, 'r-');
title("CO2 concentration vs Decimal Year")
xlabel('Decimal Year')
ylabel('CO2 concentration (ppm)')
xlim([co2_year(1) co2_year(end)])
grid on
subplot(2, 1, 2)
plot(ch4_year, ch4, 'b*', 'MarkerSize', 1);
hold on
plot(ch4_year, predicted_ch4, 'r-');
title("CH4 concentration vs Decimal Year")
xlabel('Decimal Year')
ylabel('CH4 concentration (ppb)')
xlim([ch4_year(1) ch4_year(end)])
sgtitle("Greenhouse gas concentrations according to years in decimal")


%% ____________________
%% ACADEMIC INTEGRITY STATEMENT
% I have not used source code obtained from any other unauthorized
% source, either modified or unmodified.  Neither have I provided
% access to my code to another. The function I am submitting
% is my own original work.



