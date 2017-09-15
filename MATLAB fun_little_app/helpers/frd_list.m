function [ frdName, num ] = frd_list(names)
% frd_list Gets user input, 
% returns frdName
    
    valid_in = 0;
    while ~(valid_in)
        frd_prompt = 'Choose your friend number, or enter new name: '; % prompt to greet friend or add friend

        disp(' ');
        disp("Your friends are: ");    
        
        [~, len] = size(names);
        n = 1;                          % display array of names
        while n <= len
            disp([' ', char(num2str(n)), ' - ', char(names(1,n))]);
            n = n+1;
        end                             % display array of names end
        disp(' ');

% -------------------- returns name, or adds new name and returns it -----------------------
        frd_name = input(frd_prompt, 's');
        frd_num = str2double(frd_name);        % frd_name is STRING, converts to double

        if  fix(frd_num) >= n || fix(frd_num) < 1               % checks to see if number is in range
            disp('Number is not in range!');
            valid_in = 0;
        
        elseif isnan(frd_num) || fix(frd_num) ~= frd_num       % check if input is NOT a number
            len = len +1;                      % increase array size by 1
            names(1,len) = string(frd_name);   % write new name to array
            num = len;
            frdName = names;
            valid_in = 1;
        
        else
            frdName = names; % returns an existing name
            num = frd_num;
            valid_in = 1;
        end

    end % end while loop
end