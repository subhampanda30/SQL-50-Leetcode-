/* Write your T-SQL query statement below */
SELECT name FROM Employee WHERE id in
(SELECT managerID FROM employee GROUP BY managerID HAVING COUNT(*)>=5);
