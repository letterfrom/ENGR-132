%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 132 
% Program Description 
% This program creates a figure with a 2x2 subplot grid figure for the data
% set that displays plots with the scales. Then, this program linearizes
% model and ultimately display the final model.
%
% Assignment Information
%   Assignment:     A10, Problem 4
%   Author:         Dakyung Kim, kim4836@purdue.edu
%   Team ID:        224-09
%   Academic Integrity:
%     [v] I worked with one or more peers but our collaboration
%        maintained academic integrity.
%     Peers I worked with: N/A
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%% ____________________
%% INITIALIZATION
% DATA SET
x1 = [5, 17, 31, 44, 58, 72, 82, 97, 114, 127, 139, 157];
y1 = [32, 752, 2933, 6835, 13357, 20260, 33799, 43965, 60582, 79145, 104790, 133470];

%% ____________________
%% PLOTS WITH AXIS SCALING
figure(1)
subplot(2, 2, 1)
plot(x1, y1, "b*")
title('y1 vs x1 - rectilinear axes')
xlabel('x1')
ylabel('y1')
grid on

subplot(2, 2, 2)
semilogx(x1, y1, "b*")
title('y1 vs x1 - semilog in x axes')
xlabel('x1')
ylabel('y1')
grid on

subplot(2, 2, 3)
semilogy(x1, y1, "b*")
title('y1 vs x1 - semilog in y axes')
xlabel('x1')
ylabel('y1')
grid on

subplot(2, 2, 4)
loglog(x1, y1, "b*")
title('y1 vs x1 - log-log axes')
xlabel('x1')
ylabel('y1')
grid on

sgtitle("y1 vs x1 for according scales")

%display the function type
fprintf("Appropriate Function Type: Power\n")

%% ____________________
%% LINEARIZED MODEL

%%% DATA LINEARIZATION & MODEL
x1_lin = log10(x1); %linear X value for x1
y1_lin = log10(y1); %linear Y value for y1

coeff_lin = polyfit(x1_lin, y1_lin, 1); %vector containing M and B
M_lin = coeff_lin(1); %slope M of the model line for the linearized data
B_lin = coeff_lin(2); %y-intecept B of the model line for the linearized data

%predicted y value according to the linear model
predicted_lin = M_lin * x1_lin + B_lin;

%%% TEXT DISPLAY
fprintf("M: %.3f\nB: %.3f\n", M_lin, B_lin);
fprintf("Linear Model: log(y1) = %.3flog(x1) + %.3f\n", M_lin, B_lin);

%%% FIGURE DISPLAY
figure(2)
plot(x1_lin, y1_lin, "b*")
hold on
plot(x1_lin, predicted_lin, "b-")
xlabel("log(x1)")
ylabel("log(y1)")
title("log(y1) vs log(x1) - Linearized model")
legend("original data", "modeled equation", "location", "best")
grid on


%% ____________________
%% DETERMINE MODEL

%%% PARAMETER IDENTIFICATION
m1 = M_lin; %m value  of the model line for the general model(power function)
b1 = 10 ^ B_lin; %b value of the model line for the general model(power function)

%predicted y value according to the general model
predicted_gen = b1 * x1 .^ m1;

%%% TEXT DISPLAY
fprintf("m: %.3f\nb: %.3f\n", m1, b1);
fprintf("Final Model: y1 = %.3f x1 ^ %.3f\n", b1, m1);

%%% FIGURE DISPLAY
figure(3)
plot(x1, y1, "b*")
hold on
plot(x1, predicted_gen, "b-")
xlabel("x1")
ylabel("y1")
title("y1 vs x1 - General model(Power function)")
legend("original data", "modeled equation", "location", "best")
grid on

%% ____________________
%% ACADEMIC INTEGRITY STATEMENT
% I have not used source code obtained from any other unauthorized
% source, either modified or unmodified. I have not provided
% access to my code to anyone in any way. The script I am 
% submitting is my own original work.