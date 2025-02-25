function [positive_inter_p, negative_inter_p] = A07_windPress_kim4836(vel_press, building_vel_press, Gust, C_p, GC_pi)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 132 
% Program Description 
% This function calculates wind pressure for both internal pressure cases for any wall. 
%
% Function Call
% [positive_inter_p, negative_inter_p] = A07_windPress_kim4836(vel_press, building_vel_press, Gust, C_p, GC_pi)
%
% Input Arguments
% velocity pressure: vel_press
% velocity pressure at the building's height: building_vel_press
% gust factor: Gust
% external pressure coefficient: C_p
%  internal pressure coefficients: GC_pi
% 
% Output Arguments
% wind pressure with positive internal pressure: positive_inter_p
%  wind pressure with negative internal pressure: negative_inter_p
%
% Assignment Information
%   Assignment:     A07, Problem 04
%   Author:         Dakyung Kim, kim4836@purdue.edu
%   Team ID:        224-09
%   Academic Integrity:
%     N/A
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% ____________________
%% CALCULATIONS
%calculation of positive internal pressure
positive_inter_p = vel_press * Gust * C_p - building_vel_press * GC_pi(1);

%calculation of negative internal pressure
negative_inter_p = vel_press * Gust * C_p - building_vel_press * GC_pi(2);

%% ____________________
%% ACADEMIC INTEGRITY STATEMENT
% I have not used source code obtained from any other unauthorized
% source, either modified or unmodified.  Neither have I provided
% access to my code to another. The function I am submitting
% is my own original work.



