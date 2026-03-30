SELECT * FROM hrdata

--Total number of employees
SELECT SUM(employee_count) AS employee_count
FROM hrdata;

--Total number of employees with a High School Diploma as highest education
SELECT SUM(employee_count) 
FROM hrdata
WHERE education = 'High School';

--Total number of employees hired in the Sales department
SELECT SUM(employee_count)
FROM public.hrdata
WHERE department = 'Sales';

--Total number of employees with a Medical education background
SELECT SUM(employee_count)
FROM public.hrdata
WHERE education_field = 'Medical';

--Total number of employees that have left the company
SELECT COUNT(attrition) AS attrition_count
FROM public.hrdata
WHERE attrition = 'Yes';

--Total attrition count of employees with a Doctoral degree in the R&D department
SELECT COUNT(attrition) AS attrition_count
FROM public.hrdata
WHERE attrition = 'Yes' AND education = 'Doctoral Degree' AND department = 'R&D';

--Total attrition count of employees by education field
SELECT education_field, COUNT(attrition) AS attrition_count
FROM public.hrdata
WHERE attrition = 'Yes'
GROUP BY education_field
ORDER BY COUNT(attrition) DESC;


--Find the total attrition rate in the company across all departments
SELECT ROUND(((SELECT COUNT(attrition) FROM public.hrdata WHERE attrition = 'Yes') / SUM(employee_count)) * 100, 2) AS attrition_rate
FROM public.hrdata;

--Attrition rate for R&D department 
SELECT ROUND(((SELECT COUNT(attrition) FROM public.hrdata WHERE attrition = 'Yes' AND department = 'R&D') / SUM(employee_count)) * 100, 2) AS "R&D_attrition_rate"
FROM public.hrdata
WHERE department = 'R&D';

--Total number of active employees in the company
SELECT SUM(employee_count) - (SELECT COUNT(attrition) FROM public.hrdata WHERE attrition = 'Yes') AS active_employees
FROM public.hrdata;

--Total number of active female employees in the company
SELECT SUM(employee_count) - (SELECT COUNT(attrition) FROM public.hrdata WHERE attrition = 'Yes' AND gender = 'Female') AS active_female_employees
FROM public.hrdata
WHERE gender = 'Female';

--Average age of employees in the company
SELECT ROUND(AVG(age), 0) AS avg_age
FROM public.hrdata; 

--Total attrition by gender
SELECT gender, COUNT(attrition) AS total_attrition
FROM public.hrdata
WHERE attrition = 'Yes'
GROUP BY gender;

--Total attrition count of employees by departments
SELECT department, COUNT(attrition) AS attrition_count
FROM public.hrdata
WHERE attrition = 'Yes'
GROUP BY department
ORDER BY COUNT(attrition) DESC;

--Total attrition count of employees by departments & their corresponding % of the total attrition
SELECT department, COUNT(attrition) AS "attrition_count",
ROUND((CAST(COUNT(attrition) AS numeric) / (SELECT COUNT(attrition) FROM public.hrdata WHERE attrition = 'Yes')) * 100, 2) AS "%_total_attrition"
FROM public.hrdata
WHERE attrition = 'Yes'
GROUP BY department
ORDER BY COUNT(attrition) DESC;

--Total employee count by age
SELECT age, SUM(employee_count) AS employee_count
FROM public.hrdata
GROUP BY age
ORDER BY age;

--Attrtion by age group together with the gender split, while also deriving their corresponding percentages to total attrition
SELECT age_band, gender, COUNT(attrition) AS attrition_count,
ROUND((CAST(COUNT(attrition) AS numeric) / (SELECT COUNT(attrition) FROM public.hrdata WHERE attrition = 'Yes')) * 100, 2) AS "%_total_attrition"
FROM public.hrdata
WHERE attrition = 'Yes'
GROUP BY age_band, gender
ORDER BY age_band, gender;


--Find the count of each job_satisfaction rating given by all employees accoridng to their job_roles
--First enable extension needed to run CROSSTAB function in order to create a pivot table
CREATE EXTENSION tablefunc;

SELECT *
FROM crosstab(
	'SELECT job_role, job_satisfaction, SUM(employee_count)
	FROM public.hrdata
	GROUP BY job_role, job_satisfaction
	ORDER BY job_role, job_satisfaction'
	) AS ct(job_role varchar(50), one numeric, two numeric, three numeric, four numeric)
ORDER BY job_role;
