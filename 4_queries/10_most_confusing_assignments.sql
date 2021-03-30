SELECT assignment_id, assignments.name, assignments.day, assignments.chapter, count(assignment_id) as total_requests
FROM assistance_requests
JOIN assignments ON assignment_id = assignments.id
GROUP BY assignment_id, assignments.name, assignments.day, assignments.chapter
ORDER BY total_requests DESC