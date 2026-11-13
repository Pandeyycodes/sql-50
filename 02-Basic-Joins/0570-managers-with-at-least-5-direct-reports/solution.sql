SELECT 
    e2.name
FROM Employee e1
JOIN Employee e2
ON e1.managerId = e2.id
GROUP BY e2.id, e2.name
HAVING COUNT(e1.id) >= 5;

-- SELF JOIN connects employees with their respective managers.
-- e1 represents employees, while e2 represents managers.
-- ON matches the employee's managerId with the manager's id.
-- GROUP BY groups all direct reports under each manager.
-- COUNT(e1.id) counts the number of direct reports per manager.
-- HAVING filters managers who have at least 5 direct reports.