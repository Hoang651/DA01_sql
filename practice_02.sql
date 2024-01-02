--ex1:
select distinct CITY from STATION
where ID%2 = 0;
--ex2:
select (count(CITY)- count(distinct CITY)) from STATION; 
--ex4:
SELECT 
ROUND(CAST(SUM(item_count*order_occurrences)/SUM(order_occurrences) as DECIMAL), 1) 
FROM items_per_order;
--ex5:
SELECT candidate_id FROM candidates
WHERE skill IN ('Python', 'Tableau', 'PostgreSQL')
GROUP BY candidate_id
HAVING count (skill) = 3;
--ex7:
SELECT card_name,
MAX(issued_amount) - MIN(issued_amount) as difference
FROM monthly_cards_issued
GROUP BY card_name
ORDER BY difference DESC;
--ex8:
SELECT 
manufacturer,
count(drug) as drug_count,
ABS (SUM (cogs - total_sales)) as total_loss
FROM pharmacy_sales
where total_sales < cogs
GROUP BY manufacturer
ORDER BY total_loss DESC;
--ex9:
select *
from Cinema
where description <> 'boring'
and id%2=1
order by rating desc;
--ex10:
select user_id, count(follower_id) as followers_count
from Followers
group by user_id;
--ex11:
select class 
from Courses
group by class
having count(student) >= 5;
