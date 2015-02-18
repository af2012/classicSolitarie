function run_solitaire ()
%% This is the main function to solve the solitaire

% Create border
board = [2 2 2 2 2 2 2 2 2 2 2;
         2 2 2 2 2 2 2 2 2 2 2;
         2 2 2 2 1 1 1 2 2 2 2;
         2 2 2 1 1 1 1 1 2 2 2;
         2 2 1 1 1 1 1 1 1 2 2;
         2 2 1 1 1 0 1 1 1 2 2;
         2 2 1 1 1 1 1 1 1 2 2;
         2 2 2 1 1 1 1 1 2 2 2;
         2 2 2 2 1 1 1 2 2 2 2;
         2 2 2 2 2 2 2 2 2 2 2;
         2 2 2 2 2 2 2 2 2 2 2];
board = int8(board);    
% Create array of options
toCheck = struct;
toCheck.options = cell(1,1);
toCheck.options{1} = board;

% count number of pegs left

% Check for valid move

% find empty slot
curr = board;
[R, C] = find(curr ==0);
emptyCells = [R, C];

% for each empty cell for options
for i = 1:size(emptyCells,1)         
    R_t = emptyCells(i,1);
    C_t = emptyCells(i,2);

    % add options to list
    [addOptions, amtToAdd] = checkCells(R_t, C_t, curr);
    if (amtToAdd>0)
        for j = 1:amtToAdd
            currSize = size(toCheck.options,2);
            toCheck.options{currSize+1} = addOptions.options{j};    
        end
    end
    
end

% if no options were added to list

% if no valid move, pick another option

% add to array of options

disp('test');
end
