USE school_db;
SELECT * FROM departments;

USE school_db;

SELECT subjects.id, subjects.name AS subject, subjects.credit, subjects.capacity, departments.name AS department
FROM subjects
INNER JOIN departments
ON subjects.department_id = departments.id;

SELECT subjects.id, subjects.name AS subject, subjects.credit, subjects.capacity, departments.name AS department
FROM departments
LEFT JOIN subjects
ON subjects.department_id = departments.id
UNION
SELECT subjects.id, subjects.name AS subject, subjects.credit, subjects.capacity, departments.name AS department
FROM departments
RIGHT JOIN subjects
ON subjects.department_id = departments.id;

USE school_db;
SELECT CONCAT(teachers.first, ' ', teachers.last) AS name,
 teachers.email,
 subjects.name AS subject,
 subjects.credit,
 subjects.capacity,
 departments.name AS department,
 CONCAT(head.first, ' ', head.last) AS head
FROM teachers
LEFT JOIN subjects
ON teachers.subject_id = subjects.id
LEFT JOIN departments
ON subjects.department_id = departments.id
LEFT JOIN teachers head
ON head.id = teachers.head_id;






