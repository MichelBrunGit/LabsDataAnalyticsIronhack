USE project3;
SELECT COUNT(*) FROM marketing;

-- Calculate the avg amount of Wines per education and marital status
SELECT Education,Marital_Status,avg(MntWines)
FROM marketing
group by Education,Marital_Status
order by avg(MntWines) desc;

-- Calculate the avg amount of gold per education and marital status*
SELECT Education,Marital_Status,avg(MntGoldProds)
FROM marketing
group by Education,Marital_Status
order by avg(MntGoldProds) desc;

-- Order desc sum of Revenue per distinct Education, Marital, Kid and teen status and showing the average income related
SELECT Education,Marital_Status,Kidhome,Teenhome,avg(Income),sum(Z_Revenue)
FROM marketing
group by Education,Marital_Status,Kidhome,Teenhome
order by sum(Z_Revenue) desc;

-- Is age (generation) related to number of Web Purchases
SELECT avg(Year_Birth),NumWebPurchases
FROM marketing
group by NumWebPurchases
order by NumWebPurchases desc;

-- Is age (generation) related to number of Store Purchases
SELECT avg(Year_Birth),NumStorePurchases
FROM marketing
group by NumStorePurchases
order by NumStorePurchases desc;


-- 
select t.range1 as Year_Birth,avg(NumWebPurchases),avg(NumStorePurchases)
from (
  select case  
    when Year_Birth between 1940 and 1944 then ' 1940- 1944'
    when Year_Birth between 1945 and 1949 then ' 1945- 1949'
    when Year_Birth between 1950 and 1954 then ' 1950- 1954'
    when Year_Birth between 1955 and 1959 then ' 1955- 1959'
    when Year_Birth between 1960 and 1964 then ' 1960- 1964'
    when Year_Birth between 1965 and 1969 then ' 1965- 1969'
	when Year_Birth between 1970 and 1974 then ' 1970- 1974'
    when Year_Birth between 1975 and 1979 then ' 1975- 1979'
	when Year_Birth between 1980 and 1984 then ' 1980- 1984'
    when Year_Birth between 1985 and 1989 then ' 1985- 1989'
	when Year_Birth between 1990 and 1994 then ' 1990- 1994'
    when Year_Birth between 1995 and 1999 then ' 1995- 1999'
    else '2000+' end as range1,
    NumWebPurchases,
    NumStorePurchases
  from marketing) t
group by t.range1
order by t.range1;

-- 
SELECT Year_Birth,avg(NumWebPurchases),avg(NumStorePurchases)
FROM marketing
where Year_Birth between 1990 and 1994
order by Year_Birth;