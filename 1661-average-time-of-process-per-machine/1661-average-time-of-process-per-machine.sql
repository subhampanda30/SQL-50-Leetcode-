# Write your MySQL query statement below
SELECT a.machine_id, round(avg(b.timestamp-a.timestamp),3)as processing_time
FROM activity a JOIN activity b 
ON a.machine_id=b.machine_id and a.process_id=b.process_id and a.activity_type = 'start'and b.activity_type='end'
group by 1;