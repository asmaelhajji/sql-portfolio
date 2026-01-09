-- Umsatz pro Monat
SELECT 
  DATE_TRUNC('month', order_date) AS monat,
  SUM(total_amount) AS gesamtumsatz
FROM orders
GROUP BY monat
ORDER BY monat;

-- Top 5 Produkte nach Umsatz
SELECT 
  p.product_name AS produkt,
  SUM(oi.quantity * oi.price) AS umsatz
FROM order_items oi
JOIN products p 
  ON oi.product_id = p.product_id
GROUP BY p.product_name
ORDER BY umsatz DESC
LIMIT 5;
