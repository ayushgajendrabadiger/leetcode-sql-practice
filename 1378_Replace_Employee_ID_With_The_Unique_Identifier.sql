SELECT e1.unique_id,e.name
FROM Employees AS e
LEFT JOIN EmployeeUNI AS e1
on e1.id=e.id;
