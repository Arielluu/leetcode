# Write your MySQL query statement below
SELECT e.name, b.bonus
From Employee e
left Join Bonus b on e.empid = b.empid
WHERE b.bonus < 1000 OR bonus IS NULL