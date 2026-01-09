SELECT 
  DATE_TRUNC('month', order_date) AS month,
  SUM(total_amount) AS total_revenue
FROM orders
GROUP BY month
ORDER BY month;
