use publications;

select * from jobs;

select * from vivino.acidity;

select * from authors;

SELECT 
    *
FROM
    authors;

select * from titles;

/*
comment
*/
select *
from titles
where price is null;

select count(*)
from titles
where price is not null;

select distinct(type)
from titles;

select title, type, price
from titles;

select * from titles
order by price desc;

select * from titles
order by price desc
limit 5;

select type, count(*)
from titles
group by type;

select type, count(*) as "number of books"
from titles
group by type;

select min(price), max(price)
from titles;

select min(price), max(price), avg(price), sum(price), count(price), count(*), type
from titles
group by type;

/*select the top10 jobs with the highest min_lvl*/
select *
from jobs
order by min_lvl desc
limit 10;

select * from authors;
/* select all authors from CA*/
select * 
from authors
where state ='CA';

/* select all authors without current contract from CA*/
select * 
from authors
where state ='CA' and contract!=1;

#I want to select people from KS, and everyone else who has no contract in CA
select *
from authors
where state='KS' or (state='CA' and contract=0);

#select people from IN and KS
select *
from authors
where state='IN' or state='KS';

select *
from authors
where state in ('IN','KS');


select *
from authors
where state in ('Ile-de-France','IN','KS');

select *
from authors
where state not in ('Ile-de-France','IN','KS');

select *
from authors
where au_fname like '%g%n%';

select *
from authors
where au_fname like '%star';

select *
from authors
where au_fname like '%ar%';

select *
from authors
where zip like '9460%';

select *
from authors
where regexp_like(address, '\\d+ B');

select *
from authors
where regexp_like(address, '[A-Za-z]+ \\d');

/*count how many titles each publisher has published*/
select publishers.pub_name, count(titles.title)
from titles
inner join publishers 
on titles.pub_id = publishers.pub_id
group by publishers.pub_name;

select p.pub_name, count(t.title)
from titles t
inner join publishers p
on t.pub_id = p.pub_id
group by p.pub_name;

select count(*) from titles;

select p.pub_name, count(t.title)
from titles t right join publishers p
on t.pub_id = p.pub_id
group by p.pub_name;

Select *
From employee emp
right JOIN jobs job
ON emp.job_id = job.job_id
union
Select *
From employee emp
left JOIN jobs job
ON emp.job_id = job.job_id