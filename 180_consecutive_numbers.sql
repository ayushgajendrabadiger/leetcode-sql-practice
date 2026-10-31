SELECT DISTINCT l1.num AS ConsecutiveNums
FROM Logs AS l1
INNER JOIN Logs AS l2
ON l2.id = l1.id + 1
INNER JOIN Logs AS l3
ON l3.id = l2.id + 1
WHERE l1.num = l2.num AND l2.num = l3.num;
