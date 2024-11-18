SELECT
	1 AS nmb_1
	,2	AS nmb_2
	,5+5 AS nmb_3;

SELECT *
FROM salaries;


SELECT 
	COUNT (*)			AS	cnt_all
	, COUNT (exp_level)	AS	cnt_level
	, COUNT (DISTINCT exp_level)
FROM salaries
LIMIT 10;

SELECT 
	AVG(salary_in_usd)			AS	salary_avg
	, MAX(salary_in_usd)		AS	salary_max
	, MIN(salary_in_usd)		AS	salary_min
FROM salaries
WHERE year=2023
LIMIT 10;


SELECT 
	year
	, exp_level
	, salary_in_usd
	, salary_in_usd*40	AS salary_in_uah
FROM salaries
LIMIT 10;


SELECT 
	year
	, exp_level
	, salary_in_usd
	, salary_in_usd*40	AS salary_in_uah
	--'SE' - Senior
	--'MI' - Middle
	-- Other
	, CASE
		WHEN exp_level='SE'
		THEN 'Senior'
		WHEN exp_level='MI'
		THEN 'Middle'
		ELSE 'Others' END	AS full_level 
FROM salaries
LIMIT 10;

--вивести унікальні значення для колонки
SELECT DISTINCT company_location
FROM salaries;

--вивести кількість унікальних значеннь для колонки
SELECT COUNT(DISTINCT company_location)
FROM salaries;

SELECT 
	ROUND(AVG(salary_in_usd),2)			AS	salary_avg
	, MAX(salary_in_usd)		AS	salary_max
	, MIN(salary_in_usd)		AS	salary_min
FROM salaries
WHERE year=2023;

--вивести унікальні значення для колонки
SELECT ROUND(DISTINCT (remote_ratio/100.0),2)	AS remote_frac
FROM salaries;
