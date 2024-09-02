/* Write your T-SQL query statement below */
WITH cte
AS (
SELECT s.user_id
,1 AS flag
,CASE
WHEN action = 'confirmed'
THEN 1
ELSE 0
END AS cofrm_flag
FROM Signups s
LEFT OUTER JOIN confirmations c ON s.user_id = c.user_id
)
SELECT user_id
, CAST(SUM(cofrm_flag) *1.00/ count(flag) *1.00 AS NUMERIC(9,2)) AS confirmation_rate
FROM cte
GROUP BY user_id
