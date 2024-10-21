/* Write your T-SQL query statement below */
WITH RankOrder AS (
    SELECT *,
           ROW_NUMBER() OVER (PARTITION BY customer_id ORDER BY order_date) AS RowNum
    FROM Delivery
),
RankOne AS (
    SELECT *
    FROM RankOrder
    WHERE RowNum = 1
)
SELECT 
    Round(Sum(CASE WHEN order_date = customer_pref_delivery_date THEN 1.0 ELSE 0 END) * 100.0 / COUNT(*),2) AS immediate_percentage
FROM 
    RankOne;