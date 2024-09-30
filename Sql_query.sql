select * from sales

select * from customer

-- 1. In query
select * from sales where order_line in (5,8,17)

-- 2. avg group
select avg(age), segment from customer group by segment

-- 3. And query
select * from sales where sales > 1750 And ship_mode = 'Standard Class'

-- 4. Or query
select * from sales where sales > 1500 Or ship_mode = 'Standard Class'

-- 5. Not equal
select * from customer where  segment != 'Home Office'

-- 6. Equal to
select * from customer where  region = 'East'

-- 7. Group by
select sum(sales), ship_mode from sales group by ship_mode
having sum(sales) > 4000
