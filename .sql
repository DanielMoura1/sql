-- EX 1
SELECT COUNT("endDate") as experiences
FROM experiences

 -- EX 2
SELECT e."userId", COUNT(e."endDate")
FROM educations e
GROUP BY e."userId"

--ex 3

SELECT u.name,COUNT(t1.message)
FROM testimonials t1
JOIN users u ON t1."writerId" = u.id
WHERE t1."writerId"=435
GROUP BY u.name

-- EX 4

SELECT MAX(j.salary),r.name
FROM jobs j
JOIN roles r ON j."roleId" =r.id
WHERE j.active = true

GROUP BY r.name

