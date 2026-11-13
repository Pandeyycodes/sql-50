SELECT w1.id
FROM Weather w1
INNER JOIN Weather w2
ON DATEDIFF(w1.recordDate, w2.recordDate) = 1
WHERE w1.temperature > w2.temperature;

-- We can join a table with itself (SELF JOIN) to compare its rows.
-- w1 represents today's weather and w2 represents yesterday's.
-- ON matches dates that are exactly one day apart.
-- WHERE checks if today's temperature is higher.