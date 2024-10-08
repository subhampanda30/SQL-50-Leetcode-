/* Write your T-SQL query statement below */
select
   u.user_id
   ,upper(substring(u.name,1,1))+lower(SUBSTRING(u.name,2,len(u.name))) as 'name'
from dbo.Users as u
order by u.user_id;