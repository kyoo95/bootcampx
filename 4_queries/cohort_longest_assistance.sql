SELECT cohorts.name as name, avg(created_at-started_at) as average_assistance_time
FROM assistance_requests
JOIN students ON students.id = assistance_requests.student_id
JOIN cohorts ON cohorts.id = cohort_id
GROUP BY cohorts.name
WHERE MAX(average_assistance_time)
ORDER BY average_assistance_time DESC
LIMIT 1;