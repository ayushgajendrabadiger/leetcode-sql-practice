SELECT s1.student_id,s1.student_name,s2.subject_name,COUNT(e.subject_name) AS attended_exams
FROM Students AS s1
CROSS JOIN Subjects AS s2
LEFT JOIN Examinations AS e
ON s1.student_id=e.student_id
AND s2.subject_name=e.subject_name
GROUP BY subject_name,student_id,student_name
ORDER BY student_id,student_name,subject_name;
