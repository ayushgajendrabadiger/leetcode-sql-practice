-- Problem: 175 - Combine Two Tables
-- Difficulty: Easy
-- Language: MySQL
-- Concepts: LEFT JOIN

SELECT p.firstName , p.lastName, a.city, a.state
FROM Person AS p
LEFT JOIN Address AS a
ON p.personId = a.personId;
