-- Write a query that counts the number of unique values in the month column for each year.

select year, count(distinct month) as month_count from tutorial.aapl_historical_stock_price group by year