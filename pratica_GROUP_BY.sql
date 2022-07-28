-- Exercicio 1
SELECT COUNT("endDate") AS "currentExperiences"
FROM experiences;

-- Exercicio 2
SELECT "userId" AS id, COUNT("userId") AS educations
FROM educations
GROUP BY "userId";

-- Exercicio 3
SELECT user.name AS writer, COUNT(testimonials."recipientId") AS "testimonialCount"
FROM testimonials
JOIN users ON testimonials."writerId" = user.id
WHERE user.id = 435
GROUP BY user.name;

-- Exercicio 4
SELECT MAX(jobs.salary) AS "maximumSalary", roles.name AS role
FROM jobs
JOIN jobs ON jobs."roleId" = roles.id
WHERE jobs.active = true
GROUP BY role
ORDER BY "maximumSalary";