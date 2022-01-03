use publications;

-- Challenge 1

select a.au_id as "AUTHOR ID", au_lname as "LAST NAME", au_fname as "FIRST NAME", ti.title as TITLE, p.pub_name as PUBLISHER
from authors a
inner join titleauthor ta on a.au_id=ta.au_id
inner join titles ti on ta.title_id=ti.title_id
inner join publishers p on ti.pub_id=p.pub_id;

-- Challenge 2

select a.au_id as "AUTHOR ID", au_lname as "LAST NAME", au_fname as "FIRST NAME", p.pub_name as PUBLISHER, count(ti.title_id) as "TITLE COUNT"
from authors a
inner join titleauthor ta on a.au_id=ta.au_id
inner join titles ti on ta.title_id=ti.title_id
inner join publishers p on ti.pub_id=p.pub_id
group by a.au_id, p.pub_id;

-- Challenge 3

select a.au_id as "AUTHOR ID", au_lname as "LAST NAME", au_fname as "FIRST NAME", sum(s.qty) as TOTAL
from authors a
inner join titleauthor ta on ta.au_id = a.au_id
inner join titles ti on ti.title_id = ta.title_id
inner join sales s on s.title_id = ti.title_id
group by a.au_id
order by TOTAL desc
limit 3;

-- Challenge 4

select a.au_id as "AUTHOR ID", au_lname as "LAST NAME", au_fname as "FIRST NAME", COALESCE(sum(s.qty), 0) as TOTAL
from authors a
left join titleauthor ta on ta.au_id = a.au_id
left join titles ti on ti.title_id = ta.title_id
left join sales s on s.title_id = ti.title_id
group by a.au_id
order by TOTAL desc;
