SELECT 
  department,
  COUNT(*) AS employee_count,
  AVG(salary) AS avg_salary
FROM employees
GROUP BY department
HAVING COUNT(*) > 3
ORDER BY avg_salary DESC;
