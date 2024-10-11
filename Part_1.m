% Author Name: Caleb CLair
% Email: Clairc68@rowan.edu
% Course: MATLAB Programming - Fall 2024
% Assignment: Homework 2 (Part 1)
% Date: 10-11-24

population = [5000, 5200, 5350, 5600, 5800]; %population variable
growth_rate = (population(2:end) - population(1:end-1)) %variable for rate
pop_data = [population; [0 growth_rate]] %the data for increasing pop.

for i = 1:length(population)    %creates loop to display pop. over years
    fprintf("For the %d year the population was %d with growth rate %f \n", i, pop_data(1,i), pop_data(2,i))  %prints the populations and growth rate in a table
end


