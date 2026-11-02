SELECT ROUND(COUNT(DISTINCT l1.player_id) / 
        (SELECT COUNT(DISTINCT player_id) FROM Activity),2) AS fraction
FROM Activity AS l1
JOIN Activity AS l2
ON l1.player_id = l2.player_id
AND l2.event_date = DATE_ADD(l1.event_date, INTERVAL 1 DAY)
WHERE l1.event_date = (
    SELECT MIN(l3.event_date)
    FROM Activity AS l3
    WHERE l3.player_id = l1.player_id
);
