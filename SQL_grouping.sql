use sakila;

-- Task 1: Count the number of rows in the payment table
select count(*) from payment;

-- Task 2: Count the number of payments made by each customer. Show customer ID and total amout paid per customer
desc payment;
select customer_id, count(*), sum(amount) from payment
group by customer_id
order by 1 asc;

-- Task 3: As above in Task 2 but only show customers with payments >= 5
select customer_id, count(*), sum(amount) from payment
group by customer_id
having count(*) >= 5
order by 1 asc;

-- Task 4: Write a query that retrieves every row from Sales_Fact and add column to generate a ranking based on the total sales values.
use myLibrary;
-- First we create the table:
create table Sales_Fact(
year_no year,
month_no int(2),
tot_sales int(5)
);

insert into Sales_Fact
values
(2019, 1, 19228),
(2019, 2, 18554),
(2019, 3, 17325),
(2019, 4, 13221),
(2019, 5, 9964),
(2019, 6, 12658),
(2019, 7, 14233),
(2019, 8, 17342),
(2019, 9, 16853),
(2019, 10, 17121),
(2019, 11, 19095),
(2019, 12, 21436),
(2020, 1, 20347),
(2020, 2, 17434),
(2020, 3, 16255),
(2020, 4, 13853),
(2020, 5, 14589),
(2020, 6, 13248),
(2020, 7, 8728),
(2020, 8, 9378),
(2020, 9, 11467),
(2020, 10, 13842),
(2020, 11, 15742),
(2020, 12, 18636);

select * from Sales_Fact;
select year_no, month_no, tot_sales, rank() over(
order by tot_sales desc
) as tot_sales_rank
from Sales_Fact;


-- Task 5: Modify the query from Task 4 to generate two sets of rankings, one for each year
SELECT year_no, month_no, tot_sales, RANK() OVER (PARTITION BY (year_no) ORDER BY tot_sales) sales_rank
FROM Sales_Fact
GROUP BY tot_sales
ORDER BY 1;

-- Task 6: Write a query that retrieves all 2020 data and include a column that contains the tot_sales value from the previous month
select * from Sales_Fact
where year_no = 2020;

-- Task 6:







