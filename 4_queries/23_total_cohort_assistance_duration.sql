SELECT cohorts.name AS name, SUM(assistance_requests.completed_at - assistance_requests.started_at) AS total_duration
FROM students
JOIN assistance_requests ON students.id = assistance_requests.student_id
JOIN cohorts ON students.cohort_id = cohorts.id
GROUP BY cohorts.name
ORDER BY total_duration;