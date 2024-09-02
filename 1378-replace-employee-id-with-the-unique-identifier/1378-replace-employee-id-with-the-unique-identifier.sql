/* Write your T-SQL query statement below */
SELECT unique_id,name FROM Employees e
LEFT JOIN EmployeeUNI o ON e.id=o.id
