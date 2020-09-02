select distinct state, round(sum(sales)) as sales_total
from orders 
group by state
order by sales_total desc 
;

select distinct state, round(sum(sales)) as sales_2016
from orders 
where extract ('year' from order_date) = 2016
group by state
order by sales_2016 desc 
;

select distinct state, round(sum(sales)) sales_2017
from orders
where extract ('year' from order_date) = 2017
group by state
order by sales_2017 desc
;

select distinct state, round(sum(sales)) as sales_2018
from orders o 
where extract('year' from order_date) = 2018
group by state 
order by sales_2018 desc
;

select distinct state, round(sum(sales)) as sales_2019
from orders 
where extract ('year' from order_date) = 2019
group by state 
order by sales_2019 desc
;
