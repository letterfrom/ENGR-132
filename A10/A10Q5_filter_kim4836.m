%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 132 
% Program Description 
% Using the collected data on amount of dust in the filters (in grams) and 
% the corresponding pressure loss (in pascals), model is created in this program.
%
% Assignment Information
%   Assignment:     A10, Problem 5
%   Author:         Dakyung Kim, kim4836@purdue.edu
%   Team ID:        224-09
%   Academic Integrity:
%     [v] I worked with one or more peers but our collaboration
%        maintained academic integrity.
%     Peers I worked with: N/A
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% ____________________
%% INITIALIZATION
data = readmatrix('data_filterFM182_performance.xlsx'); %import collected data of amount of dust and corresponding pressure loss
dust = data(:, 1); %amount of dust in the filters (grams) 
pressure = data(:, 2); %pressure loss (pascals)


%% ____________________
%% DATA on SCALED PLOTS
figure(1)
subplot(2, 2, 1)
plot(dust, pressure, "b*")
title('pressure loss vs dust - rectilinear axes')
xlabel('dust accumulation(g)')
ylabel('pressure loss(Pa)')
grid on

subplot(2, 2, 2)
semilogx(dust, pressure, "b*")
title('pressure loss vs dust - semilog in x axes')
xlabel('dust accumulation(g)')
ylabel('pressure loss(Pa)')
grid on

subplot(2, 2, 3)
semilogy(dust, pressure, "b*")
title('pressure loss vs dust - semilog in y axes')
xlabel('dust accumulation(g)')
ylabel('pressure loss(Pa)')
grid on

subplot(2, 2, 4)
loglog(dust, pressure, "b*")
title('pressure loss vs dust - log-log axes')
xlabel('dust accumulation(g)')
ylabel('pressure loss(Pa)')
grid on

sgtitle("Log of pressure loss corresponding to the amount of dust in the filters for each scales")

%% ____________________
%% LINEARIZATION CALCULATIONS
x_lin = dust; %linear X value for dust(grams)
y_lin = log10(pressure); %linear Y value for pressure loss(pascals)

coeff_lin = polyfit(x_lin, y_lin, 1); %vector containing M and B
M_lin = coeff_lin(1); %slope M of the model line for the linearized data
B_lin = coeff_lin(2); %y-intecept B of the model line for the linearized data

%predicted Y value calculation of the model line for the linearized model
predicted_lin = M_lin * x_lin + B_lin;

%% ____________________
%% GENERAL MODEL CALCULATIONS
x = dust; %exponential x value for dust(grams)
y = pressure; %exponential y value for pressure loss(pascals)

m = M_lin; %m value of the line for the general model
b = 10 ^ B_lin; %b value of the line for the general model

%predicted Y value calculation of the model line for the general model
predicted_gen = b * 10 .^ (m * x);


%% ____________________
%% LINEARIZATION FIGURE DISPLAY
figure(2)
plot(x_lin, y_lin, "b*")
hold on
plot(x_lin, predicted_lin, "b-")
xlabel("dust accumulation (g)")
ylabel("log(pressure loss) (log(Pa))")
title("log of pressure loss according to dust in filters - linearized model")
legend("original data", "modeled equation", "location", "best")

grid on


%% ____________________
%% GENERAL MODEL FIGURE DISPLAY
figure(3)
plot(x, y, "b*")
hold on
plot(x, predicted_gen, "b-")
xlabel("dust accumulation (g)")
ylabel("pressure loss (Pa)")
title("pressure loss according to dust in filters - general model")
legend("original data", "modeled equation", "location", "best")

grid on

%% ____________________
%% ALL TEXT DISPLAYS
fprintf("Function type: Exponential\n")
fprintf("Linear model: log(pressure loss) = %.4f * dust + %.3f\n", M_lin, B_lin)
fprintf("General model: pressure loss = %.3f * 10 ^ (%.4f * dust)\n", b, m)


%% ____________________
%% ACADEMIC INTEGRITY STATEMENT
% I have not used source code obtained from any other unauthorized
% source, either modified or unmodified. I have not provided
% access to my code to anyone in any way. The script I am 
% submitting is my own original work.