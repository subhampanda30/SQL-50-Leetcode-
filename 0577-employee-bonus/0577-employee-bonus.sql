/* Write your T-SQL query statement below */
SELECT e.name,b.bonus FROM Employee e
LEFT JOIN bonus b ON e.empid=b.empid
where b.bonus<1000 OR bonus is null