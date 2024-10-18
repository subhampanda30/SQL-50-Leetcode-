/* Write your T-SQL query statement below */
select user_id, name, mail
from Users
where mail Like '%@leetcode.com'
and mail like '[a-zA-z]%'
and left (mail, len(mail)-13) not like '%[^a-zA-Z0-9._-]%'
