%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 132 
% Program Description 
% This program aims to calculate a sustainable flocculant for improving
% water treatment by enhancing the settling of suspended particles.
%
% Assignment Information
%   Assignment:     A03, Problem 3
%   Author:         Dakyung Kim, kim4836@purdue.edu
%   Team ID:        N/A
%   Academic Integrity:
%     [v] I worked with one or more peers but our collaboration
%        maintained academic integrity.
%     Peers I worked with: N/A
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



%% ____________________
%% STEP 2
data = readmatrix('Data_flocSettling.xlsx'); % import the given data

conc = data(:,1); % concentration of suspended particles (g/L)
vel_test1 = data(:,2); % Settling velocity for Test 1 (m/s)
vel_test2 = data(:,3); % Settling velocity for Test 2 (m/s)
vel_test3 = data(:,4); % Settling velocity for Test 3 (m/s)



%% ____________________
%% STEP 3 & 4
figure(1)
model = 10.63.*(exp(1).^(conc*(-0.64)-0.04));

plot(conc, model) 
hold on;
grid on;
plot(conc, vel_test1, 'bd') % plotting test1
plot(conc, vel_test2, 'ms') % plotting test2
plot(conc, vel_test3, 'ko') % plotting test 3
title({"Settling velocity according to the change", "in the concentration of suspended particles for each tests"})
xlabel("Concentration (g/L)") % x-axis label
ylabel("Settling Velocity (m/hr)") % y-axis label
legend('model', 'vel_test1', 'vel_test2', 'vel_test3', 'location', 'best')






%% ____________________
%% STEP 5 & 6
mean_test = (vel_test1 + vel_test2 + vel_test3)/3; % average test values

stdev_test = std(data(:, 2:4), 0, 2); % standard deviation of test values





%% ____________________
%% STEP 7
figure(2)
plot(conc, model) 
hold on;
grid on;
plot(conc, mean_test, "ms")
title({"Settling velocity according to the change", "in the concentration of suspended particles for average of tests"})
xlabel("Concentration (g/L)") % x-axis label
ylabel("Settling Velocity (m/hr)") % y-axis label
errorbar(conc, mean_test, stdev_test, 'r*') % creating the error bar
legend('model', 'average', 'location', 'best')
hold off;




%% ____________________
%% STEP 8 & 9
avg_velocity_change_model=(model(1)-model(3))/(3.2-1.2);
avg_velocity_change1=(vel_test1(1)-vel_test1(3))/(3.2-1.2);
avg_velocity_change2=(vel_test2(1)-vel_test2(3))/(3.2-1.2);
avg_velocity_change3=(vel_test3(1)-vel_test3(3))/(3.2-1.2);

fprintf("The average rate of change for a model is: %.3f (m*L)/(hr*g)\n", avg_velocity_change_model)
fprintf("The average rate of change for test1 is: %.3f (m*L)/(hr*g)\n", avg_velocity_change1)
fprintf("The average rate of change for test2 is: %.3f (m*L)/(hr*g)\n", avg_velocity_change2)
fprintf("The average rate of change for test3 is: %.3f (m*L)/(hr*g)\n", avg_velocity_change3)



%% ____________________
%% ACADEMIC INTEGRITY STATEMENT
% I have not used source code obtained from any other unauthorized
% source, either modified or unmodified.  I have not provided
% access to my code to anyone in any way. The script I am 
% submitting is my own original work.

