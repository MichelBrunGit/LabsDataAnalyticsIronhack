-- 1. From the order_items table, find the price of the highest priced order 
-- and lowest price order.
-- 6735 and 0.85

select max(price) from olist.order_items;
select min(price) from olist.order_items;

-- 2. From the order_items table, what is range of the shipping_limit_date of the orders?
-- 2016-09-19 02:15:34 to 2020-04-10 00:35:08
select min(shipping_limit_date), max(shipping_limit_date) from olist.order_items;

-- 3. From the customers table, find the states with the greatest number of customers.
-- SP	41746
select customer_state, count(customer_id) from olist.customers
group by customer_state;

select customer_state, count(customer_unique_id) from olist.customers
group by customer_state
order by count(customer_unique_id) desc;

-- 4. From the customers table, within the state with the greatest number of customers, 
-- find the cities with the greatest number of customers.
-- sao paulo	15540
select customer_city, count(customer_unique_id) from olist.customers
where customer_state='SP'
group by customer_city
order by count(customer_unique_id) desc;

-- 5. From the closed_deals table, 
-- how many distinct business segments are there (not including null)?
-- 33
select count(distinct(business_segment)) as count
from olist.closed_deals
where business_segment <> "null";

-- 6. From the closed_deals table, sum the declared_monthly_revenue 
-- for duplicate row values in business_segment and find the 3 business segments 
-- with the highest declared monthly revenue (of those that declared revenue).
-- construction_tools_house_garden	50695006
-- phone_mobile	8000000
-- home_decor	710000

select business_segment, sum(declared_monthly_revenue) as revenue
from olist.closed_deals
group by business_segment
order by revenue desc;

-- 7. From the order_reviews table, find the total number of distinct review score values.
-- 5
select count(distinct(review_score))
from olist.order_reviews;

-- 8. In the order_reviews table, create a new column with a description that corresponds 
-- to each number category for each review score from 1 - 5, 
-- then find the review score and category occurring most frequently in the table.
SELECT review_score, count(review_score),
   CASE review_score
      WHEN 1 THEN 'Bad'
      WHEN 2 THEN 'Poor'
      WHEN 3 THEN 'Satisfactory'
      WHEN 4 THEN 'Good'
      WHEN 5 THEN 'Perfect'
   END AS review_categ
 FROM olist.order_reviews group by review_categ order by count(review_score) desc;
 
 -- 9. From the order_reviews table, 
 -- find the review value occurring most frequently and how many times it occurs.
 
select review_score, review_categ, count(review_score) as reviews from olist.order_reviews group by review_categ  order by reviews desc;
select  review_score, count(review_score) as reviews from olist.order_reviews group by review_score order by reviews desc limit 1;