SELECT 
  c.customer_id,
  c.customer_name,
  MAX(o.order_date) AS last_order_date,
  CASE 
    WHEN MAX(o.order_date) >= CURRENT_DATE - INTERVAL '6 months'
      THEN 'aktiv'
    ELSE 'inaktiv'
  END AS customer_status
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.customer_name
ORDER BY last_order_date DESC;
