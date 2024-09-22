# Write your MySQL query statement below
SELECT contest_id, ROUND(COUNT(DISTINCT user_id)*100/
(SELECT COUNT(user_id) FROM Users),2) AS percentage FROM Register
group by contest_id
order by percentage DESC,contest_id;
