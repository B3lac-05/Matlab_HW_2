% Author Name: Caleb CLair
% Email: Clairc68@rowan.edu
% Course: MATLAB Programming - Fall 2024
% Assignment: Homework 2
% Date: 10-11-24

%reads the stock data from 'stock_data.txt'
filename = 'stock_data.txt';
stock_prices = load(filename);  % Loads the data from the file

%calculates the stuff
average_price = mean(stock_prices);
highest_price = max(stock_prices);
lowest_price = min(stock_prices);


% Calculate number of days the stock price increased from the previous day
price_increases = sum(diff(stock_prices) > 0);  %greater than 0 means increase

% Print the calculated values
fprintf(' The avergage closing price is: %.2f\n', average_price);
fprintf(' The highest closing price is: %.2f\n', highest_price);
fprintf('The lowest lowest closing price is: %.2f\n', lowest_price);
fprintf('Number of Days Stock Price Increased: %d\n', price_increases);



%Create a line plot
figure;
plot(stock_prices, '-o', 'DisplayName', 'Daily Closing Prices');  % Plot daily closing prices
hold on;  %allows for more plots
yline(average_price, '--', 'DisplayName', 'Average Price', 'LineWidth', 2);  % Plot average price
yline(highest_price, '-.', 'DisplayName', 'Highest Price', 'LineWidth', 2);  % Plot highest price
yline(lowest_price, '-.', 'DisplayName', 'Lowest Price', 'LineWidth', 2);    % Plot lowest price
hold off;
xlabel('Day');
ylabel('Price');
title('Stock Price Analysis');      %labels
legend('show');
grid on;



saveas(gcf, 'stock_analysis.png');  %saves the document

% Write a summary of the info.
summary_filename = 'stock_summary.txt';
fileID = fopen(summary_filename, 'w');
fprintf(fileID, 'Stock Price Analysis Summary\n');
fprintf(fileID, '---------------------------------\n');
fprintf(fileID, 'Average Closing Price: %.2f\n', average_price);
fprintf(fileID, 'Highest Closing Price: %.2f\n', highest_price);
fprintf(fileID, 'Lowest Closing Price: %.2f\n', lowest_price);
fprintf(fileID, 'Number of Days Stock Price Increased: %d\n', price_increases);
fclose(fileID);
