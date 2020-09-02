select distinct category, count(distinct order_id) as orders_num, round(sum(sales)) as sales_sum
from orders
group by category 
order by sales_sum desc
;

select distinct subcategory as office_supplies, count(distinct order_id) as orders_num, round(sum(sales)) as sales_sum
from orders o
where o.category = 'Office Supplies'
group by office_supplies 
order by sales_sum desc
;

select distinct subcategory as technology, count(distinct order_id) as orders_num, round(sum(sales)) as sales_sum
from orders o 
where o.category = 'Technology'
group by technology 
order by sales_sum desc
;

select distinct subcategory as furniture, count(distinct order_id) as orders_num, round(sum(sales)) as sales_sum
from orders o
where o.category = 'Furniture'
group by furniture 
order by sales_sum desc
;
