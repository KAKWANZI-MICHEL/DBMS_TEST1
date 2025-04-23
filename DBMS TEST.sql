## creating table finance
CREATE TABLE finance (
    student_id INT PRIMARY KEY,
    tuition_fee INT,
    admin_fee INT,
    exam_fee INT,
    medical_fee INT
);

## extracting YIS2
SELECT s.student_name, s.id, s.year, f.tuition_fee
FROM students s
JOIN finance f ON s.id = f.student_id
WHERE s.year = 'Y1S1';

## DISPLAYING STUDENT NAME
SELECT s.student_name, s.id, s.year, f.tuition_fee
FROM students s
JOIN finance f ON s.id = f.student_id
WHERE f.tuition_fee > 30000;

## ADDING  A RECORD
INSERT INTO students (student_name, bd, year, mobile_number)
VALUES ('Dan', '2001-04-20', 'Y1S2', '0723456123');

## CHANGE SUDENT NAME
UPDATE students
SET student_name = 'Nelson'
WHERE id = 26;


SELECT 
    MAX(tuition_fee) AS highest_tuition_fee,
    MIN(tuition_fee) AS lowest_tuition_fee
FROM finance;

