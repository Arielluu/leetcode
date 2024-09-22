# Write your MySQL query statement below
SELECT DISTINCT A.machine_id, ROUND(avg(b.timestamp - a.timestamp),3) as processing_time
from Activity A
JOIN Activity B
ON A.machine_id = B.machine_id and A.process_id = B.process_id and A.activity_type = 'start' and B.activity_type = 'end'
GROUP BY A.machine_id