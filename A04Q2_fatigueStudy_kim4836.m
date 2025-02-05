%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 132 
% Program Description 
% This program creates three figures that  
%
% Assignment Information
%   Assignment:     A04, Problem 2
%   Author:         Dakyung Kim, kim4836@purdue.edu
%   Team ID:        N/A
%   Academic Integrity:
%     [v] I worked with one or more peers but our collaboration
%        maintained academic integrity.
%     Peers I worked with: N/A
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%% ____________________
%% INITIALIZATION

responses = readmatrix("data_dispatcher_responses.csv"); % reads the given file that contains the survey response

average_workweek = responses(:, 18); % Gets average # of hrs work per week data
years_dispatcher = responses(:, 4); % Gets total years as dispatcher
years_present = responses(:, 5); % Gets total years in current position
age = responses(:, 2); % Gets age of respondents

mental_exhaust = responses(:, 20); % Gets mental exhaustion levels (1:lowest ~ 4:highest)
physical_exhaust = responses(:, 21); % Gets physical exhaustion levels (1:lowest ~ 4:highest)
alert = responses(:, 19); % Gets alertness levels (1:lowest ~ 4:highest)
caffeine = responses(:, 10); % Gets caffeine consumption (1=yes, 2=no)
id = responses(:, 1); % Respondent IDs


%% ____________________
%% PART A - Calculations and text display
% How many respondents have an average workweek that is more than 40 hours?

fprintf("%d respondents have an average workweek that is more than 40 hours. \n", numel(find(average_workweek>40)))


%% ____________________
%% PART B - Calculations and text display
% What percentage of the respondents are working their first dispatcher job?

percentage = numel(find(years_dispatcher == years_present)) / numel(years_dispatcher) * 100;
fprintf("%.2f%% are working their first dispatcher job. \n", percentage)

%% ____________________
%% PART C - Calculations and text display
% What age cohort is most represented in the data?

% Calculate the number of respondents in each age cohort
cohort1 = numel(find((floor(age / 10) == 1))); % Ages 10-19
cohort2 = numel(find((floor(age / 10) == 2))); % Ages 20-29
cohort3 = numel(find((floor(age / 10) == 3))); % Ages 30-39
cohort4 = numel(find((floor(age / 10) == 4))); % Ages 40-49
cohort5 = numel(find((floor(age / 10) == 5))); % Ages 50-59

% Combine the counts into an array
cohort_total = [cohort1, cohort2, cohort3, cohort4, cohort5];

% Find the maximum value and corresponding index
[max_value, max_num] = max(cohort_total);

% Use index value to determine the most represented age cohort
if max_num == 1
    age_cohort = '10-19';

elseif max_num == 2
    age_cohort = '20-29';

elseif max_num == 3
    age_cohort = '30-39';
    
elseif max_num == 4
    age_cohort = '40-49';

else
    age_cohort = '50-59';

end

% Print the result
fprintf("Age cohort from %s years old were most represented in the data. \n", age_cohort);


%% ____________________
%% PART D - Calculations and text display
% How many respondents who have worked as a dispatcher for at least 6 years 
% but less than 20 years and who report feeling mentally or physically 
% exhausted, but not both simultaneously, at the “frequently” or “always” level?

answer_D = numel(find((years_dispatcher >= 6 & years_dispatcher < 20) & xor((mental_exhaust == 3 | mental_exhaust == 4), (physical_exhaust == 3 | physical_exhaust ==4))));

% Print the result
fprintf("%d respondents who have worked as a dispatcher for at least 6 years but less than 20 years and who report feeling mentally or physically exhausted, but not both simultaneously, at the ""frequently"" or ""always"" level. \n", answer_D)

%% ____________________
%% PART E - Calculations and text display
% Which survey IDs indicate that they feel frequently or always feel alert 
% at work, average more than 40 work hours per week, and do not 
% consume caffeinated beverages?

survey_id = id(find(alert >= 3 & average_workweek >= 40 & caffeine == 2)); 

% Print the result
fprintf("Survey IDs that indicate that they feel frequently or always feel alert at work, average more than 40 work hours per week, and do not consume caffeinated beverages : ");
fprintf("%d ", survey_id); % Print the ID separately to prevent bunch of words displayed in the result area

%% ____________________
%% PART F - Calculations and text display
% Some respondents failed to include their number of years as a dispatcher 
% or the number of years in their current position. 
% Which survey IDs failed % to include one or both values in their response?

% Use NaN for blank responses in the data
F_id = id(find(isnan(years_dispatcher) | isnan(years_present)));

% Display the result
fprintf("Survey IDs ");
fprintf("%d ", F_id);
fprintf("failed to include one or both values in their response. \n");


%% ____________________
%% ACADEMIC INTEGRITY STATEMENT
% I have not used source code obtained from any other unauthorized
% source, either modified or unmodified.  I have not provided
% access to my code to anyone in any way. The script I am 
% submitting is my own original work.