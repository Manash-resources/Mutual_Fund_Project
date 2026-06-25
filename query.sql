SELECT investor_id  , SUM(amount_inr ) AS total_aum
FROM fact_transactions
GROUP BY investor_id 
ORDER BY total_aum DESC
LIMIT 5;

SELECT 
    strftime('%Y-%m', date) AS month,
    AVG(nav) AS avg_nav
FROM fact_nav
GROUP BY month
ORDER BY month;

SELECT transaction_date AS year,COUNT(*) AS sip_count
FROM fact_transactions
WHERE transaction_type = 'SIP'
GROUP BY year
ORDER BY year;

SELECT state, SUM(amount_inr ) AS total
FROM fact_transactions
GROUP BY state
ORDER BY total DESC;

SELECT *
FROM fact_performance
WHERE expense_ratio_pct   < 1;

SELECT year, investor_id , MAX(total) 
FROM (
    SELECT 
        investor_id,
        transaction_date   AS year,
        SUM(amount_inr  ) AS total
    FROM fact_transactions
    GROUP BY investor_id, year
)
SELECT 
    transaction_date,
    SUM(amount_inr  ) AS total
FROM fact_transactions
GROUP BY transaction_date;

SELECT 
    transaction_type,
    SUM(amount_inr)
FROM fact_transactions
GROUP BY transaction_type;

SELECT amfi_code, MAX(nav)
FROM fact_nav
GROUP BY amfi_code        
ORDER BY MAX(nav) DESC
LIMIT 1;


SELECT *
FROM scheme_performance
WHERE returns > 50;

