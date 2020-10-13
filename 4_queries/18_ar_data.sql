SELECT  teachers.name AS teacher, students.name AS student, assignments.name AS assignment, (assistance_requests.started_at - assistance_requests.completed_at) AS duration
FROM assistance_requests
JOIN teachers ON teachers.id = assistance_requests.teacher_id
JOIN assignments ON assignments.id = assistance_requests.assignment_id
JOIN students ON assistance_requests.student_id = students.id
ORDER BY duration DESC;