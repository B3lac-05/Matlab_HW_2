% Author Name: Caleb CLair
% Email: Clairc68@rowan.edu
% Course: MATLAB Programming - Fall 2024
% Assignment: Homework 2
% Date: 10-11-24

data = readcell('weather_data.txt', 'Delimiter', ','); %reads

temperature = cell2mat(data(2:end, 2))   %creates vectors
humidity = cell2mat(data(2:end, 3))
precipitation = cell2mat(data(2:end, 4))



avg_temp = sum(temperature)/ 5;    %does the average of the values
avg_hum = sum(humidity)/ 5;
avg_prec = sum(precipitation)/ 5;

fprintf("\nThe avergage tempurature is %f \n", avg_temp);   %prints the averages
fprintf("The average humidity is %d \n", avg_hum);
fprintf("The avergage precipitation is %d ", avg_prec);

fileID = fopen('weather_summary.txt',"w");

fprintf(fileID, "\nThe avergage tempurature is %f \n", avg_temp);   % saves to new file
fprintf(fileID, "The average humidity is %d \n", avg_hum);
fprintf(fileID, "The avergage precipitation is %d ", avg_prec);

fclose(fileID);