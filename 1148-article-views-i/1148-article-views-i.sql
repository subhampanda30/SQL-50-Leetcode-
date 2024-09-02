/* Write your T-SQL query statement below */
SELECT DISTINCT (author_id)as id FROM views 
where author_id=viewer_id ORDER BY author_id;