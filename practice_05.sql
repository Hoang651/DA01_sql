--ex01:
select COUNTRY.continent, floor (AVG(CITY.population))
from COUNTRY
inner join CITY
on COUNTRY.Code = CITY.CountryCode
group by COUNTRY.continent
--ex02:
  SELECT 
ROUND(SUM(CASE WHEN t.signup_action = 'Confirmed' THEN 1 ELSE 0 END)*1.0 / COUNT(t.signup_action),2) as confirm_rate
FROM emails e
left join texts t
on e.email_id = t.email_id and e.email_id is not null 
--ex03:
WITH snaps_statistics AS (
  SELECT 
    age.age_bucket, 
    SUM(CASE WHEN activities.activity_type = 'send' 
      THEN activities.time_spent ELSE 0 END) AS send_timespent, 
    SUM(CASE WHEN activities.activity_type = 'open' 
      THEN activities.time_spent ELSE 0 END) AS open_timespent, 
    SUM(activities.time_spent) AS total_timespent 
  FROM activities
 INNER JOIN age_breakdown AS age 
    ON activities.user_id = age.user_id 
  WHERE activities.activity_type IN ('send', 'open') 
  GROUP BY age.age_bucket) 

SELECT 
  age_bucket, 
  ROUND(100.0 * send_timespent / total_timespent, 2) AS send_perc, 
  ROUND(100.0 * open_timespent / total_timespent, 2) AS open_perc 
FROM snaps_statistics;
--ex04:
SELECT c.customer_id,  count (distinct p.product_category) as product_type_count FROM
customer_contracts as c LEFT JOIN products as p
on c.product_id = p.product_id
GROUP BY c.customer_id
having count (distinct p.product_category) = 3
--ex05:
select
m.employee_id,
m.name,
count(e.reports_to) as reports_count,
round(avg(e.age*1.0), 0) as average_age
from employees as e left join employees as m on e.reports_to = m.employee_id
group by
m. employee_id,
m. name
having reports_count > 0
order by
m.employee_id
--ex06:
select
p.product_name, sum(o.unit) as unit
from products as p left join orders as o on p.product_id = o.product_id
where month(o.order_date) = 2
and year(o.order_date) = 2020
group by p.product_name
having unit >= 100
--ex07:
SELECT pages.page_id, pages.page_name
FROM
pages FULL OUTER JOIN page_likes on pages.page_id = page_likes.page_id
WHERE page_likes.user_id is NULL
