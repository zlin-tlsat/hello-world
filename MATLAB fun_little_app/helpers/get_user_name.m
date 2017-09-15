function [ userName ] = get_user_name()
%GET_USER_NAME Allows the user to enter their name and returns it as a
%string.
    
    prompt = 'What is your name? ';
    userName = input(prompt, 's');
    
end

