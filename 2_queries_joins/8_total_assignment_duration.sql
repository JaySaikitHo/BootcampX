SELECT SUM(duration) AS total_duration
FROM assignment_submissions
JOIN students ON assignment_submissions.student_id = students.id
WHERE students.name IN ('Ibrahim Schimmel');

-- SELECT * FROM assignments;