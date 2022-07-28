## Questão 1

SELECT 
  COUNT(e."endDate") AS "currentExperiences" 
FROM 
  experiences e;
-------------------------------------------------------------------------

## Questão 2

SELECT 
  e."userId" AS "id", 
  COUNT(e.id) AS "educations" 
FROM 
  educations e 
GROUP BY 
  e."userId";
-------------------------------------------------------------------------

## Questão 3

SELECT 
  u.name AS "writer", 
  COUNT(t.id) AS "testimonialCount" 
FROM 
  testimonials t 
  JOIN users u ON u.id = t."writerId" 
WHERE 
  t."writerId" = 435 
GROUP BY 
  u.name;
-------------------------------------------------------------------------

## Questão 4

SELECT MAX(j.salary) AS "maximumSalary",
r.name AS "role"
FROM jobs j
JOIN roles r ON r.id=j."roleId"
WHERE j.active = true
GROUP BY r.id
ORDER BY "maximumSalary" ASC;
