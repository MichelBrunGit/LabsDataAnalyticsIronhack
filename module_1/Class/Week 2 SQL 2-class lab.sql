-- create database publications;
-- use publications;

Select pubs.pub_name, COUNT(titles.title_id) AS Titles
From publications.publishers pubs
LEFT JOIN publications.titles titles
ON pubs.pub_id = titles.pub_id
GROUP BY pubs.pub_name;

-- Count numbers of Titles that have a publication
-- New Moon Books	5
-- Binnet & Hardley	7
-- Algodata Infosystems	6

Select *
From publications.employee emp
LEFT JOIN publications.jobs job
ON emp.job_id = job.job_id
UNION 
Select *
From publications.employee emp
RIGHT JOIN publications.jobs job
ON emp.job_id = job.job_id;

SELECT pubs.pub_name, COUNT(titles.title_id) AS Titles
FROM publications.publishers pubs
LEFT JOIN publications.titles titles
ON pubs.pub_id = titles.pub_id
GROUP BY pubs.pub_name;
-- New Moon Books	5
-- Binnet & Hardley	7
-- Algodata Infosystems	6

SELECT titles.title, titles.type, titles.price, SUM(sales.qty) AS units_sold
FROM publications.sales sales
RIGHT JOIN publications.titles titles
ON sales.title_id = titles.title_id
GROUP BY titles.title, titles.type, titles.price;

-- The Busy Executive's Database Guide	business	19.9900	15
-- Cooking with Computers: Surreptitious Balance Sheets	business	11.9500	25
-- You Can Combat Computer Stress!	business	2.9900	35
-- Straight Talk About Computers	business	19.9900	15
-- Silicon Valley Gastronomic Treats	mod_cook	19.9900	10
-- The Gourmet Microwave	mod_cook	2.9900	40
-- The Psychology of Computer Cooking	UNDECIDED		
-- ...

SELECT *
FROM publications.employee emp
RIGHT JOIN publications.jobs job
ON emp.job_id = job.job_id
UNION
SELECT *
FROM publications.employee emp
LEFT JOIN publications.jobs job
ON emp.job_id = job.job_id;

Select *
From publications.employee emp
LEFT JOIN publications.jobs job
ON emp.job_id = job.job_id
UNION 
Select *
From publications.employee emp
RIGHT JOIN publications.jobs job
ON emp.job_id = job.job_id;

Select pubs.pub_name, COUNT(titles.title_id) AS Titles
From publications.publishers pubs
INNER JOIN publications.titles titles
ON pubs.pub_id = titles.pub_id
GROUP BY pubs.pub_name;