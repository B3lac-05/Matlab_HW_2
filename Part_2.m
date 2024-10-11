% Author Name: Caleb CLair
% Email: Clairc68@rowan.edu
% Course: MATLAB Programming - Fall 2024
% Assignment: Homework 2 (Part 2)
% Date: 10-11-24

message = input('enter letters you would like to encrypt:', 's'); %asks for letterd
encrpted_message = double(message);  %converts ti number values
shift = input("Enter a shift value:");
encrpted_message = encrpted_message + shift;   %encrypts the message with a shift
for i = 1:length(encrpted_message)         
    if encrpted_message(i) > 122
        encrpted_message(i) = encrpted_message(i) - 26
    end
    if encrpted_message(i) < 97 
        encrpted_message(i) = encrpted_message(i) + 26      %^makes sure the value stay between the number for A-Z
    end

end

fprintf("Your shift value is %d \n", shift);        %print all of the data
fprintf("Your message normally is %s \n", message);
fprintf("Your encrpyted message is ");
fprintf("%d", encrpted_message);