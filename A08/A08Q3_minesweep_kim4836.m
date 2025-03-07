function A08Q3_minesweep_kim4836(rows, cols)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% ENGR 132 
% Program Description 
%  Initializes the Minesweeper game with a random minefield.
%
% Function Call
%  A08Q3_minesweep_kim4836
%
% Input Arguments
%  rows - Number of rows in the Minesweeper grid (integer, must be > 2)
%  cols - Number of columns in the Minesweeper grid (integer, must be > 2)
%
% Output Arguments
%  None (zero outputs)
%
% Assignment Information
%   Assignment:     A08, Problem 3
%   Author:         Dakyung Kim, kim4836@purdue.edu
%   Team ID:        224-09
%   Academic Integrity: N/A
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% ____________________
%% PART B - initial_mine

% Prompt user for number of rows and columns
rows = input('Enter the number of rows (must be > 2): ');
cols = input('Enter the number of columns (must be > 2): ');

% Checks if the user input is valid
if rows < 2 || cols < 2
    error('Rows and columns must be greater than 2.');
end

% Generate a random Boolean matrix (minefield)
initial_mine = randi([0, 1], rows, cols);  % Random 0 or 1 for each cell

% Display the minefield
fprintf('Initial Minefield (%dx%d):\n', rows, cols);
disp(initial_mine);


%% ____________________
%% PART C - counting_mine

% Create counting_mine matrix (same size as initial_mine)
counting_mine = zeros(rows, cols);

% Iterate over each cell in the matrix
for r = 1:rows
    for c = 1:cols
        if initial_mine(r, c) == 1
            % If the cell has a mine, assign 10
            counting_mine(r, c) = 10;
        else
            % Initialize mine count
            mine_count = 0;
                
            % Loop over neighbors using row -1 to row +1 and col -1 to col +1
            for dr = -1:1
                for dc = -1:1
                    new_r = r + dr;
                    new_c = c + dc;
                        
                    % Check if within bounds and avoid counting the cell itself
                    if (new_r >= 1 && new_r <= rows && new_c >= 1 && new_c <= cols) && ~(dr == 0 && dc == 0)
                        mine_count = mine_count + initial_mine(new_r, new_c);
                    end
                end
            end
                
            % Assign the computed count
            counting_mine(r, c) = mine_count;
        end
    end
end

    % Display counting_mine matrix
    fprintf('Counting Mine Matrix (%dx%d):\n', rows, cols);
    disp(counting_mine);
end


%% ____________________
%% ACADEMIC INTEGRITY STATEMENT
% I have not used source code obtained from any other unauthorized
% source, either modified or unmodified.  I have not provided
% access to my code to anyone in any way. The script I am 
% submitting is my own original work.