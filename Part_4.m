% Author Name: Caleb CLair
% Email: Clairc68@rowan.edu
% Course: MATLAB Programming - Fall 2024
% Assignment: Homework 2
% Date: 10-11-24



% Define planet distances and sizes
planet_distances = [0.39, 0.72, 1, 1.52, 5.2, 9.58, 19.2, 30.051];
planet_sizes = [0.38, 0.95, 1, 0.53, 11.21, 9.45, 4.01, 3.88];

% Define planet names
planets = {'Mercury', 'Venus', 'Earth', 'Mars','Jupiter', 'Saturn', 'Uranus', 'Neptune'};

%colors for each planet 
colors = [
    1, 0, 0;    % Mercury: Red
    0, 1, 0;    % Venus: Green
    0, 0, 1;    % Earth: Blue
    1, 1, 0;    % Mars: Yellow
    1, 0, 1;    % Jupiter: Magenta
    0, 1, 1;    % Saturn: Cyan
    0.5, 0.5, 0; % Uranus: Olive
    0.5, 0, 0.5  % Neptune: Purple
];

% Create figure and hold on for multiple plots
figure;
hold on;

% Loop through each planet and plot with different colors
for i = 1:length(planets)
    scatter(planet_distances(i), planet_sizes(i), planet_sizes(i)*100, colors(i, :), 'filled');
end

% Add title and labels
title('Planet Distances vs Sizes');
xlabel('Distance from the Sun (AU)');
ylabel('Relative Size (Earth = 1)');
grid on;
hold off;

figure;
bar(planet_distances);
set(gca, "xticklabel", planets);
ylabel('Distances from the sun in AU');
grid on;

saveas(gcf, "solar_system_visualization.png")