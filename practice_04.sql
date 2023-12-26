--ex1:
SELECT
SUM(CASE  
  WHEN device_type = 'laptop' THEN 1 ELSE 0
END) as latop_views,
SUM(CASE
  when device_type IN ('tablet', 'phone') then 1 else 0
END) as mobile_views
FROM viewership;
--ex2:
select 
*,
case
    when (x+y > z) then 'Yes'
    else 'No'
end as triangle
from triangle
--ex3:
SELECT 
  ROUND(100.0 * 
    COUNT(case_id)/
      (SELECT COUNT(*) FROM callers),1) AS uncategorised_call_pct
FROM callers
WHERE call_category IS NULL 
  OR call_category = 'n/a
--ex4:
select name 
from customer
where referee_id is null or referee_id <> 2
--ex5:
select survived,
sum (case
    when pclass = 1 then 1
    else 0
end) as first_class,
sum (case
    when pclass = 2 then 1
    else 0
end) as second_class,
sum (case
    when pclass = 3 then 1
    else 0
end) as third_class
from titanic
group by survived
