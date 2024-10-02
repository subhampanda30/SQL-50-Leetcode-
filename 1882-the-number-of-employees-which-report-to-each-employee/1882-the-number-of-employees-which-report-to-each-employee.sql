/* Write your T-SQL query statement below */
SELECT E1.employee_id, E1.name, Count (E2.reports_to) reports_count, ROUND (AVG(E2.age*1.00),0) average_age 
FROM Employees E1 INNER JOIN Employees E2 ON E2.reports_to=E1.employee_id
GROUP BY E1.employee_id, E1.name
ORDER BY E1.employee_id
