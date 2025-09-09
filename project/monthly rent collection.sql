SELECT 
    MONTH(transaction_date) AS month,
    YEAR(transaction_date) AS year,
    SUM(amount) AS total_collected
FROM transactions
GROUP BY YEAR(transaction_date), MONTH(transaction_date)
ORDER BY year, month;
