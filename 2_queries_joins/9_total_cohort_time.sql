-- SELECT SUM(assignment_submissions.duration) AS total_curation
-- FROM assignment_submissions

-- JOIN students ON students.id = assignment_submissions.student_id
-- JOIN cohorts ON assignment_submissions.student_id = cohorts.id
-- WHERE cohorts.name = 'FEB12' AND students.cohort_id = 'FEB12';

SELECT SUM(assignment_submissions.duration) as total_duration
FROM assignment_submissions
JOIN students ON students.id = student_id
JOIN cohorts ON cohorts.id = cohort_id
WHERE cohorts.name = 'FEB12';