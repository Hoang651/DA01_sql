--ex1:
select NAME from CITY
where COUNTRYCODE = 'USA' and POPULATION >120000;
--ex2:
select * from CITY
where COUNTRYCODE = 'JPN';
--ex3:
select CITY, STATE from STATION;
--ex4:
select distinct CITY from STATION
where CITY like 'A%' or CITY like 'E%' or CITY like 'I%' or CITY like 'O%' or CITY like 'U%';
--ex5:
SELECT DISTINCT CITY FROM STATION
WHERE (CITY LIKE '%a')
OR (CITY LIKE '%e')
OR (CITY LIKE '%i')
OR (CITY LIKE '%o')
OR (CITY LIKE '%u');
--ex6:
select distinct CITY from STATION
where (CITY NOT LIKE 'A%') and (CITY NOT LIKE 'E%') and (CITY NOT LIKE 'I%') and (CITY NOT LIKE 'O%') and (CITY NOT LIKE 'U%');
--ex7:
select name from Employee
order by name;
--ex8:
select name from Employee
where salary >2000
and months <10
order by employee_id 
--ex9:
select product_id from Products
where low_fats like 'Y' and recyclable like 'Y';
--ex10:
select name from Customer
where (referee_id is null) or (referee_id not like 2)
--ex11:
elect name, population, area from World
where area >= 3000000 
or population >=25000000;
--ex12:
select distinct author_id as id from Views 
where author_id = viewer_id
order by author_id
--ex13:
SELECT part, assembly_step  FROM parts_assembly
where finish_date is NULL;
--ex14:
select * from lyft_drivers
where yearly_salary <=30000 or yearly_salary >=70000;
--ex15:
select * from uber_advertising
where money_spent >=100000 
and year = 2019;
