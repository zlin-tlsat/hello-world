% Zi Qi application
% By: Zi Qi Lin
% September 2017


%% Housekeeping

clc;
clear; % clear workspace and command window

% Determine where your m-file's folder is.
folder = fileparts(which(mfilename)); 
% Add that folder plus all subfolders to the path.
addpath(genpath(folder));

%% Greet user and prompt for input

end_prg = 0;
inum = 0;
while ~(end_prg)
    if inum == 0
        disp("Hello, what would you like to do?");
        inum =1;
    else
        disp("What else would you like to do?");
    end
    
    disp(" [1] Greet the world.");
    disp(" [2] Greet you.");
    disp(" [3] Greet your friend.");
    disp(" [0] Exit!");
    
    prompt = 'Choose option: ';
    usr_sel = input(prompt, 's');

    % Execute user selection
    switch str2double(usr_sel)

        case 1
            disp(' ');
            disp("Hello World!");
            disp(' ');

        case 2
            userName = get_user_name();
            disp(' ');
            disp([' Greetings, your name is ', userName, '!']);
            disp(' ');

        case 3
            exit_cond = 0;                   % exit condition 
            ini = 0;
            while ~(exit_cond)

                if ~(ini)
                    len = 1;
                    names = strings([1, len]);      % create row vector of length 'len'
                    names(1,1) = "Donnie";
                    ini = 1;
                end

                [names, num] = frd_list(names);  % call function to get new names array
                [~, len] = size(names);
                disp(' ');
                disp([' Greetings, your friend''s name is ', char(names(1, num)), '!']);
                disp(' ');
                exit_prompt = 'Do you want to exit friends list? (0 for No, 1 for Yes) ';
                exit_cond = input(exit_prompt);

            end
            disp(' ');
        case 0
            end_prg = 1;
        otherwise
            disp("No selection chosen");

    end % switch
end