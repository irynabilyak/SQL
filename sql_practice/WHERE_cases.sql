-- where cases
SELECT 
	year
	, exp_level AS level
	, emp_type AS type
FROM salaries
WHERE 
	year!=2022
	AND exp_level='SE'
ORDER BY year ASC
LIMIT 20;

-- top 5 data science salaries in 2023

SELECT 
	year
	, job_title
	, salary_in_usd
FROM salaries
WHERE 
	year=2023
	AND job_title='Data Scientist'
ORDER BY salary_in_usd DESC
LIMIT 5;

-- Вивести з/п спеціалістів ML Engineer в 2023 році
SELECT 
	year
	, job_title
	, salary_in_usd
FROM salaries
WHERE 
	year=2023
	AND job_title='ML Engineer'
ORDER BY salary_in_usd DESC;

-- Назвати країну (comp_location),в якій зафіксована найменша з/п спеціаліста в сфері Data Scientist в 2023 році
SELECT 
	emp_location
	, job_title
	, salary_in_usd
FROM salaries
WHERE 
	year=2023
	AND job_title='Data Scientist'
ORDER BY salary_in_usd ASC
LIMIT 1;

-- Вивести з/п українців (код країни UA), додати сортування за зростанням з/п
SELECT 
	emp_location
	, job_title
	, salary_in_usd
FROM salaries
WHERE 
	emp_location='UA'
ORDER BY salary_in_usd ASC;

-- Вивести топ 5 з/п серед усіх спеціалістів, які працюють повністю віддалено (remote_ratio = 100)
SELECT 
	job_title
	, remote_ratio
	, salary_in_usd
FROM salaries
WHERE 
	remote_ratio = 100
ORDER BY salary_in_usd DESC
LIMIT 5;
-- Згенерувати .csv файл з таблицею даних всіх спеціалістів, які в 2023 році мали з/п більшу за $100,000 і працювали в компаніях середнього розміру (comp_size = 'M')
SELECT 
	year
	, job_title
	, company_size
	, salary_in_usd
FROM salaries
WHERE 
	year=2023
	AND salary_in_usd>100000
	AND company_size = 'M'
ORDER BY salary_in_usd DESC;
