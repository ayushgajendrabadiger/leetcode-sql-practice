SELECT e.employee_id,
       e.name,
       COUNT(e1.employee_id) AS reports_count,
       ROUND(AVG(e1.age),0) AS average_age
FROM Employees AS e
JOIN Employees AS e1
ON e.employee_id=e1.reports_to
GROUP BY e.employee_id,e.name
ORDER BY e.employee_id;
