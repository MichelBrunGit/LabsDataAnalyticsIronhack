-- create database lab18;
select * from lab18.applestore;

-- 1. What are the different genres? Games
select prime_genre from lab18.applestore group by prime_genre;

-- 2. Which is the genre with the most apps rated? 
-- Medical 4.5
select prime_genre,avg(user_rating) 
from lab18.applestore 
group by prime_genre 
order by avg(user_rating) desc;

-- Games	8717381
select prime_genre,sum(rating_count_tot) 
from lab18.applestore 
group by prime_genre 
order by sum(rating_count_tot) desc;

-- 3. Which is the genre with most apps? Games	169
select prime_genre,count(prime_genre) as count
from lab18.applestore 
group by prime_genre 
order by count desc;

-- 4. Which is the one with least? Medical	1
select prime_genre,count(prime_genre) as count
from lab18.applestore 
group by prime_genre 
order by count;

-- 5. Find the top 10 apps most rated. 
-- Facebook	2974676,Pandora - Music & Radio	1126879, Pinterest	1061624, Bible	985920
-- Angry Birds	824451, Fruit Ninja Classic	698516, Solitaire	679055, PAC-MAN	508808
-- Calorie Counter & Diet Tracker by MyFitnessPal	507706 The Weather Channel: Forecast, Radar & Alerts	495626
select track_name,rating_count_tot as count
from lab18.applestore  
order by count desc
limit 10;

-- 6. Find the top 10 apps best rated by users.
-- The Photographer's Ephemeris	5,J&J Official 7 Minute Workout	5, Daily Audio Bible App	5
-- Plants vs. Zombies 5, Learn English quickly with MosaLingua	5, Domino's Pizza USA	5
-- Kurumaki Calendar -month scroll calendar- 5 , Fragment's Note	5, Dragon Island Blue	5
-- TurboScan Pro - document & receipt scanner: scan multiple pages and photos to PDF	5
select track_name,user_rating as count,rating_count_tot
from lab18.applestore  
order by count desc
limit 10;

-- select track_name,user_rating as count,rating_count_tot
-- from lab18.applestore  
-- order by count desc, rating_count_tot desc
-- limit 10;

-- 7. Take a look at the data you retrieved in question 5. Give some insights.
-- This list tells us which apps have the most vote and then the one for which average note is accurate.
-- It tells as well that this are the most used app (in social media particularly)

-- 8. Take a look at the data you retrieved in question 6. Give some insights.
-- It gives us the first 10 apps with a rating of 5. Since they are more than 10 apps with the same rating it doesn't mean it's the top10.
-- IT would be better to take into consideration the number of votes such that we give more importance of the rating note and get the real Top 10

-- 9. Now compare the data from questions 5 and 6. What do you see?
-- We see that the most rated app are not the best rated one.

-- 10. How could you take the top 3 regarding both user ratings and number of votes?
-- Plants vs. Zombies	5	426463
-- Domino's Pizza USA	5	258624
-- Plants vs. Zombies HD	5	163598 
-- TurboScan Pro - document & receipt scanner: scan multiple pages and photos to PDF	5	28388
-- Sworkit - Custom Workouts for Exercise & Fitness	5	16819
-- Fieldrunners 2	5	14214
-- Headspace	5	12819
-- :) Sudoku +	5	11447
-- Dragon Island Blue	5	9119
select track_name,user_rating as count,rating_count_tot
from lab18.applestore  
order by count desc, rating_count_tot desc
limit 10;

-- 11. Do people care about the price of an app? 
-- First, we will compare each apps by genre (group by genre) 
-- in order to make sure we compare what is comparable

select track_name,user_rating as count,rating_count_tot, price, prime_genre
from lab18.applestore
group by prime_genre
order by rating_count_tot desc, price;

-- When we look at the most rated (assuming it is proportional to number of downloads)
-- per genre, we realize that the most used one are free. For niche genre (less than 25000 notes), we notice that
-- the most used app are not free. Which means people are willing to pay for apps that are not very used.
-- At the same time, apps that are mass market are making money from the user data while apps for niche market
-- make money from the user sale apps. 

select track_name, user_rating as count,rating_count_tot, price, prime_genre
from lab18.applestore
group by prime_genre
order by rating_count_tot desc;

select track_name, user_rating as count,rating_count_tot, price, prime_genre
from lab18.applestore
where prime_genre= "News"
order by rating_count_tot desc;

select track_name, user_rating, max(rating_count_tot), price, prime_genre
from lab18.applestore
group by prime_genre;



