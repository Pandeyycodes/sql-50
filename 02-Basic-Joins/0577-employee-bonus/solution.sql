SELECT e.name, b.bonus
FROM Employee e
LEFT JOIN Bonus b
ON e.empId = b.empId
WHERE b.bonus < 1000 OR b.bonus IS NULL;
-- LEFT JOIN keeps all employees, even if they don't have a bonus record.
-- Match employees from both tables using empId.
-- Select employee names and their bonus amounts.
-- WHERE filters employees whose bonus is less than 1000 or NULL.
-- IS NULL checks employees who have no matching bonus record.